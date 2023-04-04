define internal fastcc void @P6(ptr nocapture noundef %s) unnamed_addr #2 {
entry:
  %arrayidx.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %0 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %arrayidx2.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %1 = load i64, ptr %arrayidx2.i, align 8, !tbaa !7
  %2 = load i64, ptr %s, align 8, !tbaa !7
  %arrayidx7.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %3 = load i64, ptr %arrayidx7.i, align 8, !tbaa !7
  %arrayidx12.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %4 = load i64, ptr %arrayidx12.i, align 8, !tbaa !7
  %xor.i = xor i64 %0, 150 ; (not in sbox) s->x[2] ^= C;

;Ideally what we want is to emit sbox with the register bondings

;As first step all registers can be stored
;store i64 %2, ptr %s
;store i64 %4, ptr %arrayidx12.i
;store i64 %0, ptr %arrayidx.i
;store i64 %3, ptr %arrayidx7.i
;store i64 %1, ptr %arrayidx2.i

;optimisation to store only changed values would result 

;store i64 %xor.i, ptr %arrayidx.i

;As all register values are stored, we can emit sbox with the register bondings
;sbox %s

;To not break the flow of data the result of sbox should be loaded to the suitable registers

;%xor78.i = load i64, ptr %s
;%xor73.i = load i64, ptr %arrayidx12.i
;%not86.i = load i64, ptr %arrayidx.i
;%xor83.i = load i64, ptr %arrayidx7.i
;%xor66.i = load i64, ptr %arrayidx2.i

;continue rotation operations.

;Start of sbox  
  %xor5.i = xor i64 %2, %1 ; s->x[0] ^= s->x[4];
  
  %xor10.i = xor i64 %3, %1 ; s->x[4] ^= s->x[3];

  %xor15.i = xor i64 %4, %xor.i ; s->x[2] ^= s->x[1];

  ;t.x[0] = s->x[0] ^ (~s->x[1] & s->x[2]);
  %not.i = xor i64 %4, -1 ; ~s->x[1]
  %and.i = and i64 %xor.i, %not.i
  %xor22.i = xor i64 %and.i, %xor5.i
  %not29.i = xor i64 %xor15.i, -1
  %and32.i = and i64 %3, %not29.i
  %xor33.i = xor i64 %and32.i, %4
  %not40.i = xor i64 %3, -1
  %and43.i = and i64 %1, %not40.i
  %xor44.i = xor i64 %xor15.i, %and43.i
  %not51.i = xor i64 %xor10.i, -1
  %and54.i = and i64 %xor5.i, %not51.i
  %xor55.i = xor i64 %and54.i, %3
  %not62.i = xor i64 %xor5.i, -1
  %and65.i = and i64 %4, %not62.i
  %xor66.i = xor i64 %and65.i, %xor10.i
  %xor73.i = xor i64 %xor33.i, %xor22.i
  %xor78.i = xor i64 %xor22.i, %xor66.i
  %xor83.i = xor i64 %xor55.i, %xor44.i
  %not86.i = xor i64 %xor44.i, -1
;end of first sbox




