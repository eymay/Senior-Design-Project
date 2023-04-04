; ModuleID = 'aead.c'
source_filename = "aead.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-linux-gnu"

%struct.ascon_state_t = type { [5 x i64] }

@alen = dso_local local_unnamed_addr global i64 0, align 8
@clen = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @crypto_aead_encrypt(ptr nocapture noundef writeonly %c, ptr nocapture noundef writeonly %clen, ptr nocapture noundef readonly %m, i64 noundef %mlen, ptr nocapture noundef readonly %ad, i64 noundef %adlen, ptr nocapture noundef readnone %nsec, ptr nocapture noundef readonly %npub, ptr nocapture noundef readonly %k) local_unnamed_addr #0 {
entry:
  %s = alloca %struct.ascon_state_t, align 8
  %add = add i64 %mlen, 16
  store i64 %add, ptr %clen, align 8, !tbaa !7
  %0 = load i8, ptr %k, align 1, !tbaa !11
  %conv.i = zext i8 %0 to i64
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %k, i32 1
  %1 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !11
  %conv.i.1 = zext i8 %1 to i64
  %shl.i.1 = shl nuw nsw i64 %conv.i.1, 48
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %k, i32 2
  %2 = load i8, ptr %arrayidx.i.2, align 1, !tbaa !11
  %conv.i.2 = zext i8 %2 to i64
  %shl.i.2 = shl nuw nsw i64 %conv.i.2, 40
  %arrayidx.i.3 = getelementptr inbounds i8, ptr %k, i32 3
  %3 = load i8, ptr %arrayidx.i.3, align 1, !tbaa !11
  %conv.i.3 = zext i8 %3 to i64
  %shl.i.3 = shl nuw nsw i64 %conv.i.3, 32
  %arrayidx.i.4 = getelementptr inbounds i8, ptr %k, i32 4
  %4 = load i8, ptr %arrayidx.i.4, align 1, !tbaa !11
  %conv.i.4 = zext i8 %4 to i64
  %shl.i.4 = shl nuw nsw i64 %conv.i.4, 24
  %arrayidx.i.5 = getelementptr inbounds i8, ptr %k, i32 5
  %5 = load i8, ptr %arrayidx.i.5, align 1, !tbaa !11
  %conv.i.5 = zext i8 %5 to i64
  %shl.i.5 = shl nuw nsw i64 %conv.i.5, 16
  %arrayidx.i.6 = getelementptr inbounds i8, ptr %k, i32 6
  %6 = load i8, ptr %arrayidx.i.6, align 1, !tbaa !11
  %conv.i.6 = zext i8 %6 to i64
  %shl.i.6 = shl nuw nsw i64 %conv.i.6, 8
  %arrayidx.i.7 = getelementptr inbounds i8, ptr %k, i32 7
  %7 = load i8, ptr %arrayidx.i.7, align 1, !tbaa !11
  %conv.i.7 = zext i8 %7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %k, i32 8
  %8 = load i8, ptr %add.ptr, align 1, !tbaa !11
  %conv.i134 = zext i8 %8 to i64
  %arrayidx.i133.1 = getelementptr inbounds i8, ptr %k, i32 9
  %9 = load i8, ptr %arrayidx.i133.1, align 1, !tbaa !11
  %conv.i134.1 = zext i8 %9 to i64
  %shl.i138.1 = shl nuw nsw i64 %conv.i134.1, 48
  %arrayidx.i133.2 = getelementptr inbounds i8, ptr %k, i32 10
  %10 = load i8, ptr %arrayidx.i133.2, align 1, !tbaa !11
  %conv.i134.2 = zext i8 %10 to i64
  %shl.i138.2 = shl nuw nsw i64 %conv.i134.2, 40
  %arrayidx.i133.3 = getelementptr inbounds i8, ptr %k, i32 11
  %11 = load i8, ptr %arrayidx.i133.3, align 1, !tbaa !11
  %conv.i134.3 = zext i8 %11 to i64
  %shl.i138.3 = shl nuw nsw i64 %conv.i134.3, 32
  %arrayidx.i133.4 = getelementptr inbounds i8, ptr %k, i32 12
  %12 = load i8, ptr %arrayidx.i133.4, align 1, !tbaa !11
  %conv.i134.4 = zext i8 %12 to i64
  %shl.i138.4 = shl nuw nsw i64 %conv.i134.4, 24
  %arrayidx.i133.5 = getelementptr inbounds i8, ptr %k, i32 13
  %13 = load i8, ptr %arrayidx.i133.5, align 1, !tbaa !11
  %conv.i134.5 = zext i8 %13 to i64
  %shl.i138.5 = shl nuw nsw i64 %conv.i134.5, 16
  %arrayidx.i133.6 = getelementptr inbounds i8, ptr %k, i32 14
  %14 = load i8, ptr %arrayidx.i133.6, align 1, !tbaa !11
  %conv.i134.6 = zext i8 %14 to i64
  %shl.i138.6 = shl nuw nsw i64 %conv.i134.6, 8
  %arrayidx.i133.7 = getelementptr inbounds i8, ptr %k, i32 15
  %15 = load i8, ptr %arrayidx.i133.7, align 1, !tbaa !11
  %conv.i134.7 = zext i8 %15 to i64
  %shl.i = shl nuw i64 %conv.i, 56
  %or.i.1 = or i64 %shl.i.1, %shl.i
  %or.i.2 = or i64 %shl.i.2, %or.i.1
  %or.i.3 = or i64 %shl.i.3, %or.i.2
  %or.i.4 = or i64 %shl.i.4, %or.i.3
  %or.i.5 = or i64 %shl.i.5, %or.i.4
  %or.i.6 = or i64 %shl.i.6, %or.i.5
  %16 = load i8, ptr %npub, align 1, !tbaa !11
  %conv.i147 = zext i8 %16 to i64
  %arrayidx.i146.1 = getelementptr inbounds i8, ptr %npub, i32 1
  %17 = load i8, ptr %arrayidx.i146.1, align 1, !tbaa !11
  %conv.i147.1 = zext i8 %17 to i64
  %shl.i151.1 = shl nuw nsw i64 %conv.i147.1, 48
  %arrayidx.i146.2 = getelementptr inbounds i8, ptr %npub, i32 2
  %18 = load i8, ptr %arrayidx.i146.2, align 1, !tbaa !11
  %conv.i147.2 = zext i8 %18 to i64
  %shl.i151.2 = shl nuw nsw i64 %conv.i147.2, 40
  %arrayidx.i146.3 = getelementptr inbounds i8, ptr %npub, i32 3
  %19 = load i8, ptr %arrayidx.i146.3, align 1, !tbaa !11
  %conv.i147.3 = zext i8 %19 to i64
  %shl.i151.3 = shl nuw nsw i64 %conv.i147.3, 32
  %arrayidx.i146.4 = getelementptr inbounds i8, ptr %npub, i32 4
  %20 = load i8, ptr %arrayidx.i146.4, align 1, !tbaa !11
  %conv.i147.4 = zext i8 %20 to i64
  %shl.i151.4 = shl nuw nsw i64 %conv.i147.4, 24
  %arrayidx.i146.5 = getelementptr inbounds i8, ptr %npub, i32 5
  %21 = load i8, ptr %arrayidx.i146.5, align 1, !tbaa !11
  %conv.i147.5 = zext i8 %21 to i64
  %shl.i151.5 = shl nuw nsw i64 %conv.i147.5, 16
  %arrayidx.i146.6 = getelementptr inbounds i8, ptr %npub, i32 6
  %22 = load i8, ptr %arrayidx.i146.6, align 1, !tbaa !11
  %conv.i147.6 = zext i8 %22 to i64
  %shl.i151.6 = shl nuw nsw i64 %conv.i147.6, 8
  %arrayidx.i146.7 = getelementptr inbounds i8, ptr %npub, i32 7
  %23 = load i8, ptr %arrayidx.i146.7, align 1, !tbaa !11
  %conv.i147.7 = zext i8 %23 to i64
  %shl.i138 = shl nuw i64 %conv.i134, 56
  %or.i139.1 = or i64 %shl.i138.1, %shl.i138
  %or.i139.2 = or i64 %shl.i138.2, %or.i139.1
  %or.i139.3 = or i64 %shl.i138.3, %or.i139.2
  %or.i139.4 = or i64 %shl.i138.4, %or.i139.3
  %or.i139.5 = or i64 %shl.i138.5, %or.i139.4
  %or.i139.6 = or i64 %shl.i138.6, %or.i139.5
  %or.i139.7 = or i64 %or.i139.6, %conv.i134.7
  %add.ptr3 = getelementptr inbounds i8, ptr %npub, i32 8
  %24 = load i8, ptr %add.ptr3, align 1, !tbaa !11
  %conv.i160 = zext i8 %24 to i64
  %shl.i164 = shl nuw i64 %conv.i160, 56
  %arrayidx.i159.1 = getelementptr inbounds i8, ptr %npub, i32 9
  %25 = load i8, ptr %arrayidx.i159.1, align 1, !tbaa !11
  %conv.i160.1 = zext i8 %25 to i64
  %shl.i164.1 = shl nuw nsw i64 %conv.i160.1, 48
  %or.i165.1 = or i64 %shl.i164.1, %shl.i164
  %arrayidx.i159.2 = getelementptr inbounds i8, ptr %npub, i32 10
  %26 = load i8, ptr %arrayidx.i159.2, align 1, !tbaa !11
  %conv.i160.2 = zext i8 %26 to i64
  %shl.i164.2 = shl nuw nsw i64 %conv.i160.2, 40
  %or.i165.2 = or i64 %shl.i164.2, %or.i165.1
  %arrayidx.i159.3 = getelementptr inbounds i8, ptr %npub, i32 11
  %27 = load i8, ptr %arrayidx.i159.3, align 1, !tbaa !11
  %conv.i160.3 = zext i8 %27 to i64
  %shl.i164.3 = shl nuw nsw i64 %conv.i160.3, 32
  %or.i165.3 = or i64 %shl.i164.3, %or.i165.2
  %arrayidx.i159.4 = getelementptr inbounds i8, ptr %npub, i32 12
  %28 = load i8, ptr %arrayidx.i159.4, align 1, !tbaa !11
  %conv.i160.4 = zext i8 %28 to i64
  %shl.i164.4 = shl nuw nsw i64 %conv.i160.4, 24
  %or.i165.4 = or i64 %shl.i164.4, %or.i165.3
  %arrayidx.i159.5 = getelementptr inbounds i8, ptr %npub, i32 13
  %29 = load i8, ptr %arrayidx.i159.5, align 1, !tbaa !11
  %conv.i160.5 = zext i8 %29 to i64
  %shl.i164.5 = shl nuw nsw i64 %conv.i160.5, 16
  %or.i165.5 = or i64 %shl.i164.5, %or.i165.4
  %arrayidx.i159.6 = getelementptr inbounds i8, ptr %npub, i32 14
  %30 = load i8, ptr %arrayidx.i159.6, align 1, !tbaa !11
  %conv.i160.6 = zext i8 %30 to i64
  %shl.i164.6 = shl nuw nsw i64 %conv.i160.6, 8
  %or.i165.6 = or i64 %shl.i164.6, %or.i165.5
  %arrayidx.i159.7 = getelementptr inbounds i8, ptr %npub, i32 15
  %31 = load i8, ptr %arrayidx.i159.7, align 1, !tbaa !11
  %conv.i160.7 = zext i8 %31 to i64
  %or.i165.7 = or i64 %or.i165.6, %conv.i160.7
  %shl.i151 = shl nuw i64 %conv.i147, 56
  %or.i152.1 = or i64 %shl.i151.1, %shl.i151
  %or.i152.2 = or i64 %shl.i151.2, %or.i152.1
  %or.i152.3 = or i64 %shl.i151.3, %or.i152.2
  %or.i152.4 = or i64 %shl.i151.4, %or.i152.3
  %or.i152.5 = or i64 %shl.i151.5, %or.i152.4
  %or.i152.6 = or i64 %shl.i151.6, %or.i152.5
  %or.i152.7 = or i64 %or.i152.6, %conv.i147.7
  %or.i.7 = or i64 %or.i.6, %conv.i.7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %s) #4
  store i64 -9205344418435956736, ptr %s, align 8, !tbaa !7
  %arrayidx6 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  store i64 %or.i.7, ptr %arrayidx6, align 8, !tbaa !7
  %arrayidx8 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  store i64 %or.i139.7, ptr %arrayidx8, align 8, !tbaa !7
  %arrayidx10 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  store i64 %or.i152.7, ptr %arrayidx10, align 8, !tbaa !7
  %arrayidx12 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  store i64 %or.i165.7, ptr %arrayidx12, align 8, !tbaa !7
  call fastcc void @P12(ptr noundef nonnull %s)
  %32 = load i64, ptr %arrayidx10, align 8, !tbaa !7
  %xor = xor i64 %32, %or.i.7
  store i64 %xor, ptr %arrayidx10, align 8, !tbaa !7
  %33 = load i64, ptr %arrayidx12, align 8, !tbaa !7
  %xor17 = xor i64 %33, %or.i139.7
  store i64 %xor17, ptr %arrayidx12, align 8, !tbaa !7
  %tobool.not = icmp eq i64 %adlen, 0
  br i1 %tobool.not, label %if.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %cmp269 = icmp ugt i64 %adlen, 7
  br i1 %cmp269, label %for.body.i181.preheader, label %while.end

