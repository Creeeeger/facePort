.class public final Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase$OpenParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCacheSize:I

.field private greylist-max-o mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private greylist-max-o mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private blacklist mIdleConnectionShrinkTimeout:J

.field private greylist-max-o mIdleConnectionTimeout:J

.field private greylist-max-o mJournalMode:Ljava/lang/String;

.field private greylist-max-o mLookasideSlotCount:I

.field private greylist-max-o mLookasideSlotSize:I

.field private greylist-max-o mOpenFlags:I

.field private greylist-max-o mSyncMode:Ljava/lang/String;

.field private blacklist mUserDataRecovery:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 3703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3691
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 3692
    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 3693
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    .line 3694
    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionShrinkTimeout:J

    .line 3704
    return-void
.end method

.method public constructor whitelist <init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V
    .locals 2
    .param p1, "params"    # Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    .line 3706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3691
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 3692
    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 3693
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    .line 3694
    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionShrinkTimeout:J

    .line 3707
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 3708
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmLookasideSlotCount(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 3709
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmIdleConnectionTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    .line 3710
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmIdleConnectionShrinkTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionShrinkTimeout:J

    .line 3711
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmOpenFlags(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 3712
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCursorFactory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 3713
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmErrorHandler(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 3714
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmJournalMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mJournalMode:Ljava/lang/String;

    .line 3715
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmSyncMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mSyncMode:Ljava/lang/String;

    .line 3716
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmCacheSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I

    move-result v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCacheSize:I

    .line 3717
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->-$$Nest$fgetmUserDataRecovery(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mUserDataRecovery:Z

    .line 3718
    return-void
.end method


# virtual methods
.method public whitelist addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 1
    .param p1, "openFlags"    # I

    .line 3781
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 3782
    return-object p0
.end method

.method public whitelist build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .locals 17

    .line 3967
    move-object/from16 v0, p0

    new-instance v16, Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    iget v2, v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    iget-object v3, v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v4, v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    iget v5, v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    iget v6, v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    iget-wide v7, v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    iget-wide v9, v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionShrinkTimeout:J

    iget-object v11, v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mJournalMode:Ljava/lang/String;

    iget-object v12, v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mSyncMode:Ljava/lang/String;

    iget v13, v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCacheSize:I

    iget-boolean v14, v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mUserDataRecovery:Z

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;-><init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZLandroid/database/sqlite/SQLiteDatabase$OpenParams-IA;)V

    return-object v16
.end method

.method public greylist-max-o isWriteAheadLoggingEnabled()Z
    .locals 2

    .line 3754
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 2
    .param p1, "openFlags"    # I

    .line 3793
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 3794
    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 3795
    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 3797
    :cond_0
    return-object p0
.end method

.method public whitelist semSetCacheSize(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 3
    .param p1, "cacheSizeByte"    # I

    .line 3907
    if-ltz p1, :cond_0

    const/high16 v0, 0x800000

    if-gt p1, v0, :cond_0

    .line 3911
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultPageSize()I

    move-result v0

    div-int v0, p1, v0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCacheSize:I

    .line 3912
    return-object p0

    .line 3908
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The cache size should not be negative value. Also, it should be less than soft heap size (8M). Now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist semSetIdleConnectionShrinkTimeout(J)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 2
    .param p1, "idleConnectionShrinkTimeoutMs"    # J

    .line 3948
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "idle connection shrink timeout cannot be negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3950
    iput-wide p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionShrinkTimeout:J

    .line 3951
    return-object p0
.end method

.method public whitelist semSetSeparateCacheModeEnabled(Z)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .line 3926
    const/16 v0, 0x1000

    if-eqz p1, :cond_0

    .line 3927
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    goto :goto_0

    .line 3929
    :cond_0
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 3931
    :goto_0
    return-object p0
.end method

.method public whitelist setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 0
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 3822
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 3823
    return-object p0
.end method

.method public whitelist setErrorHandler(Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 0
    .param p1, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .line 3832
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 3833
    return-object p0
.end method

.method public whitelist setIdleConnectionTimeout(J)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 2
    .param p1, "idleConnectionTimeoutMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3863
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "idle connection timeout cannot be negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3865
    iput-wide p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mIdleConnectionTimeout:J

    .line 3866
    return-object p0
.end method

.method public whitelist setJournalMode(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 0
    .param p1, "journalMode"    # Ljava/lang/String;

    .line 3878
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3879
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mJournalMode:Ljava/lang/String;

    .line 3880
    return-object p0
.end method

.method public whitelist setLookasideConfig(II)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 5
    .param p1, "slotSize"    # I
    .param p2, "slotCount"    # I

    .line 3736
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "lookasideSlotCount cannot be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3738
    if-ltz p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "lookasideSlotSize cannot be negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3740
    if-lez p1, :cond_2

    if-gtz p2, :cond_3

    :cond_2
    if-nez p2, :cond_4

    if-nez p1, :cond_4

    :cond_3
    move v2, v0

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3742
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    .line 3740
    const-string v0, "Invalid configuration: %d, %d"

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3744
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotSize:I

    .line 3745
    iput p2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mLookasideSlotCount:I

    .line 3746
    return-object p0
.end method

.method public whitelist setOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 0
    .param p1, "openFlags"    # I

    .line 3769
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mOpenFlags:I

    .line 3770
    return-object p0
.end method

.method public whitelist setSynchronousMode(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 0
    .param p1, "syncMode"    # Ljava/lang/String;

    .line 3891
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3892
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mSyncMode:Ljava/lang/String;

    .line 3893
    return-object p0
.end method

.method public blacklist setUserDataRecoveryEnabled(Z)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 3957
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->mUserDataRecovery:Z

    .line 3958
    return-object p0
.end method

.method public greylist-max-o setWriteAheadLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3806
    const/high16 v0, 0x20000000

    if-eqz p1, :cond_0

    .line 3807
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    goto :goto_0

    .line 3809
    :cond_0
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->removeOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    .line 3811
    :goto_0
    return-void
.end method