; s->x[0] = t.x[0] ^ ROR(t.x[0], 19) ^ ROR(t.x[0], 28);
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %xor78.i, i64 %xor78.i, i64 45)
  %or.i193.i = tail call i64 @llvm.fshl.i64(i64 %xor78.i, i64 %xor78.i, i64 36)
  %5 = xor i64 %or.i.i, %or.i193.i
  %xor97.i = xor i64 %5, %xor78.i
  %or.i196.i = tail call i64 @llvm.fshl.i64(i64 %xor73.i, i64 %xor73.i, i64 3)
  %or.i199.i = tail call i64 @llvm.fshl.i64(i64 %xor73.i, i64 %xor73.i, i64 25)
  %6 = xor i64 %or.i196.i, %or.i199.i
  %xor109.i = xor i64 %6, %xor73.i
  %or.i202.i = tail call i64 @llvm.fshl.i64(i64 %not86.i, i64 %not86.i, i64 63)
  %or.i205.i = tail call i64 @llvm.fshl.i64(i64 %not86.i, i64 %not86.i, i64 58)
  %7 = xor i64 %or.i202.i, %or.i205.i
  %xor121.i = xor i64 %7, %not86.i
  %or.i208.i = tail call i64 @llvm.fshl.i64(i64 %xor83.i, i64 %xor83.i, i64 54)
  %or.i211.i = tail call i64 @llvm.fshl.i64(i64 %xor83.i, i64 %xor83.i, i64 47)
  %8 = xor i64 %or.i208.i, %or.i211.i
  %xor133.i = xor i64 %8, %xor83.i
  %or.i214.i = tail call i64 @llvm.fshl.i64(i64 %xor66.i, i64 %xor66.i, i64 57)
  %or.i217.i = tail call i64 @llvm.fshl.i64(i64 %xor66.i, i64 %xor66.i, i64 23)
  %9 = xor i64 %or.i214.i, %or.i217.i
  %xor145.i = xor i64 %9, %xor66.i