for.body.i181.preheader:                          ; preds = %while.cond.preheader, %for.body.i181.preheader
  %ad.addr.0271 = phi ptr [ %add.ptr28, %for.body.i181.preheader ], [ %ad, %while.cond.preheader ]
  %adlen.addr.0270 = phi i64 [ %sub, %for.body.i181.preheader ], [ %adlen, %while.cond.preheader ]
  %34 = load i8, ptr %ad.addr.0271, align 1, !tbaa !11
  %conv.i173 = zext i8 %34 to i64
  %shl.i177 = shl nuw i64 %conv.i173, 56
  %arrayidx.i172.1 = getelementptr inbounds i8, ptr %ad.addr.0271, i32 1
  %35 = load i8, ptr %arrayidx.i172.1, align 1, !tbaa !11
  %conv.i173.1 = zext i8 %35 to i64
  %shl.i177.1 = shl nuw nsw i64 %conv.i173.1, 48
  %or.i178.1 = or i64 %shl.i177.1, %shl.i177
  %arrayidx.i172.2 = getelementptr inbounds i8, ptr %ad.addr.0271, i32 2
  %36 = load i8, ptr %arrayidx.i172.2, align 1, !tbaa !11
  %conv.i173.2 = zext i8 %36 to i64
  %shl.i177.2 = shl nuw nsw i64 %conv.i173.2, 40
  %or.i178.2 = or i64 %shl.i177.2, %or.i178.1
  %arrayidx.i172.3 = getelementptr inbounds i8, ptr %ad.addr.0271, i32 3
  %37 = load i8, ptr %arrayidx.i172.3, align 1, !tbaa !11
  %conv.i173.3 = zext i8 %37 to i64
  %shl.i177.3 = shl nuw nsw i64 %conv.i173.3, 32
  %or.i178.3 = or i64 %shl.i177.3, %or.i178.2
  %arrayidx.i172.4 = getelementptr inbounds i8, ptr %ad.addr.0271, i32 4
  %38 = load i8, ptr %arrayidx.i172.4, align 1, !tbaa !11
  %conv.i173.4 = zext i8 %38 to i64
  %shl.i177.4 = shl nuw nsw i64 %conv.i173.4, 24
  %or.i178.4 = or i64 %shl.i177.4, %or.i178.3
  %arrayidx.i172.5 = getelementptr inbounds i8, ptr %ad.addr.0271, i32 5
  %39 = load i8, ptr %arrayidx.i172.5, align 1, !tbaa !11
  %conv.i173.5 = zext i8 %39 to i64
  %shl.i177.5 = shl nuw nsw i64 %conv.i173.5, 16
  %or.i178.5 = or i64 %shl.i177.5, %or.i178.4
  %arrayidx.i172.6 = getelementptr inbounds i8, ptr %ad.addr.0271, i32 6
  %40 = load i8, ptr %arrayidx.i172.6, align 1, !tbaa !11
  %conv.i173.6 = zext i8 %40 to i64
  %shl.i177.6 = shl nuw nsw i64 %conv.i173.6, 8
  %or.i178.6 = or i64 %shl.i177.6, %or.i178.5
  %arrayidx.i172.7 = getelementptr inbounds i8, ptr %ad.addr.0271, i32 7
  %41 = load i8, ptr %arrayidx.i172.7, align 1, !tbaa !11
  %conv.i173.7 = zext i8 %41 to i64
  %or.i178.7 = or i64 %or.i178.6, %conv.i173.7
  %42 = load i64, ptr %s, align 8, !tbaa !7
  %xor24 = xor i64 %42, %or.i178.7
  store i64 %xor24, ptr %s, align 8, !tbaa !7
  call fastcc void @P6(ptr noundef nonnull %s)
  %add.ptr28 = getelementptr inbounds i8, ptr %ad.addr.0271, i32 8
  %sub = add i64 %adlen.addr.0270, -8
  %cmp = icmp ugt i64 %sub, 7
  br i1 %cmp, label %for.body.i181.preheader, label %while.end, !llvm.loop !12

while.end:                                        ; preds = %for.body.i181.preheader, %while.cond.preheader
  %adlen.addr.0.lcssa = phi i64 [ %adlen, %while.cond.preheader ], [ %sub, %for.body.i181.preheader ]
  %ad.addr.0.lcssa = phi ptr [ %ad, %while.cond.preheader ], [ %add.ptr28, %for.body.i181.preheader ]
  %conv = trunc i64 %adlen.addr.0.lcssa to i32
  %cmp5.i.not = icmp eq i32 %conv, 0
  br i1 %cmp5.i.not, label %LOADBYTES.exit195, label %for.body.i194

for.body.i194:                                    ; preds = %while.end, %for.body.i194
  %x.07.i183 = phi i64 [ %or.i191, %for.body.i194 ], [ 0, %while.end ]
  %i.06.i184 = phi i32 [ %inc.i192, %for.body.i194 ], [ 0, %while.end ]
  %arrayidx.i185 = getelementptr inbounds i8, ptr %ad.addr.0.lcssa, i32 %i.06.i184
  %43 = load i8, ptr %arrayidx.i185, align 1, !tbaa !11
  %conv.i186 = zext i8 %43 to i64
  %mul.i187 = shl nsw i32 %i.06.i184, 3
  %sub.i188 = sub nsw i32 56, %mul.i187
  %sh_prom.i189 = zext i32 %sub.i188 to i64
  %shl.i190 = shl i64 %conv.i186, %sh_prom.i189
  %or.i191 = or i64 %shl.i190, %x.07.i183
  %inc.i192 = add nuw nsw i32 %i.06.i184, 1
  %exitcond.not.i193 = icmp eq i32 %inc.i192, %conv
  br i1 %exitcond.not.i193, label %LOADBYTES.exit195, label %for.body.i194, !llvm.loop !14

LOADBYTES.exit195:                                ; preds = %for.body.i194, %while.end
  %x.0.lcssa.i = phi i64 [ 0, %while.end ], [ %or.i191, %for.body.i194 ]
  %44 = load i64, ptr %s, align 8, !tbaa !7
  %mul = shl nuw nsw i64 %adlen.addr.0.lcssa, 3
  %sub33 = sub nuw nsw i64 56, %mul
  %shl = shl nuw i64 128, %sub33
  %xor32 = xor i64 %x.0.lcssa.i, %shl
  %xor36 = xor i64 %xor32, %44
  store i64 %xor36, ptr %s, align 8, !tbaa !7
  call fastcc void @P6(ptr noundef nonnull %s)
  %.pre = load i64, ptr %arrayidx12, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %LOADBYTES.exit195, %entry
  %45 = phi i64 [ %.pre, %LOADBYTES.exit195 ], [ %xor17, %entry ]
  %xor42 = xor i64 %45, 1
  store i64 %xor42, ptr %arrayidx12, align 8, !tbaa !7
  %cmp47273 = icmp ugt i64 %mlen, 7
  br i1 %cmp47273, label %for.body.i207.preheader, label %while.end62

for.body.i207.preheader:                          ; preds = %if.end, %for.body.i207.preheader
  %c.addr.0276 = phi ptr [ %add.ptr60, %for.body.i207.preheader ], [ %c, %if.end ]
  %m.addr.0275 = phi ptr [ %add.ptr59, %for.body.i207.preheader ], [ %m, %if.end ]
  %mlen.addr.0274 = phi i64 [ %sub61, %for.body.i207.preheader ], [ %mlen, %if.end ]
  %46 = load i8, ptr %m.addr.0275, align 1, !tbaa !11
  %conv.i199 = zext i8 %46 to i64
  %shl.i203 = shl nuw i64 %conv.i199, 56
  %arrayidx.i198.1 = getelementptr inbounds i8, ptr %m.addr.0275, i32 1
  %47 = load i8, ptr %arrayidx.i198.1, align 1, !tbaa !11
  %conv.i199.1 = zext i8 %47 to i64
  %shl.i203.1 = shl nuw nsw i64 %conv.i199.1, 48
  %or.i204.1 = or i64 %shl.i203.1, %shl.i203
  %arrayidx.i198.2 = getelementptr inbounds i8, ptr %m.addr.0275, i32 2
  %48 = load i8, ptr %arrayidx.i198.2, align 1, !tbaa !11
  %conv.i199.2 = zext i8 %48 to i64
  %shl.i203.2 = shl nuw nsw i64 %conv.i199.2, 40
  %or.i204.2 = or i64 %shl.i203.2, %or.i204.1
  %arrayidx.i198.3 = getelementptr inbounds i8, ptr %m.addr.0275, i32 3
  %49 = load i8, ptr %arrayidx.i198.3, align 1, !tbaa !11
  %conv.i199.3 = zext i8 %49 to i64
  %shl.i203.3 = shl nuw nsw i64 %conv.i199.3, 32
  %or.i204.3 = or i64 %shl.i203.3, %or.i204.2
  %arrayidx.i198.4 = getelementptr inbounds i8, ptr %m.addr.0275, i32 4
  %50 = load i8, ptr %arrayidx.i198.4, align 1, !tbaa !11
  %conv.i199.4 = zext i8 %50 to i64
  %shl.i203.4 = shl nuw nsw i64 %conv.i199.4, 24
  %or.i204.4 = or i64 %shl.i203.4, %or.i204.3
  %arrayidx.i198.5 = getelementptr inbounds i8, ptr %m.addr.0275, i32 5
  %51 = load i8, ptr %arrayidx.i198.5, align 1, !tbaa !11
  %conv.i199.5 = zext i8 %51 to i64
  %shl.i203.5 = shl nuw nsw i64 %conv.i199.5, 16
  %or.i204.5 = or i64 %shl.i203.5, %or.i204.4
  %arrayidx.i198.6 = getelementptr inbounds i8, ptr %m.addr.0275, i32 6
  %52 = load i8, ptr %arrayidx.i198.6, align 1, !tbaa !11
  %conv.i199.6 = zext i8 %52 to i64
  %shl.i203.6 = shl nuw nsw i64 %conv.i199.6, 8
  %or.i204.6 = or i64 %shl.i203.6, %or.i204.5
  %arrayidx.i198.7 = getelementptr inbounds i8, ptr %m.addr.0275, i32 7
  %53 = load i8, ptr %arrayidx.i198.7, align 1, !tbaa !11
  %conv.i199.7 = zext i8 %53 to i64
  %or.i204.7 = or i64 %or.i204.6, %conv.i199.7
  %54 = load i64, ptr %s, align 8, !tbaa !7
  %xor53 = xor i64 %54, %or.i204.7
  store i64 %xor53, ptr %s, align 8, !tbaa !7
  %shr.i = lshr i64 %xor53, 56
  %conv.i213 = trunc i64 %shr.i to i8
  store i8 %conv.i213, ptr %c.addr.0276, align 1, !tbaa !11
  %shr.i.1 = lshr i64 %xor53, 48
  %conv.i213.1 = trunc i64 %shr.i.1 to i8
  %arrayidx.i214.1 = getelementptr inbounds i8, ptr %c.addr.0276, i32 1
  store i8 %conv.i213.1, ptr %arrayidx.i214.1, align 1, !tbaa !11
  %shr.i.2 = lshr i64 %xor53, 40
  %conv.i213.2 = trunc i64 %shr.i.2 to i8
  %arrayidx.i214.2 = getelementptr inbounds i8, ptr %c.addr.0276, i32 2
  store i8 %conv.i213.2, ptr %arrayidx.i214.2, align 1, !tbaa !11
  %shr.i.3 = lshr i64 %xor53, 32
  %conv.i213.3 = trunc i64 %shr.i.3 to i8
  %arrayidx.i214.3 = getelementptr inbounds i8, ptr %c.addr.0276, i32 3
  store i8 %conv.i213.3, ptr %arrayidx.i214.3, align 1, !tbaa !11
  %shr.i.4 = lshr i64 %xor53, 24
  %conv.i213.4 = trunc i64 %shr.i.4 to i8
  %arrayidx.i214.4 = getelementptr inbounds i8, ptr %c.addr.0276, i32 4
  store i8 %conv.i213.4, ptr %arrayidx.i214.4, align 1, !tbaa !11
  %shr.i.5 = lshr i64 %xor53, 16
  %conv.i213.5 = trunc i64 %shr.i.5 to i8
  %arrayidx.i214.5 = getelementptr inbounds i8, ptr %c.addr.0276, i32 5
  store i8 %conv.i213.5, ptr %arrayidx.i214.5, align 1, !tbaa !11
  %shr.i.6 = lshr i64 %xor53, 8
  %conv.i213.6 = trunc i64 %shr.i.6 to i8
  %arrayidx.i214.6 = getelementptr inbounds i8, ptr %c.addr.0276, i32 6
  store i8 %conv.i213.6, ptr %arrayidx.i214.6, align 1, !tbaa !11
  %conv.i213.7 = trunc i64 %xor53 to i8
  %arrayidx.i214.7 = getelementptr inbounds i8, ptr %c.addr.0276, i32 7
  store i8 %conv.i213.7, ptr %arrayidx.i214.7, align 1, !tbaa !11
  call fastcc void @P6(ptr noundef nonnull %s)
  %add.ptr59 = getelementptr inbounds i8, ptr %m.addr.0275, i32 8
  %add.ptr60 = getelementptr inbounds i8, ptr %c.addr.0276, i32 8
  %sub61 = add i64 %mlen.addr.0274, -8
  %cmp47 = icmp ugt i64 %sub61, 7
  br i1 %cmp47, label %for.body.i207.preheader, label %while.end62, !llvm.loop !15

while.end62:                                      ; preds = %for.body.i207.preheader, %if.end
  %mlen.addr.0.lcssa = phi i64 [ %mlen, %if.end ], [ %sub61, %for.body.i207.preheader ]
  %m.addr.0.lcssa = phi ptr [ %m, %if.end ], [ %add.ptr59, %for.body.i207.preheader ]
  %c.addr.0.lcssa = phi ptr [ %c, %if.end ], [ %add.ptr60, %for.body.i207.preheader ]
  %conv63 = trunc i64 %mlen.addr.0.lcssa to i32
  %cmp5.i218.not = icmp eq i32 %conv63, 0
  br i1 %cmp5.i218.not, label %LOADBYTES.exit232.thread, label %for.body.i230

LOADBYTES.exit232.thread:                         ; preds = %while.end62
  %55 = load i64, ptr %s, align 8, !tbaa !7
  br label %STOREBYTES.exit243

for.body.i230:                                    ; preds = %while.end62, %for.body.i230
  %x.07.i219 = phi i64 [ %or.i227, %for.body.i230 ], [ 0, %while.end62 ]
  %i.06.i220 = phi i32 [ %inc.i228, %for.body.i230 ], [ 0, %while.end62 ]
  %arrayidx.i221 = getelementptr inbounds i8, ptr %m.addr.0.lcssa, i32 %i.06.i220
  %56 = load i8, ptr %arrayidx.i221, align 1, !tbaa !11
  %conv.i222 = zext i8 %56 to i64
  %mul.i223 = shl nsw i32 %i.06.i220, 3
  %sub.i224 = sub nsw i32 56, %mul.i223
  %sh_prom.i225 = zext i32 %sub.i224 to i64
  %shl.i226 = shl i64 %conv.i222, %sh_prom.i225
  %or.i227 = or i64 %shl.i226, %x.07.i219
  %inc.i228 = add nuw nsw i32 %i.06.i220, 1
  %exitcond.not.i229 = icmp eq i32 %inc.i228, %conv63
  br i1 %exitcond.not.i229, label %for.body.i242.preheader, label %for.body.i230, !llvm.loop !14

for.body.i242.preheader:                          ; preds = %for.body.i230
  %57 = load i64, ptr %s, align 8, !tbaa !7
  %xor67 = xor i64 %57, %or.i227
  br label %for.body.i242

for.body.i242:                                    ; preds = %for.body.i242.preheader, %for.body.i242
  %i.05.i233 = phi i32 [ %inc.i240, %for.body.i242 ], [ 0, %for.body.i242.preheader ]
  %mul.i234 = shl nsw i32 %i.05.i233, 3
  %sub.i235 = sub nsw i32 56, %mul.i234
  %sh_prom.i236 = zext i32 %sub.i235 to i64
  %shr.i237 = lshr i64 %xor67, %sh_prom.i236
  %conv.i238 = trunc i64 %shr.i237 to i8
  %arrayidx.i239 = getelementptr inbounds i8, ptr %c.addr.0.lcssa, i32 %i.05.i233
  store i8 %conv.i238, ptr %arrayidx.i239, align 1, !tbaa !11
  %inc.i240 = add nuw nsw i32 %i.05.i233, 1
  %exitcond.not.i241 = icmp eq i32 %inc.i240, %conv63
  br i1 %exitcond.not.i241, label %STOREBYTES.exit243, label %for.body.i242, !llvm.loop !16

