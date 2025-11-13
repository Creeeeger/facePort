.class public final Landroid/os/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r AID_APP_END:I = 0x4e1f

.field public static final greylist-max-r AID_APP_START:I = 0x2710

.field public static final greylist-max-r AID_CACHE_GID_START:I = 0x4e20

.field public static final greylist-max-r AID_ROOT:I = 0x0

.field public static final greylist-max-r AID_SHARED_GID_START:I = 0xc350

.field public static final whitelist ALL:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist CACHED_USER_HANDLES:[Landroid/os/UserHandle;

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist CURRENT:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist CURRENT_OR_SELF:Landroid/os/UserHandle;

.field public static final greylist-max-r ERR_GID:I = -0x1

.field public static final blacklist MAX_EXTRA_USER_HANDLE_CACHE_SIZE:I = 0x20

.field public static final blacklist MIN_SECONDARY_USER_ID:I = 0xa

.field public static final greylist MU_ENABLED:Z = true

.field private static final blacklist NULL:Landroid/os/UserHandle;

.field private static final blacklist NUM_CACHED_USERS:I = 0x8

.field public static final greylist OWNER:Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist PER_USER_RANGE:I = 0x186a0

.field public static final whitelist SEM_ALL:Landroid/os/UserHandle;

.field public static final whitelist SEM_CURRENT:Landroid/os/UserHandle;

.field public static final whitelist SEM_OWNER:Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SEM_USER_CURRENT:I = -0x2

.field public static final whitelist SEM_USER_NULL:I = -0x2710

.field public static final whitelist SEM_USER_OWNER:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SYSTEM:Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist USER_ALL:I = -0x1

.field public static final greylist USER_CURRENT:I = -0x2

.field public static final greylist USER_CURRENT_OR_SELF:I = -0x3

.field public static final greylist USER_NULL:I = -0x2710

.field public static final greylist USER_OWNER:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-r USER_SERIAL_SYSTEM:I

.field public static final greylist USER_SYSTEM:I

.field public static final blacklist sExtraUserHandleCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist mHandle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 63
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 75
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 82
    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, -0x2710

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->NULL:Landroid/os/UserHandle;

    .line 100
    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 113
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 141
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/os/UserHandle;

    sput-object v0, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    .line 151
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 166
    new-instance v2, Landroid/os/UserHandle;

    add-int/lit8 v3, v0, 0xa

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    aput-object v2, v1, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/os/UserHandle$1;

    invoke-direct {v0}, Landroid/os/UserHandle$1;-><init>()V

    sput-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 734
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sput-object v0, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    .line 751
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    sput-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    .line 763
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    sput-object v0, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor greylist <init>(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    .line 618
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/UserHandle;->mHandle:I

    .line 727
    return-void
.end method

.method public static whitelist formatUid(I)Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-p formatUid(Ljava/io/PrintWriter;I)V
    .locals 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I

    .line 522
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 523
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    .line 525
    :cond_0
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 526
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 527
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 528
    .local v1, "appId":I
    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    const v0, 0x182b8

    if-le v1, v0, :cond_1

    .line 530
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 531
    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    .line 533
    :cond_1
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    const v0, 0x15f90

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    .line 536
    :cond_2
    if-lt v1, v0, :cond_3

    .line 537
    const/16 v0, 0x61

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 538
    add-int/lit16 v0, v1, -0x2710

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    .line 540
    :cond_3
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 541
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 544
    .end local v1    # "appId":I
    :goto_0
    return-void
.end method

.method public static greylist-max-o formatUid(Ljava/lang/StringBuilder;I)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "uid"    # I

    .line 475
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 476
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 478
    :cond_0
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 481
    .local v1, "appId":I
    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 482
    const v0, 0x182b8

    if-le v1, v0, :cond_1

    .line 483
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 486
    :cond_1
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const v0, 0x15f90

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 489
    :cond_2
    if-lt v1, v0, :cond_3

    .line 490
    const/16 v0, 0x61

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    add-int/lit16 v0, v1, -0x2710

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 493
    :cond_3
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    .end local v1    # "appId":I
    :goto_0
    return-void
.end method

.method public static blacklist fromUserHandles(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)[I"
        }
    .end annotation

    .line 320
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 321
    .local v0, "userIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 322
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    aput v2, v0, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static whitelist getAppId(I)I
    .locals 1
    .param p0, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 414
    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static greylist getAppIdFromSharedAppGid(I)I
    .locals 2
    .param p0, "gid"    # I

    .line 447
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    const v1, 0xc350

    sub-int/2addr v0, v1

    .line 449
    .local v0, "appId":I
    if-ltz v0, :cond_1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    return v0

    .line 450
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public static greylist-max-o getCacheAppGid(I)I
    .locals 2
    .param p0, "uid"    # I

    .line 457
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getCacheAppGid(II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getCacheAppGid(II)I
    .locals 1
    .param p0, "userId"    # I
    .param p1, "appId"    # I

    .line 462
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_0

    .line 463
    add-int/lit16 v0, p1, -0x2710

    add-int/lit16 v0, v0, 0x4e20

    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0

    .line 465
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist-max-o getCallingAppId()I
    .locals 1

    .line 314
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static greylist getCallingUserId()I
    .locals 1

    .line 301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getSharedAppGid(I)I
    .locals 2
    .param p0, "uid"    # I

    .line 427
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getSharedAppGid(II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getSharedAppGid(II)I
    .locals 2
    .param p0, "userId"    # I
    .param p1, "appId"    # I

    .line 432
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/16 v1, 0x4e1f

    if-gt p1, v1, :cond_0

    .line 433
    add-int/lit16 v0, p1, -0x2710

    const v1, 0xc350

    add-int/2addr v0, v1

    return v0

    .line 434
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 435
    return p1

    .line 437
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist getUid(II)I
    .locals 2
    .param p0, "userId"    # I
    .param p1, "appId"    # I

    .line 390
    const v0, 0x186a0

    mul-int v1, p0, v0

    rem-int v0, p1, v0

    add-int/2addr v1, v0

    return v1
.end method

.method public static greylist-max-o getUserGid(I)I
    .locals 1
    .param p0, "userId"    # I

    .line 422
    const/16 v0, 0x270d

    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public static whitelist getUserHandleForUid(I)Landroid/os/UserHandle;
    .locals 1
    .param p0, "uid"    # I

    .line 271
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserHandleFromExtraCache(I)Landroid/os/UserHandle;
    .locals 4
    .param p0, "userId"    # I

    .line 367
    sget-object v0, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 368
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 369
    .local v1, "extraCached":Landroid/os/UserHandle;
    if-eqz v1, :cond_0

    .line 370
    monitor-exit v0

    return-object v1

    .line 372
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    .line 373
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 374
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 373
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 376
    :cond_1
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 377
    .local v2, "newHandle":Landroid/os/UserHandle;
    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    monitor-exit v0

    return-object v2

    .line 379
    .end local v1    # "extraCached":Landroid/os/UserHandle;
    .end local v2    # "newHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist getUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    .line 282
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method private static final greylist hidden_myUserId()I
    .locals 1

    .line 578
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public static greylist isApp(I)Z
    .locals 3
    .param p0, "uid"    # I

    .line 236
    const/4 v0, 0x0

    if-lez p0, :cond_1

    .line 237
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 238
    .local v1, "appId":I
    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    const/16 v2, 0x4e1f

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 240
    .end local v1    # "appId":I
    :cond_1
    return v0
.end method

.method public static greylist-max-o isCore(I)Z
    .locals 3
    .param p0, "uid"    # I

    .line 249
    const/4 v0, 0x0

    if-ltz p0, :cond_1

    .line 250
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 251
    .local v1, "appId":I
    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 253
    .end local v1    # "appId":I
    :cond_1
    return v0
.end method

.method public static greylist isIsolated(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 221
    if-lez p0, :cond_0

    .line 222
    invoke-static {p0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isSameApp(II)Z
    .locals 2
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .line 212
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isSameUser(II)Z
    .locals 2
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .line 199
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isSharedAppGid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 262
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist myUserId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 570
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist of(I)Landroid/os/UserHandle;
    .locals 3
    .param p0, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 340
    if-nez p0, :cond_0

    .line 341
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    return-object v0

    .line 344
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 354
    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    sget-object v1, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p0, v2, :cond_1

    .line 356
    add-int/lit8 v0, p0, -0xa

    aget-object v0, v1, v0

    return-object v0

    .line 346
    :pswitch_0
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    return-object v0

    .line 349
    :pswitch_1
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object v0

    .line 352
    :pswitch_2
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    return-object v0

    .line 358
    :cond_1
    const/16 v0, -0x2710

    if-ne p0, v0, :cond_2

    .line 359
    sget-object v0, Landroid/os/UserHandle;->NULL:Landroid/os/UserHandle;

    return-object v0

    .line 361
    :cond_2
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleFromExtraCache(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o parseUserArg(Ljava/lang/String;)I
    .locals 4
    .param p0, "arg"    # Ljava/lang/String;

    .line 549
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const/4 v0, -0x1

    .local v0, "userId":I
    goto :goto_1

    .line 551
    .end local v0    # "userId":I
    :cond_0
    const-string v0, "current"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cur"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 555
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .restart local v0    # "userId":I
    goto :goto_1

    .line 556
    .end local v0    # "userId":I
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad user number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    const/4 v0, -0x2

    .line 560
    .local v0, "userId":I
    :goto_1
    return v0
.end method

.method public static whitelist readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 698
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 699
    .local v0, "h":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static final whitelist semGetCallingUserId()I
    .locals 1

    .line 309
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public static final whitelist semGetMyUserId()I
    .locals 1

    .line 588
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public static final whitelist semGetUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    .line 295
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist semOf(I)Landroid/os/UserHandle;
    .locals 1
    .param p0, "userId"    # I

    .line 743
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toUserHandles([I)Ljava/util/List;
    .locals 3
    .param p0, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 332
    aget v2, p0, v1

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static whitelist writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "h"    # Landroid/os/UserHandle;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 679
    if-eqz p0, :cond_0

    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 682
    :cond_0
    const/16 v0, -0x2710

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 647
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 648
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/os/UserHandle;

    .line 649
    .local v1, "other":Landroid/os/UserHandle;
    iget v2, p0, Landroid/os/UserHandle;->mHandle:I

    iget v3, v1, Landroid/os/UserHandle;->mHandle:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 651
    .end local v1    # "other":Landroid/os/UserHandle;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 652
    :cond_1
    nop

    .line 653
    :goto_0
    return v0
.end method

.method public whitelist getIdentifier()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 626
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public whitelist getUid(I)I
    .locals 1
    .param p1, "appId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 405
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 658
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public whitelist isOwner()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isSystem()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 611
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist semGetIdentifier()I
    .locals 1

    .line 636
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 666
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    return-void
.end method