;second permutation round
  %xor.i7 = xor i64 %xor121.i, 135
  %xor5.i9 = xor i64 %xor97.i, %xor145.i
  %xor10.i11 = xor i64 %xor133.i, %xor145.i
  %xor15.i13 = xor i64 %xor109.i, %xor.i7
  %not.i14 = xor i64 %xor109.i, -1
  %and.i15 = and i64 %xor.i7, %not.i14
  %xor22.i16 = xor i64 %and.i15, %xor5.i9
  %not29.i17 = xor i64 %xor15.i13, -1
  %and32.i18 = and i64 %xor133.i, %not29.i17
  %xor33.i19 = xor i64 %and32.i18, %xor109.i
  %not40.i20 = xor i64 %xor133.i, -1
  %and43.i21 = and i64 %xor145.i, %not40.i20
  %xor44.i22 = xor i64 %xor15.i13, %and43.i21
  %not51.i23 = xor i64 %xor10.i11, -1
  %and54.i24 = and i64 %xor5.i9, %not51.i23
  %xor55.i25 = xor i64 %and54.i24, %xor133.i
  %not62.i26 = xor i64 %xor5.i9, -1
  %and65.i27 = and i64 %xor109.i, %not62.i26
  %xor66.i28 = xor i64 %and65.i27, %xor10.i11
  %xor73.i29 = xor i64 %xor33.i19, %xor22.i16
  %xor78.i30 = xor i64 %xor22.i16, %xor66.i28
  %xor83.i31 = xor i64 %xor55.i25, %xor44.i22
  %not86.i32 = xor i64 %xor44.i22, -1
  %or.i.i33 = tail call i64 @llvm.fshl.i64(i64 %xor78.i30, i64 %xor78.i30, i64 45)
  %or.i193.i34 = tail call i64 @llvm.fshl.i64(i64 %xor78.i30, i64 %xor78.i30, i64 36)
  %10 = xor i64 %or.i.i33, %or.i193.i34
  %xor97.i35 = xor i64 %10, %xor78.i30
  %or.i196.i36 = tail call i64 @llvm.fshl.i64(i64 %xor73.i29, i64 %xor73.i29, i64 3)
  %or.i199.i37 = tail call i64 @llvm.fshl.i64(i64 %xor73.i29, i64 %xor73.i29, i64 25)
  %11 = xor i64 %or.i196.i36, %or.i199.i37
  %xor109.i38 = xor i64 %11, %xor73.i29
  %or.i202.i39 = tail call i64 @llvm.fshl.i64(i64 %not86.i32, i64 %not86.i32, i64 63)
  %or.i205.i40 = tail call i64 @llvm.fshl.i64(i64 %not86.i32, i64 %not86.i32, i64 58)
  %12 = xor i64 %or.i202.i39, %or.i205.i40
  %xor121.i41 = xor i64 %12, %not86.i32
  %or.i208.i42 = tail call i64 @llvm.fshl.i64(i64 %xor83.i31, i64 %xor83.i31, i64 54)
  %or.i211.i43 = tail call i64 @llvm.fshl.i64(i64 %xor83.i31, i64 %xor83.i31, i64 47)
  %13 = xor i64 %or.i208.i42, %or.i211.i43
  %xor133.i44 = xor i64 %13, %xor83.i31
  %or.i214.i45 = tail call i64 @llvm.fshl.i64(i64 %xor66.i28, i64 %xor66.i28, i64 57)
  %or.i217.i46 = tail call i64 @llvm.fshl.i64(i64 %xor66.i28, i64 %xor66.i28, i64 23)
  %14 = xor i64 %or.i214.i45, %or.i217.i46
  %xor145.i47 = xor i64 %14, %xor66.i28
  %xor.i49 = xor i64 %xor121.i41, 120
  %xor5.i51 = xor i64 %xor97.i35, %xor145.i47
  %xor10.i53 = xor i64 %xor133.i44, %xor145.i47
  %xor15.i55 = xor i64 %xor109.i38, %xor.i49
  %not.i56 = xor i64 %xor109.i38, -1
  %and.i57 = and i64 %xor.i49, %not.i56
  %xor22.i58 = xor i64 %and.i57, %xor5.i51
  %not29.i59 = xor i64 %xor15.i55, -1
  %and32.i60 = and i64 %xor133.i44, %not29.i59
  %xor33.i61 = xor i64 %and32.i60, %xor109.i38
  %not40.i62 = xor i64 %xor133.i44, -1
  %and43.i63 = and i64 %xor145.i47, %not40.i62
  %xor44.i64 = xor i64 %xor15.i55, %and43.i63
  %not51.i65 = xor i64 %xor10.i53, -1
  %and54.i66 = and i64 %xor5.i51, %not51.i65
  %xor55.i67 = xor i64 %and54.i66, %xor133.i44
  %not62.i68 = xor i64 %xor5.i51, -1
  %and65.i69 = and i64 %xor109.i38, %not62.i68
  %xor66.i70 = xor i64 %and65.i69, %xor10.i53
  %xor73.i71 = xor i64 %xor33.i61, %xor22.i58
  %xor78.i72 = xor i64 %xor22.i58, %xor66.i70
  %xor83.i73 = xor i64 %xor55.i67, %xor44.i64
  %not86.i74 = xor i64 %xor44.i64, -1
  %or.i.i75 = tail call i64 @llvm.fshl.i64(i64 %xor78.i72, i64 %xor78.i72, i64 45)
  %or.i193.i76 = tail call i64 @llvm.fshl.i64(i64 %xor78.i72, i64 %xor78.i72, i64 36)
  %15 = xor i64 %or.i.i75, %or.i193.i76
  %xor97.i77 = xor i64 %15, %xor78.i72
  %or.i196.i78 = tail call i64 @llvm.fshl.i64(i64 %xor73.i71, i64 %xor73.i71, i64 3)
  %or.i199.i79 = tail call i64 @llvm.fshl.i64(i64 %xor73.i71, i64 %xor73.i71, i64 25)
  %16 = xor i64 %or.i196.i78, %or.i199.i79
  %xor109.i80 = xor i64 %16, %xor73.i71
  %or.i202.i81 = tail call i64 @llvm.fshl.i64(i64 %not86.i74, i64 %not86.i74, i64 63)
  %or.i205.i82 = tail call i64 @llvm.fshl.i64(i64 %not86.i74, i64 %not86.i74, i64 58)
  %17 = xor i64 %or.i202.i81, %or.i205.i82
  %xor121.i83 = xor i64 %17, %not86.i74
  %or.i208.i84 = tail call i64 @llvm.fshl.i64(i64 %xor83.i73, i64 %xor83.i73, i64 54)
  %or.i211.i85 = tail call i64 @llvm.fshl.i64(i64 %xor83.i73, i64 %xor83.i73, i64 47)
  %18 = xor i64 %or.i208.i84, %or.i211.i85
  %xor133.i86 = xor i64 %18, %xor83.i73
  %or.i214.i87 = tail call i64 @llvm.fshl.i64(i64 %xor66.i70, i64 %xor66.i70, i64 57)
  %or.i217.i88 = tail call i64 @llvm.fshl.i64(i64 %xor66.i70, i64 %xor66.i70, i64 23)
  %19 = xor i64 %or.i214.i87, %or.i217.i88
  %xor145.i89 = xor i64 %19, %xor66.i70
  %xor.i91 = xor i64 %xor121.i83, 105
  %xor5.i93 = xor i64 %xor97.i77, %xor145.i89
  %xor10.i95 = xor i64 %xor133.i86, %xor145.i89
  %xor15.i97 = xor i64 %xor109.i80, %xor.i91
  %not.i98 = xor i64 %xor109.i80, -1
  %and.i99 = and i64 %xor.i91, %not.i98
  %xor22.i100 = xor i64 %and.i99, %xor5.i93
  %not29.i101 = xor i64 %xor15.i97, -1
  %and32.i102 = and i64 %xor133.i86, %not29.i101
  %xor33.i103 = xor i64 %and32.i102, %xor109.i80
  %not40.i104 = xor i64 %xor133.i86, -1
  %and43.i105 = and i64 %xor145.i89, %not40.i104
  %xor44.i106 = xor i64 %xor15.i97, %and43.i105
  %not51.i107 = xor i64 %xor10.i95, -1
  %and54.i108 = and i64 %xor5.i93, %not51.i107
  %xor55.i109 = xor i64 %and54.i108, %xor133.i86
  %not62.i110 = xor i64 %xor5.i93, -1
  %and65.i111 = and i64 %xor109.i80, %not62.i110
  %xor66.i112 = xor i64 %and65.i111, %xor10.i95
  %xor73.i113 = xor i64 %xor33.i103, %xor22.i100
  %xor78.i114 = xor i64 %xor22.i100, %xor66.i112
  %xor83.i115 = xor i64 %xor55.i109, %xor44.i106
  %not86.i116 = xor i64 %xor44.i106, -1
  %or.i.i117 = tail call i64 @llvm.fshl.i64(i64 %xor78.i114, i64 %xor78.i114, i64 45)
  %or.i193.i118 = tail call i64 @llvm.fshl.i64(i64 %xor78.i114, i64 %xor78.i114, i64 36)
  %20 = xor i64 %or.i.i117, %or.i193.i118
  %xor97.i119 = xor i64 %20, %xor78.i114
  %or.i196.i120 = tail call i64 @llvm.fshl.i64(i64 %xor73.i113, i64 %xor73.i113, i64 3)
  %or.i199.i121 = tail call i64 @llvm.fshl.i64(i64 %xor73.i113, i64 %xor73.i113, i64 25)
  %21 = xor i64 %or.i196.i120, %or.i199.i121
  %xor109.i122 = xor i64 %21, %xor73.i113
  %or.i202.i123 = tail call i64 @llvm.fshl.i64(i64 %not86.i116, i64 %not86.i116, i64 63)
  %or.i205.i124 = tail call i64 @llvm.fshl.i64(i64 %not86.i116, i64 %not86.i116, i64 58)
  %22 = xor i64 %or.i202.i123, %or.i205.i124
  %xor121.i125 = xor i64 %22, %not86.i116
  %or.i208.i126 = tail call i64 @llvm.fshl.i64(i64 %xor83.i115, i64 %xor83.i115, i64 54)
  %or.i211.i127 = tail call i64 @llvm.fshl.i64(i64 %xor83.i115, i64 %xor83.i115, i64 47)
  %23 = xor i64 %or.i208.i126, %or.i211.i127
  %xor133.i128 = xor i64 %23, %xor83.i115
  %or.i214.i129 = tail call i64 @llvm.fshl.i64(i64 %xor66.i112, i64 %xor66.i112, i64 57)
  %or.i217.i130 = tail call i64 @llvm.fshl.i64(i64 %xor66.i112, i64 %xor66.i112, i64 23)
  %24 = xor i64 %or.i214.i129, %or.i217.i130
  %xor145.i131 = xor i64 %24, %xor66.i112
  %xor.i133 = xor i64 %xor121.i125, 90
  %xor5.i135 = xor i64 %xor97.i119, %xor145.i131
  %xor10.i137 = xor i64 %xor133.i128, %xor145.i131
  %xor15.i139 = xor i64 %xor109.i122, %xor.i133
  %not.i140 = xor i64 %xor109.i122, -1
  %and.i141 = and i64 %xor.i133, %not.i140
  %xor22.i142 = xor i64 %and.i141, %xor5.i135
  %not29.i143 = xor i64 %xor15.i139, -1
  %and32.i144 = and i64 %xor133.i128, %not29.i143
  %xor33.i145 = xor i64 %and32.i144, %xor109.i122
  %not40.i146 = xor i64 %xor133.i128, -1
  %and43.i147 = and i64 %xor145.i131, %not40.i146
  %xor44.i148 = xor i64 %xor15.i139, %and43.i147
  %not51.i149 = xor i64 %xor10.i137, -1
  %and54.i150 = and i64 %xor5.i135, %not51.i149
  %xor55.i151 = xor i64 %and54.i150, %xor133.i128
  %not62.i152 = xor i64 %xor5.i135, -1
  %and65.i153 = and i64 %xor109.i122, %not62.i152
  %xor66.i154 = xor i64 %and65.i153, %xor10.i137
  %xor73.i155 = xor i64 %xor33.i145, %xor22.i142
  %xor78.i156 = xor i64 %xor22.i142, %xor66.i154
  %xor83.i157 = xor i64 %xor55.i151, %xor44.i148
  %not86.i158 = xor i64 %xor44.i148, -1
  %or.i.i159 = tail call i64 @llvm.fshl.i64(i64 %xor78.i156, i64 %xor78.i156, i64 45)
  %or.i193.i160 = tail call i64 @llvm.fshl.i64(i64 %xor78.i156, i64 %xor78.i156, i64 36)
  %25 = xor i64 %or.i.i159, %or.i193.i160
  %xor97.i161 = xor i64 %25, %xor78.i156
  %or.i196.i162 = tail call i64 @llvm.fshl.i64(i64 %xor73.i155, i64 %xor73.i155, i64 3)
  %or.i199.i163 = tail call i64 @llvm.fshl.i64(i64 %xor73.i155, i64 %xor73.i155, i64 25)
  %26 = xor i64 %or.i196.i162, %or.i199.i163
  %xor109.i164 = xor i64 %26, %xor73.i155
  %or.i202.i165 = tail call i64 @llvm.fshl.i64(i64 %not86.i158, i64 %not86.i158, i64 63)
  %or.i205.i166 = tail call i64 @llvm.fshl.i64(i64 %not86.i158, i64 %not86.i158, i64 58)
  %27 = xor i64 %or.i202.i165, %or.i205.i166
  %xor121.i167 = xor i64 %27, %not86.i158
  %or.i208.i168 = tail call i64 @llvm.fshl.i64(i64 %xor83.i157, i64 %xor83.i157, i64 54)
  %or.i211.i169 = tail call i64 @llvm.fshl.i64(i64 %xor83.i157, i64 %xor83.i157, i64 47)
  %28 = xor i64 %or.i208.i168, %or.i211.i169
  %xor133.i170 = xor i64 %28, %xor83.i157
  %or.i214.i171 = tail call i64 @llvm.fshl.i64(i64 %xor66.i154, i64 %xor66.i154, i64 57)
  %or.i217.i172 = tail call i64 @llvm.fshl.i64(i64 %xor66.i154, i64 %xor66.i154, i64 23)
  %29 = xor i64 %or.i214.i171, %or.i217.i172
  %xor145.i173 = xor i64 %29, %xor66.i154
  %xor.i175 = xor i64 %xor121.i167, 75
  %xor5.i177 = xor i64 %xor97.i161, %xor145.i173
  %xor10.i179 = xor i64 %xor133.i170, %xor145.i173
  %xor15.i181 = xor i64 %xor109.i164, %xor.i175
  %not.i182 = xor i64 %xor109.i164, -1
  %and.i183 = and i64 %xor.i175, %not.i182
  %xor22.i184 = xor i64 %and.i183, %xor5.i177
  %not29.i185 = xor i64 %xor15.i181, -1
  %and32.i186 = and i64 %xor133.i170, %not29.i185
  %xor33.i187 = xor i64 %and32.i186, %xor109.i164
  %not40.i188 = xor i64 %xor133.i170, -1
  %and43.i189 = and i64 %xor145.i173, %not40.i188
  %xor44.i190 = xor i64 %xor15.i181, %and43.i189
  %not51.i191 = xor i64 %xor10.i179, -1
  %and54.i192 = and i64 %xor5.i177, %not51.i191
  %xor55.i193 = xor i64 %and54.i192, %xor133.i170
  %not62.i194 = xor i64 %xor5.i177, -1
  %and65.i195 = and i64 %xor109.i164, %not62.i194
  %xor66.i196 = xor i64 %and65.i195, %xor10.i179
  %xor73.i197 = xor i64 %xor33.i187, %xor22.i184
  %xor78.i198 = xor i64 %xor22.i184, %xor66.i196
  %xor83.i199 = xor i64 %xor55.i193, %xor44.i190
  %not86.i200 = xor i64 %xor44.i190, -1
  %or.i.i201 = tail call i64 @llvm.fshl.i64(i64 %xor78.i198, i64 %xor78.i198, i64 45)
  %or.i193.i202 = tail call i64 @llvm.fshl.i64(i64 %xor78.i198, i64 %xor78.i198, i64 36)
  %30 = xor i64 %or.i.i201, %or.i193.i202
  %xor97.i203 = xor i64 %30, %xor78.i198
  store i64 %xor97.i203, ptr %s, align 8, !tbaa !7
  %or.i196.i204 = tail call i64 @llvm.fshl.i64(i64 %xor73.i197, i64 %xor73.i197, i64 3)
  %or.i199.i205 = tail call i64 @llvm.fshl.i64(i64 %xor73.i197, i64 %xor73.i197, i64 25)
  %31 = xor i64 %or.i196.i204, %or.i199.i205
  %xor109.i206 = xor i64 %31, %xor73.i197
  store i64 %xor109.i206, ptr %arrayidx12.i, align 8, !tbaa !7
  %or.i202.i207 = tail call i64 @llvm.fshl.i64(i64 %not86.i200, i64 %not86.i200, i64 63)
  %or.i205.i208 = tail call i64 @llvm.fshl.i64(i64 %not86.i200, i64 %not86.i200, i64 58)
  %32 = xor i64 %or.i202.i207, %or.i205.i208
  %xor121.i209 = xor i64 %32, %not86.i200
  store i64 %xor121.i209, ptr %arrayidx.i, align 8, !tbaa !7
  %or.i208.i210 = tail call i64 @llvm.fshl.i64(i64 %xor83.i199, i64 %xor83.i199, i64 54)
  %or.i211.i211 = tail call i64 @llvm.fshl.i64(i64 %xor83.i199, i64 %xor83.i199, i64 47)
  %33 = xor i64 %or.i208.i210, %or.i211.i211
  %xor133.i212 = xor i64 %33, %xor83.i199
  store i64 %xor133.i212, ptr %arrayidx7.i, align 8, !tbaa !7
  %or.i214.i213 = tail call i64 @llvm.fshl.i64(i64 %xor66.i196, i64 %xor66.i196, i64 57)
  %or.i217.i214 = tail call i64 @llvm.fshl.i64(i64 %xor66.i196, i64 %xor66.i196, i64 23)
  %34 = xor i64 %or.i214.i213, %or.i217.i214
  %xor145.i215 = xor i64 %34, %xor66.i196
  store i64 %xor145.i215, ptr %arrayidx2.i, align 8, !tbaa !7
  ret void
}

declare i64 @llvm.fshl.i64(i64, i64, i64)

!7 = !{!8, !8, i64 0}
!8 = !{!"long long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