STOREBYTES.exit243:                               ; preds = %for.body.i242, %LOADBYTES.exit232.thread
  %xor67268 = phi i64 [ %55, %LOADBYTES.exit232.thread ], [ %xor67, %for.body.i242 ]
  %mul71 = shl nuw nsw i64 %mlen.addr.0.lcssa, 3
  %sub72 = sub nuw nsw i64 56, %mul71
  %shl73 = shl nuw i64 128, %sub72
  %xor76 = xor i64 %xor67268, %shl73
  store i64 %xor76, ptr %s, align 8, !tbaa !7
  %add.ptr77 = getelementptr inbounds i8, ptr %c.addr.0.lcssa, i32 %conv63
  %58 = load i64, ptr %arrayidx6, align 8, !tbaa !7
  %xor83 = xor i64 %58, %or.i.7
  store i64 %xor83, ptr %arrayidx6, align 8, !tbaa !7
  %59 = load i64, ptr %arrayidx8, align 8, !tbaa !7
  %xor86 = xor i64 %59, %or.i139.7
  store i64 %xor86, ptr %arrayidx8, align 8, !tbaa !7
  call fastcc void @P12(ptr noundef nonnull %s)
  %60 = load i64, ptr %arrayidx10, align 8, !tbaa !7
  %xor92 = xor i64 %60, %or.i.7
  %61 = load i64, ptr %arrayidx12, align 8, !tbaa !7
  %xor95 = xor i64 %61, %or.i139.7
  %shr.i248 = lshr i64 %xor92, 56
  %conv.i249 = trunc i64 %shr.i248 to i8
  store i8 %conv.i249, ptr %add.ptr77, align 1, !tbaa !11
  %shr.i248.1 = lshr i64 %xor92, 48
  %conv.i249.1 = trunc i64 %shr.i248.1 to i8
  %arrayidx.i250.1 = getelementptr inbounds i8, ptr %add.ptr77, i32 1
  store i8 %conv.i249.1, ptr %arrayidx.i250.1, align 1, !tbaa !11
  %shr.i248.2 = lshr i64 %xor92, 40
  %conv.i249.2 = trunc i64 %shr.i248.2 to i8
  %arrayidx.i250.2 = getelementptr inbounds i8, ptr %add.ptr77, i32 2
  store i8 %conv.i249.2, ptr %arrayidx.i250.2, align 1, !tbaa !11
  %shr.i248.3 = lshr i64 %xor92, 32
  %conv.i249.3 = trunc i64 %shr.i248.3 to i8
  %arrayidx.i250.3 = getelementptr inbounds i8, ptr %add.ptr77, i32 3
  store i8 %conv.i249.3, ptr %arrayidx.i250.3, align 1, !tbaa !11
  %shr.i248.4 = lshr i64 %xor92, 24
  %conv.i249.4 = trunc i64 %shr.i248.4 to i8
  %arrayidx.i250.4 = getelementptr inbounds i8, ptr %add.ptr77, i32 4
  store i8 %conv.i249.4, ptr %arrayidx.i250.4, align 1, !tbaa !11
  %shr.i248.5 = lshr i64 %xor92, 16
  %conv.i249.5 = trunc i64 %shr.i248.5 to i8
  %arrayidx.i250.5 = getelementptr inbounds i8, ptr %add.ptr77, i32 5
  store i8 %conv.i249.5, ptr %arrayidx.i250.5, align 1, !tbaa !11
  %shr.i248.6 = lshr i64 %xor92, 8
  %conv.i249.6 = trunc i64 %shr.i248.6 to i8
  %arrayidx.i250.6 = getelementptr inbounds i8, ptr %add.ptr77, i32 6
  store i8 %conv.i249.6, ptr %arrayidx.i250.6, align 1, !tbaa !11
  %conv.i249.7 = trunc i64 %xor92 to i8
  %arrayidx.i250.7 = getelementptr inbounds i8, ptr %add.ptr77, i32 7
  store i8 %conv.i249.7, ptr %arrayidx.i250.7, align 1, !tbaa !11
  %add.ptr101 = getelementptr inbounds i8, ptr %add.ptr77, i32 8
  %shr.i259 = lshr i64 %xor95, 56
  %conv.i260 = trunc i64 %shr.i259 to i8
  store i8 %conv.i260, ptr %add.ptr101, align 1, !tbaa !11
  %shr.i259.1 = lshr i64 %xor95, 48
  %conv.i260.1 = trunc i64 %shr.i259.1 to i8
  %arrayidx.i261.1 = getelementptr inbounds i8, ptr %add.ptr101, i32 1
  store i8 %conv.i260.1, ptr %arrayidx.i261.1, align 1, !tbaa !11
  %shr.i259.2 = lshr i64 %xor95, 40
  %conv.i260.2 = trunc i64 %shr.i259.2 to i8
  %arrayidx.i261.2 = getelementptr inbounds i8, ptr %add.ptr101, i32 2
  store i8 %conv.i260.2, ptr %arrayidx.i261.2, align 1, !tbaa !11
  %shr.i259.3 = lshr i64 %xor95, 32
  %conv.i260.3 = trunc i64 %shr.i259.3 to i8
  %arrayidx.i261.3 = getelementptr inbounds i8, ptr %add.ptr101, i32 3
  store i8 %conv.i260.3, ptr %arrayidx.i261.3, align 1, !tbaa !11
  %shr.i259.4 = lshr i64 %xor95, 24
  %conv.i260.4 = trunc i64 %shr.i259.4 to i8
  %arrayidx.i261.4 = getelementptr inbounds i8, ptr %add.ptr101, i32 4
  store i8 %conv.i260.4, ptr %arrayidx.i261.4, align 1, !tbaa !11
  %shr.i259.5 = lshr i64 %xor95, 16
  %conv.i260.5 = trunc i64 %shr.i259.5 to i8
  %arrayidx.i261.5 = getelementptr inbounds i8, ptr %add.ptr101, i32 5
  store i8 %conv.i260.5, ptr %arrayidx.i261.5, align 1, !tbaa !11
  %shr.i259.6 = lshr i64 %xor95, 8
  %conv.i260.6 = trunc i64 %shr.i259.6 to i8
  %arrayidx.i261.6 = getelementptr inbounds i8, ptr %add.ptr101, i32 6
  store i8 %conv.i260.6, ptr %arrayidx.i261.6, align 1, !tbaa !11
  %conv.i260.7 = trunc i64 %xor95 to i8
  %arrayidx.i261.7 = getelementptr inbounds i8, ptr %add.ptr101, i32 7
  store i8 %conv.i260.7, ptr %arrayidx.i261.7, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %s) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @P12(ptr nocapture noundef %s) unnamed_addr #2 {
