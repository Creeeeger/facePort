.class public final Landroid/database/sqlite/SQLiteDatabase$OpenParams;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCacheSize:I

.field private final greylist-max-o mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final greylist-max-o mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final blacklist mIdleConnectionShrinkTimeout:J

.field private final greylist-max-o mIdleConnectionTimeout:J

.field private final greylist-max-o mJournalMode:Ljava/lang/String;

.field private final greylist-max-o mLookasideSlotCount:I

.field private final greylist-max-o mLookasideSlotSize:I

.field private final greylist-max-o mOpenFlags:I

.field private final greylist-max-o mSyncMode:Ljava/lang/String;

.field private final blacklist mUserDataRecovery:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCacheSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCacheSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorFactory(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmErrorHandler(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Landroid/database/DatabaseErrorHandler;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleConnectionShrinkTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J
    .locals 2

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionShrinkTimeout:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleConnectionTimeout(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)J
    .locals 2

    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJournalMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLookasideSlotCount(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLookasideSlotSize(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpenFlags(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)I
    .locals 0

    iget p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncMode(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserDataRecovery(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mUserDataRecovery:Z

    return p0
.end method

.method private constructor blacklist <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "openFlags"    # I
    .param p2, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p4, "lookasideSlotSize"    # I
    .param p5, "lookasideSlotCount"    # I
    .param p6, "idleConnectionTimeout"    # J
    .param p8, "idleConnectionShrinkTimeout"    # J
    .param p10, "journalMode"    # Ljava/lang/String;
    .param p11, "syncMode"    # Ljava/lang/String;
    .param p12, "cacheSize"    # I
    .param p13, "userDataRecovery"    # Z

    .line 3575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3576
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 3577
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 3578
    iput p4, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    .line 3579
    iput p5, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    .line 3580
    iput-wide p6, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    .line 3581
    iput-wide p8, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionShrinkTimeout:J

    .line 3582
    iput-object p10, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    .line 3583
    iput-object p11, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    .line 3584
    iput p12, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCacheSize:I

    .line 3585
    iput-boolean p13, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mUserDataRecovery:Z

    .line 3586
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 3587
    and-int/lit16 v0, p1, -0x401

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    goto :goto_0

    .line 3588
    :cond_0
    if-eqz p10, :cond_1

    const-string v0, "WAL"

    invoke-virtual {p10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3589
    or-int/lit16 v0, p1, 0x400

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    goto :goto_0

    .line 3591
    :cond_1
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    .line 3593
    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZLandroid/database/sqlite/SQLiteDatabase$OpenParams-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Landroid/database/sqlite/SQLiteDatabase$OpenParams;-><init>(ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;IIJJLjava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public whitelist getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1

    .line 3634
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object v0
.end method

.method public whitelist getErrorHandler()Landroid/database/DatabaseErrorHandler;
    .locals 1

    .line 3644
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    return-object v0
.end method

.method public whitelist getIdleConnectionTimeout()J
    .locals 2

    .line 3655
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mIdleConnectionTimeout:J

    return-wide v0
.end method

.method public whitelist getJournalMode()Ljava/lang/String;
    .locals 1

    .line 3664
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mJournalMode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLookasideSlotCount()I
    .locals 1

    .line 3613
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotCount:I

    return v0
.end method

.method public whitelist getLookasideSlotSize()I
    .locals 1

    .line 3602
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mLookasideSlotSize:I

    return v0
.end method

.method public whitelist getOpenFlags()I
    .locals 1

    .line 3623
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mOpenFlags:I

    return v0
.end method

.method public whitelist getSynchronousMode()Ljava/lang/String;
    .locals 1

    .line 3674
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$OpenParams;->mSyncMode:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o toBuilder()Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;
    .locals 1

    .line 3684
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    return-object v0
.end method