entry:
  %arrayidx.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %0 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %xor.i = xor i64 %0, 240
  %arrayidx2.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %1 = load i64, ptr %arrayidx2.i, align 8, !tbaa !7
  %2 = load i64, ptr %s, align 8, !tbaa !7
  %xor5.i = xor i64 %2, %1
  %arrayidx7.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %3 = load i64, ptr %arrayidx7.i, align 8, !tbaa !7
  %xor10.i = xor i64 %3, %1
  %arrayidx12.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %4 = load i64, ptr %arrayidx12.i, align 8, !tbaa !7
  %xor15.i = xor i64 %4, %xor.i
  %not.i = xor i64 %4, -1
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
  %xor.i13 = xor i64 %xor121.i, 225
  %xor5.i15 = xor i64 %xor97.i, %xor145.i
  %xor10.i17 = xor i64 %xor133.i, %xor145.i
  %xor15.i19 = xor i64 %xor109.i, %xor.i13
  %not.i20 = xor i64 %xor109.i, -1
  %and.i21 = and i64 %xor.i13, %not.i20
  %xor22.i22 = xor i64 %and.i21, %xor5.i15
  %not29.i23 = xor i64 %xor15.i19, -1
  %and32.i24 = and i64 %xor133.i, %not29.i23
  %xor33.i25 = xor i64 %and32.i24, %xor109.i
  %not40.i26 = xor i64 %xor133.i, -1
  %and43.i27 = and i64 %xor145.i, %not40.i26
  %xor44.i28 = xor i64 %xor15.i19, %and43.i27
  %not51.i29 = xor i64 %xor10.i17, -1
  %and54.i30 = and i64 %xor5.i15, %not51.i29
  %xor55.i31 = xor i64 %and54.i30, %xor133.i
  %not62.i32 = xor i64 %xor5.i15, -1
  %and65.i33 = and i64 %xor109.i, %not62.i32
  %xor66.i34 = xor i64 %and65.i33, %xor10.i17
  %xor73.i35 = xor i64 %xor33.i25, %xor22.i22
  %xor78.i36 = xor i64 %xor22.i22, %xor66.i34
  %xor83.i37 = xor i64 %xor55.i31, %xor44.i28
  %not86.i38 = xor i64 %xor44.i28, -1
  %or.i.i39 = tail call i64 @llvm.fshl.i64(i64 %xor78.i36, i64 %xor78.i36, i64 45)
  %or.i193.i40 = tail call i64 @llvm.fshl.i64(i64 %xor78.i36, i64 %xor78.i36, i64 36)
  %10 = xor i64 %or.i.i39, %or.i193.i40
  %xor97.i41 = xor i64 %10, %xor78.i36
  %or.i196.i42 = tail call i64 @llvm.fshl.i64(i64 %xor73.i35, i64 %xor73.i35, i64 3)
  %or.i199.i43 = tail call i64 @llvm.fshl.i64(i64 %xor73.i35, i64 %xor73.i35, i64 25)
  %11 = xor i64 %or.i196.i42, %or.i199.i43
  %xor109.i44 = xor i64 %11, %xor73.i35
  %or.i202.i45 = tail call i64 @llvm.fshl.i64(i64 %not86.i38, i64 %not86.i38, i64 63)
  %or.i205.i46 = tail call i64 @llvm.fshl.i64(i64 %not86.i38, i64 %not86.i38, i64 58)
  %12 = xor i64 %or.i202.i45, %or.i205.i46
  %xor121.i47 = xor i64 %12, %not86.i38
  %or.i208.i48 = tail call i64 @llvm.fshl.i64(i64 %xor83.i37, i64 %xor83.i37, i64 54)
  %or.i211.i49 = tail call i64 @llvm.fshl.i64(i64 %xor83.i37, i64 %xor83.i37, i64 47)
  %13 = xor i64 %or.i208.i48, %or.i211.i49
  %xor133.i50 = xor i64 %13, %xor83.i37
  %or.i214.i51 = tail call i64 @llvm.fshl.i64(i64 %xor66.i34, i64 %xor66.i34, i64 57)
  %or.i217.i52 = tail call i64 @llvm.fshl.i64(i64 %xor66.i34, i64 %xor66.i34, i64 23)
  %14 = xor i64 %or.i214.i51, %or.i217.i52
  %xor145.i53 = xor i64 %14, %xor66.i34
  %xor.i55 = xor i64 %xor121.i47, 210
  %xor5.i57 = xor i64 %xor97.i41, %xor145.i53
  %xor10.i59 = xor i64 %xor133.i50, %xor145.i53
  %xor15.i61 = xor i64 %xor109.i44, %xor.i55
  %not.i62 = xor i64 %xor109.i44, -1
  %and.i63 = and i64 %xor.i55, %not.i62
  %xor22.i64 = xor i64 %and.i63, %xor5.i57
  %not29.i65 = xor i64 %xor15.i61, -1
  %and32.i66 = and i64 %xor133.i50, %not29.i65
  %xor33.i67 = xor i64 %and32.i66, %xor109.i44
  %not40.i68 = xor i64 %xor133.i50, -1
  %and43.i69 = and i64 %xor145.i53, %not40.i68
  %xor44.i70 = xor i64 %xor15.i61, %and43.i69
  %not51.i71 = xor i64 %xor10.i59, -1
  %and54.i72 = and i64 %xor5.i57, %not51.i71
  %xor55.i73 = xor i64 %and54.i72, %xor133.i50
  %not62.i74 = xor i64 %xor5.i57, -1
  %and65.i75 = and i64 %xor109.i44, %not62.i74
  %xor66.i76 = xor i64 %and65.i75, %xor10.i59
  %xor73.i77 = xor i64 %xor33.i67, %xor22.i64
  %xor78.i78 = xor i64 %xor22.i64, %xor66.i76
  %xor83.i79 = xor i64 %xor55.i73, %xor44.i70
  %not86.i80 = xor i64 %xor44.i70, -1
  %or.i.i81 = tail call i64 @llvm.fshl.i64(i64 %xor78.i78, i64 %xor78.i78, i64 45)
  %or.i193.i82 = tail call i64 @llvm.fshl.i64(i64 %xor78.i78, i64 %xor78.i78, i64 36)
  %15 = xor i64 %or.i.i81, %or.i193.i82
  %xor97.i83 = xor i64 %15, %xor78.i78
  %or.i196.i84 = tail call i64 @llvm.fshl.i64(i64 %xor73.i77, i64 %xor73.i77, i64 3)
  %or.i199.i85 = tail call i64 @llvm.fshl.i64(i64 %xor73.i77, i64 %xor73.i77, i64 25)
  %16 = xor i64 %or.i196.i84, %or.i199.i85
  %xor109.i86 = xor i64 %16, %xor73.i77
  %or.i202.i87 = tail call i64 @llvm.fshl.i64(i64 %not86.i80, i64 %not86.i80, i64 63)
  %or.i205.i88 = tail call i64 @llvm.fshl.i64(i64 %not86.i80, i64 %not86.i80, i64 58)
  %17 = xor i64 %or.i202.i87, %or.i205.i88
  %xor121.i89 = xor i64 %17, %not86.i80
  %or.i208.i90 = tail call i64 @llvm.fshl.i64(i64 %xor83.i79, i64 %xor83.i79, i64 54)
  %or.i211.i91 = tail call i64 @llvm.fshl.i64(i64 %xor83.i79, i64 %xor83.i79, i64 47)
  %18 = xor i64 %or.i208.i90, %or.i211.i91
  %xor133.i92 = xor i64 %18, %xor83.i79
  %or.i214.i93 = tail call i64 @llvm.fshl.i64(i64 %xor66.i76, i64 %xor66.i76, i64 57)
  %or.i217.i94 = tail call i64 @llvm.fshl.i64(i64 %xor66.i76, i64 %xor66.i76, i64 23)
  %19 = xor i64 %or.i214.i93, %or.i217.i94
  %xor145.i95 = xor i64 %19, %xor66.i76
  %xor.i97 = xor i64 %xor121.i89, 195
  %xor5.i99 = xor i64 %xor97.i83, %xor145.i95
  %xor10.i101 = xor i64 %xor133.i92, %xor145.i95
  %xor15.i103 = xor i64 %xor109.i86, %xor.i97
  %not.i104 = xor i64 %xor109.i86, -1
  %and.i105 = and i64 %xor.i97, %not.i104
  %xor22.i106 = xor i64 %and.i105, %xor5.i99
  %not29.i107 = xor i64 %xor15.i103, -1
  %and32.i108 = and i64 %xor133.i92, %not29.i107
  %xor33.i109 = xor i64 %and32.i108, %xor109.i86
  %not40.i110 = xor i64 %xor133.i92, -1
  %and43.i111 = and i64 %xor145.i95, %not40.i110
  %xor44.i112 = xor i64 %xor15.i103, %and43.i111
  %not51.i113 = xor i64 %xor10.i101, -1
  %and54.i114 = and i64 %xor5.i99, %not51.i113
  %xor55.i115 = xor i64 %and54.i114, %xor133.i92
  %not62.i116 = xor i64 %xor5.i99, -1
  %and65.i117 = and i64 %xor109.i86, %not62.i116
  %xor66.i118 = xor i64 %and65.i117, %xor10.i101
  %xor73.i119 = xor i64 %xor33.i109, %xor22.i106
  %xor78.i120 = xor i64 %xor22.i106, %xor66.i118
  %xor83.i121 = xor i64 %xor55.i115, %xor44.i112
  %not86.i122 = xor i64 %xor44.i112, -1
  %or.i.i123 = tail call i64 @llvm.fshl.i64(i64 %xor78.i120, i64 %xor78.i120, i64 45)
  %or.i193.i124 = tail call i64 @llvm.fshl.i64(i64 %xor78.i120, i64 %xor78.i120, i64 36)
  %20 = xor i64 %or.i.i123, %or.i193.i124
  %xor97.i125 = xor i64 %20, %xor78.i120
  %or.i196.i126 = tail call i64 @llvm.fshl.i64(i64 %xor73.i119, i64 %xor73.i119, i64 3)
  %or.i199.i127 = tail call i64 @llvm.fshl.i64(i64 %xor73.i119, i64 %xor73.i119, i64 25)
  %21 = xor i64 %or.i196.i126, %or.i199.i127
  %xor109.i128 = xor i64 %21, %xor73.i119
  %or.i202.i129 = tail call i64 @llvm.fshl.i64(i64 %not86.i122, i64 %not86.i122, i64 63)
  %or.i205.i130 = tail call i64 @llvm.fshl.i64(i64 %not86.i122, i64 %not86.i122, i64 58)
  %22 = xor i64 %or.i202.i129, %or.i205.i130
  %xor121.i131 = xor i64 %22, %not86.i122
  %or.i208.i132 = tail call i64 @llvm.fshl.i64(i64 %xor83.i121, i64 %xor83.i121, i64 54)
  %or.i211.i133 = tail call i64 @llvm.fshl.i64(i64 %xor83.i121, i64 %xor83.i121, i64 47)
  %23 = xor i64 %or.i208.i132, %or.i211.i133
  %xor133.i134 = xor i64 %23, %xor83.i121
  %or.i214.i135 = tail call i64 @llvm.fshl.i64(i64 %xor66.i118, i64 %xor66.i118, i64 57)
  %or.i217.i136 = tail call i64 @llvm.fshl.i64(i64 %xor66.i118, i64 %xor66.i118, i64 23)
  %24 = xor i64 %or.i214.i135, %or.i217.i136
  %xor145.i137 = xor i64 %24, %xor66.i118
  %xor.i139 = xor i64 %xor121.i131, 180
  %xor5.i141 = xor i64 %xor97.i125, %xor145.i137
  %xor10.i143 = xor i64 %xor133.i134, %xor145.i137
  %xor15.i145 = xor i64 %xor109.i128, %xor.i139
  %not.i146 = xor i64 %xor109.i128, -1
  %and.i147 = and i64 %xor.i139, %not.i146
  %xor22.i148 = xor i64 %and.i147, %xor5.i141
  %not29.i149 = xor i64 %xor15.i145, -1
  %and32.i150 = and i64 %xor133.i134, %not29.i149
  %xor33.i151 = xor i64 %and32.i150, %xor109.i128
  %not40.i152 = xor i64 %xor133.i134, -1
  %and43.i153 = and i64 %xor145.i137, %not40.i152
  %xor44.i154 = xor i64 %xor15.i145, %and43.i153
  %not51.i155 = xor i64 %xor10.i143, -1
  %and54.i156 = and i64 %xor5.i141, %not51.i155
  %xor55.i157 = xor i64 %and54.i156, %xor133.i134
  %not62.i158 = xor i64 %xor5.i141, -1
  %and65.i159 = and i64 %xor109.i128, %not62.i158
  %xor66.i160 = xor i64 %and65.i159, %xor10.i143
  %xor73.i161 = xor i64 %xor33.i151, %xor22.i148
  %xor78.i162 = xor i64 %xor22.i148, %xor66.i160
  %xor83.i163 = xor i64 %xor55.i157, %xor44.i154
  %not86.i164 = xor i64 %xor44.i154, -1
  %or.i.i165 = tail call i64 @llvm.fshl.i64(i64 %xor78.i162, i64 %xor78.i162, i64 45)
  %or.i193.i166 = tail call i64 @llvm.fshl.i64(i64 %xor78.i162, i64 %xor78.i162, i64 36)
  %25 = xor i64 %or.i.i165, %or.i193.i166
  %xor97.i167 = xor i64 %25, %xor78.i162
  %or.i196.i168 = tail call i64 @llvm.fshl.i64(i64 %xor73.i161, i64 %xor73.i161, i64 3)
  %or.i199.i169 = tail call i64 @llvm.fshl.i64(i64 %xor73.i161, i64 %xor73.i161, i64 25)
  %26 = xor i64 %or.i196.i168, %or.i199.i169
  %xor109.i170 = xor i64 %26, %xor73.i161
  %or.i202.i171 = tail call i64 @llvm.fshl.i64(i64 %not86.i164, i64 %not86.i164, i64 63)
  %or.i205.i172 = tail call i64 @llvm.fshl.i64(i64 %not86.i164, i64 %not86.i164, i64 58)
  %27 = xor i64 %or.i202.i171, %or.i205.i172
  %xor121.i173 = xor i64 %27, %not86.i164
  %or.i208.i174 = tail call i64 @llvm.fshl.i64(i64 %xor83.i163, i64 %xor83.i163, i64 54)
  %or.i211.i175 = tail call i64 @llvm.fshl.i64(i64 %xor83.i163, i64 %xor83.i163, i64 47)
  %28 = xor i64 %or.i208.i174, %or.i211.i175
  %xor133.i176 = xor i64 %28, %xor83.i163
  %or.i214.i177 = tail call i64 @llvm.fshl.i64(i64 %xor66.i160, i64 %xor66.i160, i64 57)
  %or.i217.i178 = tail call i64 @llvm.fshl.i64(i64 %xor66.i160, i64 %xor66.i160, i64 23)
  %29 = xor i64 %or.i214.i177, %or.i217.i178
  %xor145.i179 = xor i64 %29, %xor66.i160
  %xor.i181 = xor i64 %xor121.i173, 165
  %xor5.i183 = xor i64 %xor97.i167, %xor145.i179
  %xor10.i185 = xor i64 %xor133.i176, %xor145.i179
  %xor15.i187 = xor i64 %xor109.i170, %xor.i181
  %not.i188 = xor i64 %xor109.i170, -1
  %and.i189 = and i64 %xor.i181, %not.i188
  %xor22.i190 = xor i64 %and.i189, %xor5.i183
  %not29.i191 = xor i64 %xor15.i187, -1
  %and32.i192 = and i64 %xor133.i176, %not29.i191
  %xor33.i193 = xor i64 %and32.i192, %xor109.i170
  %not40.i194 = xor i64 %xor133.i176, -1
  %and43.i195 = and i64 %xor145.i179, %not40.i194
  %xor44.i196 = xor i64 %xor15.i187, %and43.i195
  %not51.i197 = xor i64 %xor10.i185, -1
  %and54.i198 = and i64 %xor5.i183, %not51.i197
  %xor55.i199 = xor i64 %and54.i198, %xor133.i176
  %not62.i200 = xor i64 %xor5.i183, -1
  %and65.i201 = and i64 %xor109.i170, %not62.i200
  %xor66.i202 = xor i64 %and65.i201, %xor10.i185
  %xor73.i203 = xor i64 %xor33.i193, %xor22.i190
  %xor78.i204 = xor i64 %xor22.i190, %xor66.i202
  %xor83.i205 = xor i64 %xor55.i199, %xor44.i196
  %not86.i206 = xor i64 %xor44.i196, -1
  %or.i.i207 = tail call i64 @llvm.fshl.i64(i64 %xor78.i204, i64 %xor78.i204, i64 45)
  %or.i193.i208 = tail call i64 @llvm.fshl.i64(i64 %xor78.i204, i64 %xor78.i204, i64 36)
  %30 = xor i64 %or.i.i207, %or.i193.i208
  %xor97.i209 = xor i64 %30, %xor78.i204
  %or.i196.i210 = tail call i64 @llvm.fshl.i64(i64 %xor73.i203, i64 %xor73.i203, i64 3)
  %or.i199.i211 = tail call i64 @llvm.fshl.i64(i64 %xor73.i203, i64 %xor73.i203, i64 25)
  %31 = xor i64 %or.i196.i210, %or.i199.i211
  %xor109.i212 = xor i64 %31, %xor73.i203
  %or.i202.i213 = tail call i64 @llvm.fshl.i64(i64 %not86.i206, i64 %not86.i206, i64 63)
  %or.i205.i214 = tail call i64 @llvm.fshl.i64(i64 %not86.i206, i64 %not86.i206, i64 58)
  %32 = xor i64 %or.i202.i213, %or.i205.i214
  %xor121.i215 = xor i64 %32, %not86.i206
  %or.i208.i216 = tail call i64 @llvm.fshl.i64(i64 %xor83.i205, i64 %xor83.i205, i64 54)
  %or.i211.i217 = tail call i64 @llvm.fshl.i64(i64 %xor83.i205, i64 %xor83.i205, i64 47)
  %33 = xor i64 %or.i208.i216, %or.i211.i217
  %xor133.i218 = xor i64 %33, %xor83.i205
  %or.i214.i219 = tail call i64 @llvm.fshl.i64(i64 %xor66.i202, i64 %xor66.i202, i64 57)
  %or.i217.i220 = tail call i64 @llvm.fshl.i64(i64 %xor66.i202, i64 %xor66.i202, i64 23)
  %34 = xor i64 %or.i214.i219, %or.i217.i220
  %xor145.i221 = xor i64 %34, %xor66.i202
  %xor.i223 = xor i64 %xor121.i215, 150
  %xor5.i225 = xor i64 %xor97.i209, %xor145.i221
  %xor10.i227 = xor i64 %xor133.i218, %xor145.i221
  %xor15.i229 = xor i64 %xor109.i212, %xor.i223
  %not.i230 = xor i64 %xor109.i212, -1
  %and.i231 = and i64 %xor.i223, %not.i230
  %xor22.i232 = xor i64 %and.i231, %xor5.i225
  %not29.i233 = xor i64 %xor15.i229, -1
  %and32.i234 = and i64 %xor133.i218, %not29.i233
  %xor33.i235 = xor i64 %and32.i234, %xor109.i212
  %not40.i236 = xor i64 %xor133.i218, -1
  %and43.i237 = and i64 %xor145.i221, %not40.i236
  %xor44.i238 = xor i64 %xor15.i229, %and43.i237
  %not51.i239 = xor i64 %xor10.i227, -1
  %and54.i240 = and i64 %xor5.i225, %not51.i239
  %xor55.i241 = xor i64 %and54.i240, %xor133.i218
  %not62.i242 = xor i64 %xor5.i225, -1
  %and65.i243 = and i64 %xor109.i212, %not62.i242
  %xor66.i244 = xor i64 %and65.i243, %xor10.i227
  %xor73.i245 = xor i64 %xor33.i235, %xor22.i232
  %xor78.i246 = xor i64 %xor22.i232, %xor66.i244
  %xor83.i247 = xor i64 %xor55.i241, %xor44.i238
  %not86.i248 = xor i64 %xor44.i238, -1
  %or.i.i249 = tail call i64 @llvm.fshl.i64(i64 %xor78.i246, i64 %xor78.i246, i64 45)
  %or.i193.i250 = tail call i64 @llvm.fshl.i64(i64 %xor78.i246, i64 %xor78.i246, i64 36)
  %35 = xor i64 %or.i.i249, %or.i193.i250
  %xor97.i251 = xor i64 %35, %xor78.i246
  %or.i196.i252 = tail call i64 @llvm.fshl.i64(i64 %xor73.i245, i64 %xor73.i245, i64 3)
  %or.i199.i253 = tail call i64 @llvm.fshl.i64(i64 %xor73.i245, i64 %xor73.i245, i64 25)
  %36 = xor i64 %or.i196.i252, %or.i199.i253
  %xor109.i254 = xor i64 %36, %xor73.i245
  %or.i202.i255 = tail call i64 @llvm.fshl.i64(i64 %not86.i248, i64 %not86.i248, i64 63)
  %or.i205.i256 = tail call i64 @llvm.fshl.i64(i64 %not86.i248, i64 %not86.i248, i64 58)
  %37 = xor i64 %or.i202.i255, %or.i205.i256
  %xor121.i257 = xor i64 %37, %not86.i248
  %or.i208.i258 = tail call i64 @llvm.fshl.i64(i64 %xor83.i247, i64 %xor83.i247, i64 54)
  %or.i211.i259 = tail call i64 @llvm.fshl.i64(i64 %xor83.i247, i64 %xor83.i247, i64 47)
  %38 = xor i64 %or.i208.i258, %or.i211.i259
  %xor133.i260 = xor i64 %38, %xor83.i247
  %or.i214.i261 = tail call i64 @llvm.fshl.i64(i64 %xor66.i244, i64 %xor66.i244, i64 57)
  %or.i217.i262 = tail call i64 @llvm.fshl.i64(i64 %xor66.i244, i64 %xor66.i244, i64 23)
  %39 = xor i64 %or.i214.i261, %or.i217.i262
  %xor145.i263 = xor i64 %39, %xor66.i244
  %xor.i265 = xor i64 %xor121.i257, 135
  %xor5.i267 = xor i64 %xor97.i251, %xor145.i263
  %xor10.i269 = xor i64 %xor133.i260, %xor145.i263
  %xor15.i271 = xor i64 %xor109.i254, %xor.i265
  %not.i272 = xor i64 %xor109.i254, -1
  %and.i273 = and i64 %xor.i265, %not.i272
  %xor22.i274 = xor i64 %and.i273, %xor5.i267
  %not29.i275 = xor i64 %xor15.i271, -1
  %and32.i276 = and i64 %xor133.i260, %not29.i275
  %xor33.i277 = xor i64 %and32.i276, %xor109.i254
  %not40.i278 = xor i64 %xor133.i260, -1
  %and43.i279 = and i64 %xor145.i263, %not40.i278
  %xor44.i280 = xor i64 %xor15.i271, %and43.i279
  %not51.i281 = xor i64 %xor10.i269, -1
  %and54.i282 = and i64 %xor5.i267, %not51.i281
  %xor55.i283 = xor i64 %and54.i282, %xor133.i260
  %not62.i284 = xor i64 %xor5.i267, -1
  %and65.i285 = and i64 %xor109.i254, %not62.i284
  %xor66.i286 = xor i64 %and65.i285, %xor10.i269
  %xor73.i287 = xor i64 %xor33.i277, %xor22.i274
  %xor78.i288 = xor i64 %xor22.i274, %xor66.i286
  %xor83.i289 = xor i64 %xor55.i283, %xor44.i280
  %not86.i290 = xor i64 %xor44.i280, -1
  %or.i.i291 = tail call i64 @llvm.fshl.i64(i64 %xor78.i288, i64 %xor78.i288, i64 45)
  %or.i193.i292 = tail call i64 @llvm.fshl.i64(i64 %xor78.i288, i64 %xor78.i288, i64 36)
  %40 = xor i64 %or.i.i291, %or.i193.i292
  %xor97.i293 = xor i64 %40, %xor78.i288
  %or.i196.i294 = tail call i64 @llvm.fshl.i64(i64 %xor73.i287, i64 %xor73.i287, i64 3)
  %or.i199.i295 = tail call i64 @llvm.fshl.i64(i64 %xor73.i287, i64 %xor73.i287, i64 25)
  %41 = xor i64 %or.i196.i294, %or.i199.i295
  %xor109.i296 = xor i64 %41, %xor73.i287
  %or.i202.i297 = tail call i64 @llvm.fshl.i64(i64 %not86.i290, i64 %not86.i290, i64 63)
  %or.i205.i298 = tail call i64 @llvm.fshl.i64(i64 %not86.i290, i64 %not86.i290, i64 58)
  %42 = xor i64 %or.i202.i297, %or.i205.i298
  %xor121.i299 = xor i64 %42, %not86.i290
  %or.i208.i300 = tail call i64 @llvm.fshl.i64(i64 %xor83.i289, i64 %xor83.i289, i64 54)
  %or.i211.i301 = tail call i64 @llvm.fshl.i64(i64 %xor83.i289, i64 %xor83.i289, i64 47)
  %43 = xor i64 %or.i208.i300, %or.i211.i301
  %xor133.i302 = xor i64 %43, %xor83.i289
  %or.i214.i303 = tail call i64 @llvm.fshl.i64(i64 %xor66.i286, i64 %xor66.i286, i64 57)
  %or.i217.i304 = tail call i64 @llvm.fshl.i64(i64 %xor66.i286, i64 %xor66.i286, i64 23)
  %44 = xor i64 %or.i214.i303, %or.i217.i304
  %xor145.i305 = xor i64 %44, %xor66.i286
  %xor.i307 = xor i64 %xor121.i299, 120
  %xor5.i309 = xor i64 %xor97.i293, %xor145.i305
  %xor10.i311 = xor i64 %xor133.i302, %xor145.i305
  %xor15.i313 = xor i64 %xor109.i296, %xor.i307
  %not.i314 = xor i64 %xor109.i296, -1
  %and.i315 = and i64 %xor.i307, %not.i314
  %xor22.i316 = xor i64 %and.i315, %xor5.i309
  %not29.i317 = xor i64 %xor15.i313, -1
  %and32.i318 = and i64 %xor133.i302, %not29.i317
  %xor33.i319 = xor i64 %and32.i318, %xor109.i296
  %not40.i320 = xor i64 %xor133.i302, -1
  %and43.i321 = and i64 %xor145.i305, %not40.i320
  %xor44.i322 = xor i64 %xor15.i313, %and43.i321
  %not51.i323 = xor i64 %xor10.i311, -1
  %and54.i324 = and i64 %xor5.i309, %not51.i323
  %xor55.i325 = xor i64 %and54.i324, %xor133.i302
  %not62.i326 = xor i64 %xor5.i309, -1
  %and65.i327 = and i64 %xor109.i296, %not62.i326
  %xor66.i328 = xor i64 %and65.i327, %xor10.i311
  %xor73.i329 = xor i64 %xor33.i319, %xor22.i316
  %xor78.i330 = xor i64 %xor22.i316, %xor66.i328
  %xor83.i331 = xor i64 %xor55.i325, %xor44.i322
  %not86.i332 = xor i64 %xor44.i322, -1
  %or.i.i333 = tail call i64 @llvm.fshl.i64(i64 %xor78.i330, i64 %xor78.i330, i64 45)
  %or.i193.i334 = tail call i64 @llvm.fshl.i64(i64 %xor78.i330, i64 %xor78.i330, i64 36)
  %45 = xor i64 %or.i.i333, %or.i193.i334
  %xor97.i335 = xor i64 %45, %xor78.i330
  %or.i196.i336 = tail call i64 @llvm.fshl.i64(i64 %xor73.i329, i64 %xor73.i329, i64 3)
  %or.i199.i337 = tail call i64 @llvm.fshl.i64(i64 %xor73.i329, i64 %xor73.i329, i64 25)
  %46 = xor i64 %or.i196.i336, %or.i199.i337
  %xor109.i338 = xor i64 %46, %xor73.i329
  %or.i202.i339 = tail call i64 @llvm.fshl.i64(i64 %not86.i332, i64 %not86.i332, i64 63)
  %or.i205.i340 = tail call i64 @llvm.fshl.i64(i64 %not86.i332, i64 %not86.i332, i64 58)
  %47 = xor i64 %or.i202.i339, %or.i205.i340
  %xor121.i341 = xor i64 %47, %not86.i332
  %or.i208.i342 = tail call i64 @llvm.fshl.i64(i64 %xor83.i331, i64 %xor83.i331, i64 54)
  %or.i211.i343 = tail call i64 @llvm.fshl.i64(i64 %xor83.i331, i64 %xor83.i331, i64 47)
  %48 = xor i64 %or.i208.i342, %or.i211.i343
  %xor133.i344 = xor i64 %48, %xor83.i331
  %or.i214.i345 = tail call i64 @llvm.fshl.i64(i64 %xor66.i328, i64 %xor66.i328, i64 57)
  %or.i217.i346 = tail call i64 @llvm.fshl.i64(i64 %xor66.i328, i64 %xor66.i328, i64 23)
  %49 = xor i64 %or.i214.i345, %or.i217.i346
  %xor145.i347 = xor i64 %49, %xor66.i328
  %xor.i349 = xor i64 %xor121.i341, 105
  %xor5.i351 = xor i64 %xor97.i335, %xor145.i347
  %xor10.i353 = xor i64 %xor133.i344, %xor145.i347
  %xor15.i355 = xor i64 %xor109.i338, %xor.i349
  %not.i356 = xor i64 %xor109.i338, -1
  %and.i357 = and i64 %xor.i349, %not.i356
  %xor22.i358 = xor i64 %and.i357, %xor5.i351
  %not29.i359 = xor i64 %xor15.i355, -1
  %and32.i360 = and i64 %xor133.i344, %not29.i359
  %xor33.i361 = xor i64 %and32.i360, %xor109.i338
  %not40.i362 = xor i64 %xor133.i344, -1
  %and43.i363 = and i64 %xor145.i347, %not40.i362
  %xor44.i364 = xor i64 %xor15.i355, %and43.i363
  %not51.i365 = xor i64 %xor10.i353, -1
  %and54.i366 = and i64 %xor5.i351, %not51.i365
  %xor55.i367 = xor i64 %and54.i366, %xor133.i344
  %not62.i368 = xor i64 %xor5.i351, -1
  %and65.i369 = and i64 %xor109.i338, %not62.i368
  %xor66.i370 = xor i64 %and65.i369, %xor10.i353
  %xor73.i371 = xor i64 %xor33.i361, %xor22.i358
  %xor78.i372 = xor i64 %xor22.i358, %xor66.i370
  %xor83.i373 = xor i64 %xor55.i367, %xor44.i364
  %not86.i374 = xor i64 %xor44.i364, -1
  %or.i.i375 = tail call i64 @llvm.fshl.i64(i64 %xor78.i372, i64 %xor78.i372, i64 45)
  %or.i193.i376 = tail call i64 @llvm.fshl.i64(i64 %xor78.i372, i64 %xor78.i372, i64 36)
  %50 = xor i64 %or.i.i375, %or.i193.i376
  %xor97.i377 = xor i64 %50, %xor78.i372
  %or.i196.i378 = tail call i64 @llvm.fshl.i64(i64 %xor73.i371, i64 %xor73.i371, i64 3)
  %or.i199.i379 = tail call i64 @llvm.fshl.i64(i64 %xor73.i371, i64 %xor73.i371, i64 25)
  %51 = xor i64 %or.i196.i378, %or.i199.i379
  %xor109.i380 = xor i64 %51, %xor73.i371
  %or.i202.i381 = tail call i64 @llvm.fshl.i64(i64 %not86.i374, i64 %not86.i374, i64 63)
  %or.i205.i382 = tail call i64 @llvm.fshl.i64(i64 %not86.i374, i64 %not86.i374, i64 58)
  %52 = xor i64 %or.i202.i381, %or.i205.i382
  %xor121.i383 = xor i64 %52, %not86.i374
  %or.i208.i384 = tail call i64 @llvm.fshl.i64(i64 %xor83.i373, i64 %xor83.i373, i64 54)
  %or.i211.i385 = tail call i64 @llvm.fshl.i64(i64 %xor83.i373, i64 %xor83.i373, i64 47)
  %53 = xor i64 %or.i208.i384, %or.i211.i385
  %xor133.i386 = xor i64 %53, %xor83.i373
  %or.i214.i387 = tail call i64 @llvm.fshl.i64(i64 %xor66.i370, i64 %xor66.i370, i64 57)
  %or.i217.i388 = tail call i64 @llvm.fshl.i64(i64 %xor66.i370, i64 %xor66.i370, i64 23)
  %54 = xor i64 %or.i214.i387, %or.i217.i388
  %xor145.i389 = xor i64 %54, %xor66.i370
  %xor.i391 = xor i64 %xor121.i383, 90
  %xor5.i393 = xor i64 %xor97.i377, %xor145.i389
  %xor10.i395 = xor i64 %xor133.i386, %xor145.i389
  %xor15.i397 = xor i64 %xor109.i380, %xor.i391
  %not.i398 = xor i64 %xor109.i380, -1
  %and.i399 = and i64 %xor.i391, %not.i398
  %xor22.i400 = xor i64 %and.i399, %xor5.i393
  %not29.i401 = xor i64 %xor15.i397, -1
  %and32.i402 = and i64 %xor133.i386, %not29.i401
  %xor33.i403 = xor i64 %and32.i402, %xor109.i380
  %not40.i404 = xor i64 %xor133.i386, -1
  %and43.i405 = and i64 %xor145.i389, %not40.i404
  %xor44.i406 = xor i64 %xor15.i397, %and43.i405
  %not51.i407 = xor i64 %xor10.i395, -1
  %and54.i408 = and i64 %xor5.i393, %not51.i407
  %xor55.i409 = xor i64 %and54.i408, %xor133.i386
  %not62.i410 = xor i64 %xor5.i393, -1
  %and65.i411 = and i64 %xor109.i380, %not62.i410
  %xor66.i412 = xor i64 %and65.i411, %xor10.i395
  %xor73.i413 = xor i64 %xor33.i403, %xor22.i400
  %xor78.i414 = xor i64 %xor22.i400, %xor66.i412
  %xor83.i415 = xor i64 %xor55.i409, %xor44.i406
  %not86.i416 = xor i64 %xor44.i406, -1
  %or.i.i417 = tail call i64 @llvm.fshl.i64(i64 %xor78.i414, i64 %xor78.i414, i64 45)
  %or.i193.i418 = tail call i64 @llvm.fshl.i64(i64 %xor78.i414, i64 %xor78.i414, i64 36)
  %55 = xor i64 %or.i.i417, %or.i193.i418
  %xor97.i419 = xor i64 %55, %xor78.i414
  %or.i196.i420 = tail call i64 @llvm.fshl.i64(i64 %xor73.i413, i64 %xor73.i413, i64 3)
  %or.i199.i421 = tail call i64 @llvm.fshl.i64(i64 %xor73.i413, i64 %xor73.i413, i64 25)
  %56 = xor i64 %or.i196.i420, %or.i199.i421
  %xor109.i422 = xor i64 %56, %xor73.i413
  %or.i202.i423 = tail call i64 @llvm.fshl.i64(i64 %not86.i416, i64 %not86.i416, i64 63)
  %or.i205.i424 = tail call i64 @llvm.fshl.i64(i64 %not86.i416, i64 %not86.i416, i64 58)
  %57 = xor i64 %or.i202.i423, %or.i205.i424
  %xor121.i425 = xor i64 %57, %not86.i416
  %or.i208.i426 = tail call i64 @llvm.fshl.i64(i64 %xor83.i415, i64 %xor83.i415, i64 54)
  %or.i211.i427 = tail call i64 @llvm.fshl.i64(i64 %xor83.i415, i64 %xor83.i415, i64 47)
  %58 = xor i64 %or.i208.i426, %or.i211.i427
  %xor133.i428 = xor i64 %58, %xor83.i415
  %or.i214.i429 = tail call i64 @llvm.fshl.i64(i64 %xor66.i412, i64 %xor66.i412, i64 57)
  %or.i217.i430 = tail call i64 @llvm.fshl.i64(i64 %xor66.i412, i64 %xor66.i412, i64 23)
  %59 = xor i64 %or.i214.i429, %or.i217.i430
  %xor145.i431 = xor i64 %59, %xor66.i412
  %xor.i433 = xor i64 %xor121.i425, 75
  %xor5.i435 = xor i64 %xor97.i419, %xor145.i431
  %xor10.i437 = xor i64 %xor133.i428, %xor145.i431
  %xor15.i439 = xor i64 %xor109.i422, %xor.i433
  %not.i440 = xor i64 %xor109.i422, -1
  %and.i441 = and i64 %xor.i433, %not.i440
  %xor22.i442 = xor i64 %and.i441, %xor5.i435
  %not29.i443 = xor i64 %xor15.i439, -1
  %and32.i444 = and i64 %xor133.i428, %not29.i443
  %xor33.i445 = xor i64 %and32.i444, %xor109.i422
  %not40.i446 = xor i64 %xor133.i428, -1
  %and43.i447 = and i64 %xor145.i431, %not40.i446
  %xor44.i448 = xor i64 %xor15.i439, %and43.i447
  %not51.i449 = xor i64 %xor10.i437, -1
  %and54.i450 = and i64 %xor5.i435, %not51.i449
  %xor55.i451 = xor i64 %and54.i450, %xor133.i428
  %not62.i452 = xor i64 %xor5.i435, -1
  %and65.i453 = and i64 %xor109.i422, %not62.i452
  %xor66.i454 = xor i64 %and65.i453, %xor10.i437
  %xor73.i455 = xor i64 %xor33.i445, %xor22.i442
  %xor78.i456 = xor i64 %xor22.i442, %xor66.i454
  %xor83.i457 = xor i64 %xor55.i451, %xor44.i448
  %not86.i458 = xor i64 %xor44.i448, -1
  %or.i.i459 = tail call i64 @llvm.fshl.i64(i64 %xor78.i456, i64 %xor78.i456, i64 45)
  %or.i193.i460 = tail call i64 @llvm.fshl.i64(i64 %xor78.i456, i64 %xor78.i456, i64 36)
  %60 = xor i64 %or.i.i459, %or.i193.i460
  %xor97.i461 = xor i64 %60, %xor78.i456
  store i64 %xor97.i461, ptr %s, align 8, !tbaa !7
  %or.i196.i462 = tail call i64 @llvm.fshl.i64(i64 %xor73.i455, i64 %xor73.i455, i64 3)
  %or.i199.i463 = tail call i64 @llvm.fshl.i64(i64 %xor73.i455, i64 %xor73.i455, i64 25)
  %61 = xor i64 %or.i196.i462, %or.i199.i463
  %xor109.i464 = xor i64 %61, %xor73.i455
  store i64 %xor109.i464, ptr %arrayidx12.i, align 8, !tbaa !7
  %or.i202.i465 = tail call i64 @llvm.fshl.i64(i64 %not86.i458, i64 %not86.i458, i64 63)
  %or.i205.i466 = tail call i64 @llvm.fshl.i64(i64 %not86.i458, i64 %not86.i458, i64 58)
  %62 = xor i64 %or.i202.i465, %or.i205.i466
  %xor121.i467 = xor i64 %62, %not86.i458
  store i64 %xor121.i467, ptr %arrayidx.i, align 8, !tbaa !7
  %or.i208.i468 = tail call i64 @llvm.fshl.i64(i64 %xor83.i457, i64 %xor83.i457, i64 54)
  %or.i211.i469 = tail call i64 @llvm.fshl.i64(i64 %xor83.i457, i64 %xor83.i457, i64 47)
  %63 = xor i64 %or.i208.i468, %or.i211.i469
  %xor133.i470 = xor i64 %63, %xor83.i457
  store i64 %xor133.i470, ptr %arrayidx7.i, align 8, !tbaa !7
  %or.i214.i471 = tail call i64 @llvm.fshl.i64(i64 %xor66.i454, i64 %xor66.i454, i64 57)
  %or.i217.i472 = tail call i64 @llvm.fshl.i64(i64 %xor66.i454, i64 %xor66.i454, i64 23)
  %64 = xor i64 %or.i214.i471, %or.i217.i472
  %xor145.i473 = xor i64 %64, %xor66.i454
  store i64 %xor145.i473, ptr %arrayidx2.i, align 8, !tbaa !7
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @P6(ptr nocapture noundef %s) unnamed_addr #2 {
entry:
  %arrayidx.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  %0 = load i64, ptr %arrayidx.i, align 8, !tbaa !7
  %xor.i = xor i64 %0, 150
  %arrayidx2.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  %1 = load i64, ptr %arrayidx2.i, align 8, !tbaa !7
  %2 = load i64, ptr %s, align 8, !tbaa !7
  %xor5.i = xor i64 %2, %1
  %arrayidx7.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  %3 = load i64, ptr %arrayidx7.i, align 8, !tbaa !7
  %xor10.i = xor i64 %3, %1
  %arrayidx12.i = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  %4 = load i64, ptr %arrayidx12.i, align 8, !tbaa !7
  %xor15.i = xor i64 %4, %xor.i
  %not.i = xor i64 %4, -1
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @crypto_aead_decrypt(ptr nocapture noundef writeonly %m, ptr nocapture noundef writeonly %mlen, ptr nocapture noundef readnone %nsec, ptr nocapture noundef readonly %c, i64 noundef %clen, ptr nocapture noundef readonly %ad, i64 noundef %adlen, ptr nocapture noundef readonly %npub, ptr nocapture noundef readonly %k) local_unnamed_addr #0 {
entry:
  %s = alloca %struct.ascon_state_t, align 8
  %cmp = icmp ult i64 %clen, 16
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add i64 %clen, -16
  store i64 %sub, ptr %mlen, align 8, !tbaa !7
  %0 = load i8, ptr %k, align 1, !tbaa !11
  %conv.i = zext i8 %0 to i64
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %k, i32 1
  %1 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !11
  %conv.i.1 = zext i8 %1 to i64
  %shl.i.1 = shl nuw nsw i64 %conv.i.1, 48
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %k, i32 2
  %2 = load i8, ptr %arrayidx.i.2, align 1, !tbaa !11
  %conv.i.2 = zext i8 %2 to i64
  %shl.i.2 = shl nuw nsw i64 %conv.i.2, 40
  %arrayidx.i.3 = getelementptr inbounds i8, ptr %k, i32 3
  %3 = load i8, ptr %arrayidx.i.3, align 1, !tbaa !11
  %conv.i.3 = zext i8 %3 to i64
  %shl.i.3 = shl nuw nsw i64 %conv.i.3, 32
  %arrayidx.i.4 = getelementptr inbounds i8, ptr %k, i32 4
  %4 = load i8, ptr %arrayidx.i.4, align 1, !tbaa !11
  %conv.i.4 = zext i8 %4 to i64
  %shl.i.4 = shl nuw nsw i64 %conv.i.4, 24
  %arrayidx.i.5 = getelementptr inbounds i8, ptr %k, i32 5
  %5 = load i8, ptr %arrayidx.i.5, align 1, !tbaa !11
  %conv.i.5 = zext i8 %5 to i64
  %shl.i.5 = shl nuw nsw i64 %conv.i.5, 16
  %arrayidx.i.6 = getelementptr inbounds i8, ptr %k, i32 6
  %6 = load i8, ptr %arrayidx.i.6, align 1, !tbaa !11
  %conv.i.6 = zext i8 %6 to i64
  %shl.i.6 = shl nuw nsw i64 %conv.i.6, 8
  %arrayidx.i.7 = getelementptr inbounds i8, ptr %k, i32 7
  %7 = load i8, ptr %arrayidx.i.7, align 1, !tbaa !11
  %conv.i.7 = zext i8 %7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %k, i32 8
  %8 = load i8, ptr %add.ptr, align 1, !tbaa !11
  %conv.i168 = zext i8 %8 to i64
  %arrayidx.i167.1 = getelementptr inbounds i8, ptr %k, i32 9
  %9 = load i8, ptr %arrayidx.i167.1, align 1, !tbaa !11
  %conv.i168.1 = zext i8 %9 to i64
  %shl.i172.1 = shl nuw nsw i64 %conv.i168.1, 48
  %arrayidx.i167.2 = getelementptr inbounds i8, ptr %k, i32 10
  %10 = load i8, ptr %arrayidx.i167.2, align 1, !tbaa !11
  %conv.i168.2 = zext i8 %10 to i64
  %shl.i172.2 = shl nuw nsw i64 %conv.i168.2, 40
  %arrayidx.i167.3 = getelementptr inbounds i8, ptr %k, i32 11
  %11 = load i8, ptr %arrayidx.i167.3, align 1, !tbaa !11
  %conv.i168.3 = zext i8 %11 to i64
  %shl.i172.3 = shl nuw nsw i64 %conv.i168.3, 32
  %arrayidx.i167.4 = getelementptr inbounds i8, ptr %k, i32 12
  %12 = load i8, ptr %arrayidx.i167.4, align 1, !tbaa !11
  %conv.i168.4 = zext i8 %12 to i64
  %shl.i172.4 = shl nuw nsw i64 %conv.i168.4, 24
  %arrayidx.i167.5 = getelementptr inbounds i8, ptr %k, i32 13
  %13 = load i8, ptr %arrayidx.i167.5, align 1, !tbaa !11
  %conv.i168.5 = zext i8 %13 to i64
  %shl.i172.5 = shl nuw nsw i64 %conv.i168.5, 16
  %arrayidx.i167.6 = getelementptr inbounds i8, ptr %k, i32 14
  %14 = load i8, ptr %arrayidx.i167.6, align 1, !tbaa !11
  %conv.i168.6 = zext i8 %14 to i64
  %shl.i172.6 = shl nuw nsw i64 %conv.i168.6, 8
  %arrayidx.i167.7 = getelementptr inbounds i8, ptr %k, i32 15
  %15 = load i8, ptr %arrayidx.i167.7, align 1, !tbaa !11
  %conv.i168.7 = zext i8 %15 to i64
  %shl.i = shl nuw i64 %conv.i, 56
  %or.i.1 = or i64 %shl.i.1, %shl.i
  %or.i.2 = or i64 %shl.i.2, %or.i.1
  %or.i.3 = or i64 %shl.i.3, %or.i.2
  %or.i.4 = or i64 %shl.i.4, %or.i.3
  %or.i.5 = or i64 %shl.i.5, %or.i.4
  %or.i.6 = or i64 %shl.i.6, %or.i.5
  %16 = load i8, ptr %npub, align 1, !tbaa !11
  %conv.i181 = zext i8 %16 to i64
  %arrayidx.i180.1 = getelementptr inbounds i8, ptr %npub, i32 1
  %17 = load i8, ptr %arrayidx.i180.1, align 1, !tbaa !11
  %conv.i181.1 = zext i8 %17 to i64
  %shl.i185.1 = shl nuw nsw i64 %conv.i181.1, 48
  %arrayidx.i180.2 = getelementptr inbounds i8, ptr %npub, i32 2
  %18 = load i8, ptr %arrayidx.i180.2, align 1, !tbaa !11
  %conv.i181.2 = zext i8 %18 to i64
  %shl.i185.2 = shl nuw nsw i64 %conv.i181.2, 40
  %arrayidx.i180.3 = getelementptr inbounds i8, ptr %npub, i32 3
  %19 = load i8, ptr %arrayidx.i180.3, align 1, !tbaa !11
  %conv.i181.3 = zext i8 %19 to i64
  %shl.i185.3 = shl nuw nsw i64 %conv.i181.3, 32
  %arrayidx.i180.4 = getelementptr inbounds i8, ptr %npub, i32 4
  %20 = load i8, ptr %arrayidx.i180.4, align 1, !tbaa !11
  %conv.i181.4 = zext i8 %20 to i64
  %shl.i185.4 = shl nuw nsw i64 %conv.i181.4, 24
  %arrayidx.i180.5 = getelementptr inbounds i8, ptr %npub, i32 5
  %21 = load i8, ptr %arrayidx.i180.5, align 1, !tbaa !11
  %conv.i181.5 = zext i8 %21 to i64
  %shl.i185.5 = shl nuw nsw i64 %conv.i181.5, 16
  %arrayidx.i180.6 = getelementptr inbounds i8, ptr %npub, i32 6
  %22 = load i8, ptr %arrayidx.i180.6, align 1, !tbaa !11
  %conv.i181.6 = zext i8 %22 to i64
  %shl.i185.6 = shl nuw nsw i64 %conv.i181.6, 8
  %arrayidx.i180.7 = getelementptr inbounds i8, ptr %npub, i32 7
  %23 = load i8, ptr %arrayidx.i180.7, align 1, !tbaa !11
  %conv.i181.7 = zext i8 %23 to i64
  %shl.i172 = shl nuw i64 %conv.i168, 56
  %or.i173.1 = or i64 %shl.i172.1, %shl.i172
  %or.i173.2 = or i64 %shl.i172.2, %or.i173.1
  %or.i173.3 = or i64 %shl.i172.3, %or.i173.2
  %or.i173.4 = or i64 %shl.i172.4, %or.i173.3
  %or.i173.5 = or i64 %shl.i172.5, %or.i173.4
  %or.i173.6 = or i64 %shl.i172.6, %or.i173.5
  %or.i173.7 = or i64 %or.i173.6, %conv.i168.7
  %add.ptr3 = getelementptr inbounds i8, ptr %npub, i32 8
  %24 = load i8, ptr %add.ptr3, align 1, !tbaa !11
  %conv.i194 = zext i8 %24 to i64
  %shl.i198 = shl nuw i64 %conv.i194, 56
  %arrayidx.i193.1 = getelementptr inbounds i8, ptr %npub, i32 9
  %25 = load i8, ptr %arrayidx.i193.1, align 1, !tbaa !11
  %conv.i194.1 = zext i8 %25 to i64
  %shl.i198.1 = shl nuw nsw i64 %conv.i194.1, 48
  %or.i199.1 = or i64 %shl.i198.1, %shl.i198
  %arrayidx.i193.2 = getelementptr inbounds i8, ptr %npub, i32 10
  %26 = load i8, ptr %arrayidx.i193.2, align 1, !tbaa !11
  %conv.i194.2 = zext i8 %26 to i64
  %shl.i198.2 = shl nuw nsw i64 %conv.i194.2, 40
  %or.i199.2 = or i64 %shl.i198.2, %or.i199.1
  %arrayidx.i193.3 = getelementptr inbounds i8, ptr %npub, i32 11
  %27 = load i8, ptr %arrayidx.i193.3, align 1, !tbaa !11
  %conv.i194.3 = zext i8 %27 to i64
  %shl.i198.3 = shl nuw nsw i64 %conv.i194.3, 32
  %or.i199.3 = or i64 %shl.i198.3, %or.i199.2
  %arrayidx.i193.4 = getelementptr inbounds i8, ptr %npub, i32 12
  %28 = load i8, ptr %arrayidx.i193.4, align 1, !tbaa !11
  %conv.i194.4 = zext i8 %28 to i64
  %shl.i198.4 = shl nuw nsw i64 %conv.i194.4, 24
  %or.i199.4 = or i64 %shl.i198.4, %or.i199.3
  %arrayidx.i193.5 = getelementptr inbounds i8, ptr %npub, i32 13
  %29 = load i8, ptr %arrayidx.i193.5, align 1, !tbaa !11
  %conv.i194.5 = zext i8 %29 to i64
  %shl.i198.5 = shl nuw nsw i64 %conv.i194.5, 16
  %or.i199.5 = or i64 %shl.i198.5, %or.i199.4
  %arrayidx.i193.6 = getelementptr inbounds i8, ptr %npub, i32 14
  %30 = load i8, ptr %arrayidx.i193.6, align 1, !tbaa !11
  %conv.i194.6 = zext i8 %30 to i64
  %shl.i198.6 = shl nuw nsw i64 %conv.i194.6, 8
  %or.i199.6 = or i64 %shl.i198.6, %or.i199.5
  %arrayidx.i193.7 = getelementptr inbounds i8, ptr %npub, i32 15
  %31 = load i8, ptr %arrayidx.i193.7, align 1, !tbaa !11
  %conv.i194.7 = zext i8 %31 to i64
  %or.i199.7 = or i64 %or.i199.6, %conv.i194.7
  %shl.i185 = shl nuw i64 %conv.i181, 56
  %or.i186.1 = or i64 %shl.i185.1, %shl.i185
  %or.i186.2 = or i64 %shl.i185.2, %or.i186.1
  %or.i186.3 = or i64 %shl.i185.3, %or.i186.2
  %or.i186.4 = or i64 %shl.i185.4, %or.i186.3
  %or.i186.5 = or i64 %shl.i185.5, %or.i186.4
  %or.i186.6 = or i64 %shl.i185.6, %or.i186.5
  %or.i186.7 = or i64 %or.i186.6, %conv.i181.7
  %or.i.7 = or i64 %or.i.6, %conv.i.7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %s) #4
  store i64 -9205344418435956736, ptr %s, align 8, !tbaa !7
  %arrayidx6 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 1
  store i64 %or.i.7, ptr %arrayidx6, align 8, !tbaa !7
  %arrayidx8 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 2
  store i64 %or.i173.7, ptr %arrayidx8, align 8, !tbaa !7
  %arrayidx10 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 3
  store i64 %or.i186.7, ptr %arrayidx10, align 8, !tbaa !7
  %arrayidx12 = getelementptr inbounds [5 x i64], ptr %s, i32 0, i32 4
  store i64 %or.i199.7, ptr %arrayidx12, align 8, !tbaa !7
  call fastcc void @P12(ptr noundef nonnull %s)
  %32 = load i64, ptr %arrayidx10, align 8, !tbaa !7
  %xor = xor i64 %32, %or.i.7
  store i64 %xor, ptr %arrayidx10, align 8, !tbaa !7
  %33 = load i64, ptr %arrayidx12, align 8, !tbaa !7
  %xor17 = xor i64 %33, %or.i173.7
  store i64 %xor17, ptr %arrayidx12, align 8, !tbaa !7
  %tobool.not = icmp eq i64 %adlen, 0
  br i1 %tobool.not, label %if.end43, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %cmp22314 = icmp ugt i64 %adlen, 7
  br i1 %cmp22314, label %for.body.i215.preheader, label %while.end

for.body.i215.preheader:                          ; preds = %while.cond.preheader, %for.body.i215.preheader
  %ad.addr.0316 = phi ptr [ %add.ptr30, %for.body.i215.preheader ], [ %ad, %while.cond.preheader ]
  %adlen.addr.0315 = phi i64 [ %sub31, %for.body.i215.preheader ], [ %adlen, %while.cond.preheader ]
  %34 = load i8, ptr %ad.addr.0316, align 1, !tbaa !11
  %conv.i207 = zext i8 %34 to i64
  %shl.i211 = shl nuw i64 %conv.i207, 56
  %arrayidx.i206.1 = getelementptr inbounds i8, ptr %ad.addr.0316, i32 1
  %35 = load i8, ptr %arrayidx.i206.1, align 1, !tbaa !11
  %conv.i207.1 = zext i8 %35 to i64
  %shl.i211.1 = shl nuw nsw i64 %conv.i207.1, 48
  %or.i212.1 = or i64 %shl.i211.1, %shl.i211
  %arrayidx.i206.2 = getelementptr inbounds i8, ptr %ad.addr.0316, i32 2
  %36 = load i8, ptr %arrayidx.i206.2, align 1, !tbaa !11
  %conv.i207.2 = zext i8 %36 to i64
  %shl.i211.2 = shl nuw nsw i64 %conv.i207.2, 40
  %or.i212.2 = or i64 %shl.i211.2, %or.i212.1
  %arrayidx.i206.3 = getelementptr inbounds i8, ptr %ad.addr.0316, i32 3
  %37 = load i8, ptr %arrayidx.i206.3, align 1, !tbaa !11
  %conv.i207.3 = zext i8 %37 to i64
  %shl.i211.3 = shl nuw nsw i64 %conv.i207.3, 32
  %or.i212.3 = or i64 %shl.i211.3, %or.i212.2
  %arrayidx.i206.4 = getelementptr inbounds i8, ptr %ad.addr.0316, i32 4
  %38 = load i8, ptr %arrayidx.i206.4, align 1, !tbaa !11
  %conv.i207.4 = zext i8 %38 to i64
  %shl.i211.4 = shl nuw nsw i64 %conv.i207.4, 24
  %or.i212.4 = or i64 %shl.i211.4, %or.i212.3
  %arrayidx.i206.5 = getelementptr inbounds i8, ptr %ad.addr.0316, i32 5
  %39 = load i8, ptr %arrayidx.i206.5, align 1, !tbaa !11
  %conv.i207.5 = zext i8 %39 to i64
  %shl.i211.5 = shl nuw nsw i64 %conv.i207.5, 16
  %or.i212.5 = or i64 %shl.i211.5, %or.i212.4
  %arrayidx.i206.6 = getelementptr inbounds i8, ptr %ad.addr.0316, i32 6
  %40 = load i8, ptr %arrayidx.i206.6, align 1, !tbaa !11
  %conv.i207.6 = zext i8 %40 to i64
  %shl.i211.6 = shl nuw nsw i64 %conv.i207.6, 8
  %or.i212.6 = or i64 %shl.i211.6, %or.i212.5
  %arrayidx.i206.7 = getelementptr inbounds i8, ptr %ad.addr.0316, i32 7
  %41 = load i8, ptr %arrayidx.i206.7, align 1, !tbaa !11
  %conv.i207.7 = zext i8 %41 to i64
  %or.i212.7 = or i64 %or.i212.6, %conv.i207.7
  %42 = load i64, ptr %s, align 8, !tbaa !7
  %xor26 = xor i64 %42, %or.i212.7
  store i64 %xor26, ptr %s, align 8, !tbaa !7
  call fastcc void @P6(ptr noundef nonnull %s)
  %add.ptr30 = getelementptr inbounds i8, ptr %ad.addr.0316, i32 8
  %sub31 = add i64 %adlen.addr.0315, -8
  %cmp22 = icmp ugt i64 %sub31, 7
  br i1 %cmp22, label %for.body.i215.preheader, label %while.end, !llvm.loop !17

while.end:                                        ; preds = %for.body.i215.preheader, %while.cond.preheader
  %adlen.addr.0.lcssa = phi i64 [ %adlen, %while.cond.preheader ], [ %sub31, %for.body.i215.preheader ]
  %ad.addr.0.lcssa = phi ptr [ %ad, %while.cond.preheader ], [ %add.ptr30, %for.body.i215.preheader ]
  %conv = trunc i64 %adlen.addr.0.lcssa to i32
  %cmp5.i.not = icmp eq i32 %conv, 0
  br i1 %cmp5.i.not, label %LOADBYTES.exit229, label %for.body.i228

for.body.i228:                                    ; preds = %while.end, %for.body.i228
  %x.07.i217 = phi i64 [ %or.i225, %for.body.i228 ], [ 0, %while.end ]
  %i.06.i218 = phi i32 [ %inc.i226, %for.body.i228 ], [ 0, %while.end ]
  %arrayidx.i219 = getelementptr inbounds i8, ptr %ad.addr.0.lcssa, i32 %i.06.i218
  %43 = load i8, ptr %arrayidx.i219, align 1, !tbaa !11
  %conv.i220 = zext i8 %43 to i64
  %mul.i221 = shl nsw i32 %i.06.i218, 3
  %sub.i222 = sub nsw i32 56, %mul.i221
  %sh_prom.i223 = zext i32 %sub.i222 to i64
  %shl.i224 = shl i64 %conv.i220, %sh_prom.i223
  %or.i225 = or i64 %shl.i224, %x.07.i217
  %inc.i226 = add nuw nsw i32 %i.06.i218, 1
  %exitcond.not.i227 = icmp eq i32 %inc.i226, %conv
  br i1 %exitcond.not.i227, label %LOADBYTES.exit229, label %for.body.i228, !llvm.loop !14

LOADBYTES.exit229:                                ; preds = %for.body.i228, %while.end
  %x.0.lcssa.i = phi i64 [ 0, %while.end ], [ %or.i225, %for.body.i228 ]
  %44 = load i64, ptr %s, align 8, !tbaa !7
  %mul = shl nuw nsw i64 %adlen.addr.0.lcssa, 3
  %sub36 = sub nuw nsw i64 56, %mul
  %shl = shl nuw i64 128, %sub36
  %xor35 = xor i64 %x.0.lcssa.i, %shl
  %xor39 = xor i64 %xor35, %44
  store i64 %xor39, ptr %s, align 8, !tbaa !7
  call fastcc void @P6(ptr noundef nonnull %s)
  %.pre = load i64, ptr %arrayidx12, align 8, !tbaa !7
  br label %if.end43

if.end43:                                         ; preds = %LOADBYTES.exit229, %if.end
  %45 = phi i64 [ %.pre, %LOADBYTES.exit229 ], [ %xor17, %if.end ]
  %xor46 = xor i64 %45, 1
  store i64 %xor46, ptr %arrayidx12, align 8, !tbaa !7
  %cmp52318 = icmp ugt i64 %sub, 7
  br i1 %cmp52318, label %for.body.i241.preheader, label %while.end67

for.body.i241.preheader:                          ; preds = %if.end43, %for.body.i241.preheader
  %m.addr.0321 = phi ptr [ %add.ptr64, %for.body.i241.preheader ], [ %m, %if.end43 ]
  %c.addr.0320 = phi ptr [ %add.ptr65, %for.body.i241.preheader ], [ %c, %if.end43 ]
  %clen.addr.0319 = phi i64 [ %sub66, %for.body.i241.preheader ], [ %sub, %if.end43 ]
  %46 = load i8, ptr %c.addr.0320, align 1, !tbaa !11
  %conv.i233 = zext i8 %46 to i64
  %shl.i237 = shl nuw i64 %conv.i233, 56
  %arrayidx.i232.1 = getelementptr inbounds i8, ptr %c.addr.0320, i32 1
  %47 = load i8, ptr %arrayidx.i232.1, align 1, !tbaa !11
  %conv.i233.1 = zext i8 %47 to i64
  %shl.i237.1 = shl nuw nsw i64 %conv.i233.1, 48
  %or.i238.1 = or i64 %shl.i237.1, %shl.i237
  %arrayidx.i232.2 = getelementptr inbounds i8, ptr %c.addr.0320, i32 2
  %48 = load i8, ptr %arrayidx.i232.2, align 1, !tbaa !11
  %conv.i233.2 = zext i8 %48 to i64
  %shl.i237.2 = shl nuw nsw i64 %conv.i233.2, 40
  %or.i238.2 = or i64 %shl.i237.2, %or.i238.1
  %arrayidx.i232.3 = getelementptr inbounds i8, ptr %c.addr.0320, i32 3
  %49 = load i8, ptr %arrayidx.i232.3, align 1, !tbaa !11
  %conv.i233.3 = zext i8 %49 to i64
  %shl.i237.3 = shl nuw nsw i64 %conv.i233.3, 32
  %or.i238.3 = or i64 %shl.i237.3, %or.i238.2
  %arrayidx.i232.4 = getelementptr inbounds i8, ptr %c.addr.0320, i32 4
  %50 = load i8, ptr %arrayidx.i232.4, align 1, !tbaa !11
  %conv.i233.4 = zext i8 %50 to i64
  %shl.i237.4 = shl nuw nsw i64 %conv.i233.4, 24
  %or.i238.4 = or i64 %shl.i237.4, %or.i238.3
  %arrayidx.i232.5 = getelementptr inbounds i8, ptr %c.addr.0320, i32 5
  %51 = load i8, ptr %arrayidx.i232.5, align 1, !tbaa !11
  %conv.i233.5 = zext i8 %51 to i64
  %shl.i237.5 = shl nuw nsw i64 %conv.i233.5, 16
  %or.i238.5 = or i64 %shl.i237.5, %or.i238.4
  %arrayidx.i232.6 = getelementptr inbounds i8, ptr %c.addr.0320, i32 6
  %52 = load i8, ptr %arrayidx.i232.6, align 1, !tbaa !11
  %conv.i233.6 = zext i8 %52 to i64
  %shl.i237.6 = shl nuw nsw i64 %conv.i233.6, 8
  %or.i238.6 = or i64 %shl.i237.6, %or.i238.5
  %arrayidx.i232.7 = getelementptr inbounds i8, ptr %c.addr.0320, i32 7
  %53 = load i8, ptr %arrayidx.i232.7, align 1, !tbaa !11
  %conv.i233.7 = zext i8 %53 to i64
  %or.i238.7 = or i64 %or.i238.6, %conv.i233.7
  %54 = load i64, ptr %s, align 8, !tbaa !7
  %xor58 = xor i64 %54, %or.i238.7
  %shr.i = lshr i64 %xor58, 56
  %conv.i247 = trunc i64 %shr.i to i8
  store i8 %conv.i247, ptr %m.addr.0321, align 1, !tbaa !11
  %shr.i.1 = lshr i64 %xor58, 48
  %conv.i247.1 = trunc i64 %shr.i.1 to i8
  %arrayidx.i248.1 = getelementptr inbounds i8, ptr %m.addr.0321, i32 1
  store i8 %conv.i247.1, ptr %arrayidx.i248.1, align 1, !tbaa !11
  %shr.i.2 = lshr i64 %xor58, 40
  %conv.i247.2 = trunc i64 %shr.i.2 to i8
  %arrayidx.i248.2 = getelementptr inbounds i8, ptr %m.addr.0321, i32 2
  store i8 %conv.i247.2, ptr %arrayidx.i248.2, align 1, !tbaa !11
  %shr.i.3 = lshr i64 %xor58, 32
  %conv.i247.3 = trunc i64 %shr.i.3 to i8
  %arrayidx.i248.3 = getelementptr inbounds i8, ptr %m.addr.0321, i32 3
  store i8 %conv.i247.3, ptr %arrayidx.i248.3, align 1, !tbaa !11
  %shr.i.4 = lshr i64 %xor58, 24
  %conv.i247.4 = trunc i64 %shr.i.4 to i8
  %arrayidx.i248.4 = getelementptr inbounds i8, ptr %m.addr.0321, i32 4
  store i8 %conv.i247.4, ptr %arrayidx.i248.4, align 1, !tbaa !11
  %shr.i.5 = lshr i64 %xor58, 16
  %conv.i247.5 = trunc i64 %shr.i.5 to i8
  %arrayidx.i248.5 = getelementptr inbounds i8, ptr %m.addr.0321, i32 5
  store i8 %conv.i247.5, ptr %arrayidx.i248.5, align 1, !tbaa !11
  %shr.i.6 = lshr i64 %xor58, 8
  %conv.i247.6 = trunc i64 %shr.i.6 to i8
  %arrayidx.i248.6 = getelementptr inbounds i8, ptr %m.addr.0321, i32 6
  store i8 %conv.i247.6, ptr %arrayidx.i248.6, align 1, !tbaa !11
  %conv.i247.7 = trunc i64 %xor58 to i8
  %arrayidx.i248.7 = getelementptr inbounds i8, ptr %m.addr.0321, i32 7
  store i8 %conv.i247.7, ptr %arrayidx.i248.7, align 1, !tbaa !11
  store i64 %or.i238.7, ptr %s, align 8, !tbaa !7
  call fastcc void @P6(ptr noundef nonnull %s)
  %add.ptr64 = getelementptr inbounds i8, ptr %m.addr.0321, i32 8
  %add.ptr65 = getelementptr inbounds i8, ptr %c.addr.0320, i32 8
  %sub66 = add i64 %clen.addr.0319, -8
  %cmp52 = icmp ugt i64 %sub66, 7
  br i1 %cmp52, label %for.body.i241.preheader, label %while.end67, !llvm.loop !18

while.end67:                                      ; preds = %for.body.i241.preheader, %if.end43
  %clen.addr.0.lcssa = phi i64 [ %sub, %if.end43 ], [ %sub66, %for.body.i241.preheader ]
  %c.addr.0.lcssa = phi ptr [ %c, %if.end43 ], [ %add.ptr65, %for.body.i241.preheader ]
  %m.addr.0.lcssa = phi ptr [ %m, %if.end43 ], [ %add.ptr64, %for.body.i241.preheader ]
  %conv69 = trunc i64 %clen.addr.0.lcssa to i32
  %cmp5.i252.not = icmp eq i32 %conv69, 0
  br i1 %cmp5.i252.not, label %LOADBYTES.exit266.thread, label %for.body.i264

LOADBYTES.exit266.thread:                         ; preds = %while.end67
  %55 = load i64, ptr %s, align 8, !tbaa !7
  br label %CLEARBYTES.exit

for.body.i264:                                    ; preds = %while.end67, %for.body.i264
  %x.07.i253 = phi i64 [ %or.i261, %for.body.i264 ], [ 0, %while.end67 ]
  %i.06.i254 = phi i32 [ %inc.i262, %for.body.i264 ], [ 0, %while.end67 ]
  %arrayidx.i255 = getelementptr inbounds i8, ptr %c.addr.0.lcssa, i32 %i.06.i254
  %56 = load i8, ptr %arrayidx.i255, align 1, !tbaa !11
  %conv.i256 = zext i8 %56 to i64
  %mul.i257 = shl nsw i32 %i.06.i254, 3
  %sub.i258 = sub nsw i32 56, %mul.i257
  %sh_prom.i259 = zext i32 %sub.i258 to i64
  %shl.i260 = shl i64 %conv.i256, %sh_prom.i259
  %or.i261 = or i64 %shl.i260, %x.07.i253
  %inc.i262 = add nuw nsw i32 %i.06.i254, 1
  %exitcond.not.i263 = icmp eq i32 %inc.i262, %conv69
  br i1 %exitcond.not.i263, label %for.body.i276.preheader, label %for.body.i264, !llvm.loop !14

for.body.i276.preheader:                          ; preds = %for.body.i264
  %57 = load i64, ptr %s, align 8, !tbaa !7
  %xor73 = xor i64 %57, %or.i261
  br label %for.body.i276

for.body.i276:                                    ; preds = %for.body.i276.preheader, %for.body.i276
  %i.05.i267 = phi i32 [ %inc.i274, %for.body.i276 ], [ 0, %for.body.i276.preheader ]
  %mul.i268 = shl nsw i32 %i.05.i267, 3
  %sub.i269 = sub nsw i32 56, %mul.i268
  %sh_prom.i270 = zext i32 %sub.i269 to i64
  %shr.i271 = lshr i64 %xor73, %sh_prom.i270
  %conv.i272 = trunc i64 %shr.i271 to i8
  %arrayidx.i273 = getelementptr inbounds i8, ptr %m.addr.0.lcssa, i32 %i.05.i267
  store i8 %conv.i272, ptr %arrayidx.i273, align 1, !tbaa !11
  %inc.i274 = add nuw nsw i32 %i.05.i267, 1
  %exitcond.not.i275 = icmp eq i32 %inc.i274, %conv69
  br i1 %exitcond.not.i275, label %for.body.i286, label %for.body.i276, !llvm.loop !16

for.body.i286:                                    ; preds = %for.body.i276, %for.body.i286
  %i.06.i279 = phi i32 [ %inc.i284, %for.body.i286 ], [ 0, %for.body.i276 ]
  %x.addr.05.i = phi i64 [ %and.i, %for.body.i286 ], [ %57, %for.body.i276 ]
  %mul.i280 = shl nsw i32 %i.06.i279, 3
  %sub.i281 = sub nsw i32 56, %mul.i280
  %sh_prom.i282 = zext i32 %sub.i281 to i64
  %shl.i283 = shl i64 255, %sh_prom.i282
  %not.i = xor i64 %shl.i283, -1
  %and.i = and i64 %x.addr.05.i, %not.i
  %inc.i284 = add nuw nsw i32 %i.06.i279, 1
  %exitcond.not.i285 = icmp eq i32 %inc.i284, %conv69
  br i1 %exitcond.not.i285, label %CLEARBYTES.exit, label %for.body.i286, !llvm.loop !19

CLEARBYTES.exit:                                  ; preds = %for.body.i286, %LOADBYTES.exit266.thread
  %x.0.lcssa.i265311313 = phi i64 [ 0, %LOADBYTES.exit266.thread ], [ %or.i261, %for.body.i286 ]
  %x.addr.0.lcssa.i = phi i64 [ %55, %LOADBYTES.exit266.thread ], [ %and.i, %for.body.i286 ]
  %or = or i64 %x.addr.0.lcssa.i, %x.0.lcssa.i265311313
  %mul83 = shl nuw nsw i64 %clen.addr.0.lcssa, 3
  %sub84 = sub nuw nsw i64 56, %mul83
  %shl85 = shl nuw i64 128, %sub84
  %xor88 = xor i64 %or, %shl85
  store i64 %xor88, ptr %s, align 8, !tbaa !7
  %58 = load i64, ptr %arrayidx6, align 8, !tbaa !7
  %xor95 = xor i64 %58, %or.i.7
  store i64 %xor95, ptr %arrayidx6, align 8, !tbaa !7
  %59 = load i64, ptr %arrayidx8, align 8, !tbaa !7
  %xor98 = xor i64 %59, %or.i173.7
  store i64 %xor98, ptr %arrayidx8, align 8, !tbaa !7
  call fastcc void @P12(ptr noundef nonnull %s)
  %60 = load i64, ptr %arrayidx10, align 8, !tbaa !7
  %xor104 = xor i64 %60, %or.i.7
  store i64 %xor104, ptr %arrayidx10, align 8, !tbaa !7
  %61 = load i64, ptr %arrayidx12, align 8, !tbaa !7
  %xor107 = xor i64 %61, %or.i173.7
  store i64 %xor107, ptr %arrayidx12, align 8, !tbaa !7
  %shr.i291 = lshr i64 %xor104, 56
  %conv.i292 = trunc i64 %shr.i291 to i8
  %shr.i291.1 = lshr i64 %xor104, 48
  %conv.i292.1 = trunc i64 %shr.i291.1 to i8
  %shr.i291.2 = lshr i64 %xor104, 40
  %conv.i292.2 = trunc i64 %shr.i291.2 to i8
  %shr.i291.3 = lshr i64 %xor104, 32
  %conv.i292.3 = trunc i64 %shr.i291.3 to i8
  %shr.i291.4 = lshr i64 %xor104, 24
  %conv.i292.4 = trunc i64 %shr.i291.4 to i8
  %shr.i291.5 = lshr i64 %xor104, 16
  %conv.i292.5 = trunc i64 %shr.i291.5 to i8
  %shr.i291.6 = lshr i64 %xor104, 8
  %conv.i292.6 = trunc i64 %shr.i291.6 to i8
  %conv.i292.7 = trunc i64 %xor104 to i8
  %shr.i302 = lshr i64 %xor107, 56
  %conv.i303 = trunc i64 %shr.i302 to i8
  %shr.i302.1 = lshr i64 %xor107, 48
  %conv.i303.1 = trunc i64 %shr.i302.1 to i8
  %shr.i302.2 = lshr i64 %xor107, 40
  %conv.i303.2 = trunc i64 %shr.i302.2 to i8
  %shr.i302.3 = lshr i64 %xor107, 32
  %conv.i303.3 = trunc i64 %shr.i302.3 to i8
  %shr.i302.4 = lshr i64 %xor107, 24
  %conv.i303.4 = trunc i64 %shr.i302.4 to i8
  %shr.i302.5 = lshr i64 %xor107, 16
  %conv.i303.5 = trunc i64 %shr.i302.5 to i8
  %shr.i302.6 = lshr i64 %xor107, 8
  %conv.i303.6 = trunc i64 %shr.i302.6 to i8
  %conv.i303.7 = trunc i64 %xor107 to i8
  %add.ptr89 = getelementptr inbounds i8, ptr %c.addr.0.lcssa, i32 %conv69
  %62 = load i8, ptr %add.ptr89, align 1, !tbaa !11
  %xor123164 = xor i8 %62, %conv.i292
  %arrayidx119.1 = getelementptr inbounds i8, ptr %add.ptr89, i32 1
  %63 = load i8, ptr %arrayidx119.1, align 1, !tbaa !11
  %xor123164.1 = xor i8 %63, %conv.i292.1
  %or124.1327 = or i8 %xor123164, %xor123164.1
  %arrayidx119.2 = getelementptr inbounds i8, ptr %add.ptr89, i32 2
  %64 = load i8, ptr %arrayidx119.2, align 1, !tbaa !11
  %xor123164.2 = xor i8 %64, %conv.i292.2
  %or124.2328 = or i8 %or124.1327, %xor123164.2
  %arrayidx119.3 = getelementptr inbounds i8, ptr %add.ptr89, i32 3
  %65 = load i8, ptr %arrayidx119.3, align 1, !tbaa !11
  %xor123164.3 = xor i8 %65, %conv.i292.3
  %or124.3329 = or i8 %or124.2328, %xor123164.3
  %arrayidx119.4 = getelementptr inbounds i8, ptr %add.ptr89, i32 4
  %66 = load i8, ptr %arrayidx119.4, align 1, !tbaa !11
  %xor123164.4 = xor i8 %66, %conv.i292.4
  %or124.4330 = or i8 %or124.3329, %xor123164.4
  %arrayidx119.5 = getelementptr inbounds i8, ptr %add.ptr89, i32 5
  %67 = load i8, ptr %arrayidx119.5, align 1, !tbaa !11
  %xor123164.5 = xor i8 %67, %conv.i292.5
  %or124.5331 = or i8 %or124.4330, %xor123164.5
  %arrayidx119.6 = getelementptr inbounds i8, ptr %add.ptr89, i32 6
  %68 = load i8, ptr %arrayidx119.6, align 1, !tbaa !11
  %xor123164.6 = xor i8 %68, %conv.i292.6
  %or124.6332 = or i8 %or124.5331, %xor123164.6
  %arrayidx119.7 = getelementptr inbounds i8, ptr %add.ptr89, i32 7
  %69 = load i8, ptr %arrayidx119.7, align 1, !tbaa !11
  %xor123164.7 = xor i8 %69, %conv.i292.7
  %or124.7333 = or i8 %or124.6332, %xor123164.7
  %arrayidx119.8 = getelementptr inbounds i8, ptr %add.ptr89, i32 8
  %70 = load i8, ptr %arrayidx119.8, align 1, !tbaa !11
  %xor123164.8 = xor i8 %70, %conv.i303
  %or124.8334 = or i8 %or124.7333, %xor123164.8
  %arrayidx119.9 = getelementptr inbounds i8, ptr %add.ptr89, i32 9
  %71 = load i8, ptr %arrayidx119.9, align 1, !tbaa !11
  %xor123164.9 = xor i8 %71, %conv.i303.1
  %or124.9335 = or i8 %or124.8334, %xor123164.9
  %arrayidx119.10 = getelementptr inbounds i8, ptr %add.ptr89, i32 10
  %72 = load i8, ptr %arrayidx119.10, align 1, !tbaa !11
  %xor123164.10 = xor i8 %72, %conv.i303.2
  %or124.10336 = or i8 %or124.9335, %xor123164.10
  %arrayidx119.11 = getelementptr inbounds i8, ptr %add.ptr89, i32 11
  %73 = load i8, ptr %arrayidx119.11, align 1, !tbaa !11
  %xor123164.11 = xor i8 %73, %conv.i303.3
  %or124.11337 = or i8 %or124.10336, %xor123164.11
  %arrayidx119.12 = getelementptr inbounds i8, ptr %add.ptr89, i32 12
  %74 = load i8, ptr %arrayidx119.12, align 1, !tbaa !11
  %xor123164.12 = xor i8 %74, %conv.i303.4
  %or124.12338 = or i8 %or124.11337, %xor123164.12
  %arrayidx119.13 = getelementptr inbounds i8, ptr %add.ptr89, i32 13
  %75 = load i8, ptr %arrayidx119.13, align 1, !tbaa !11
  %xor123164.13 = xor i8 %75, %conv.i303.5
  %or124.13339 = or i8 %or124.12338, %xor123164.13
  %arrayidx119.14 = getelementptr inbounds i8, ptr %add.ptr89, i32 14
  %76 = load i8, ptr %arrayidx119.14, align 1, !tbaa !11
  %xor123164.14 = xor i8 %76, %conv.i303.6
  %or124.14340 = or i8 %or124.13339, %xor123164.14
  %arrayidx119.15 = getelementptr inbounds i8, ptr %add.ptr89, i32 15
  %77 = load i8, ptr %arrayidx119.15, align 1, !tbaa !11
  %xor123164.15 = xor i8 %77, %conv.i303.7
  %or124.15341 = or i8 %or124.14340, %xor123164.15
  %or124.15 = zext i8 %or124.15341 to i32
  %sub125 = add nuw nsw i32 %or124.15, 511
  %shr163 = lshr i32 %sub125, 8
  %and = and i32 %shr163, 1
  %sub126 = add nsw i32 %and, -1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %s) #4
  br label %return

return:                                           ; preds = %entry, %CLEARBYTES.exit
  %retval.0 = phi i32 [ %sub126, %CLEARBYTES.exit ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nofree nosync nounwind willreturn memory(argmem: readwrite) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv32" "target-features"="+32bit,+a,+c,+m,+relax,+zbb,-d,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-f,-h,-save-restore,-svinval,-svnapot,-svpbmt,-v,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zba,-zbc,-zbkb,-zbkc,-zbkx,-zbs,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicsr,-zifencei,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zve32f,-zve32x,-zve64d,-zve64f,-zve64x,-zvl1024b,-zvl128b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl32b,-zvl4096b,-zvl512b,-zvl64b,-zvl65536b,-zvl8192b" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"ilp32"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 8, !"SmallDataLimit", i32 8}
!6 = !{!"clang version 17.0.0 (git@github.com:Eymay/llvm-project.git 988fc65a2c68e73f871ac55958d286a4e12dabdf)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
