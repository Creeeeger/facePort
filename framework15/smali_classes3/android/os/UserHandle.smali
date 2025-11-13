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

.field public static final blacklist MAX_SECONDARY_USER_ID:I = 0x53e1

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

.field public static final whitelist SEM_USER_CURRENT:I = -0x2

.field public static final whitelist SEM_USER_NULL:I = -0x2710

.field public static final whitelist SEM_USER_OWNER:I = 0x0

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

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    new-instance v0, Landroid/os/UserHandle;

    const/16 v1, -0x2710

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->NULL:Landroid/os/UserHandle;

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/os/UserHandle;

    sput-object v0, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    new-instance v2, Landroid/os/UserHandle;

    add-int/lit8 v3, v0, 0xa

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/UserHandle$1;

    invoke-direct {v0}, Landroid/os/UserHandle$1;-><init>()V

    sput-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sput-object v0, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    sput-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    sput-object v0, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor greylist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/UserHandle;->mHandle:I

    return-void
.end method

.method public static whitelist formatUid(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-p formatUid(Ljava/io/PrintWriter;I)V
    .locals 3

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x182b8

    if-le v1, v0, :cond_1

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(C)V

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_1
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const v0, 0x15f90

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_2
    if-lt v1, v0, :cond_3

    const/16 v0, 0x61

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit16 v0, v1, -0x2710

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    :goto_0
    return-void
.end method

.method public static greylist-max-o formatUid(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x75

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x182b8

    if-le v1, v0, :cond_1

    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "ai"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x15f90

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-lt v1, v0, :cond_3

    const/16 v0, 0x61

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit16 v0, v1, -0x2710

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static whitelist getAppId(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static greylist getAppIdFromSharedAppGid(I)I
    .locals 2

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    const v1, 0xc350

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public static greylist-max-o getCacheAppGid(I)I
    .locals 2

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

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_0

    add-int/lit16 v0, p1, -0x2710

    add-int/lit16 v0, v0, 0x4e20

    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist-max-o getCallingAppId()I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static greylist getCallingUserId()I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getSharedAppGid(I)I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

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

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/16 v1, 0x4e1f

    if-gt p1, v1, :cond_0

    add-int/lit16 v0, p1, -0x2710

    const v1, 0xc350

    add-int/2addr v0, v1

    return v0

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    return p1

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static greylist getUid(II)I
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0x186a0

    mul-int v1, p0, v0

    rem-int v0, p1, v0

    add-int/2addr v1, v0

    return v1

    :cond_0
    return p1
.end method

.method public static greylist-max-o getUserGid(I)I
    .locals 1

    const/16 v0, 0x270d

    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public static whitelist getUserHandleForUid(I)Landroid/os/UserHandle;
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getUserHandleFromExtraCache(I)Landroid/os/UserHandle;
    .locals 5

    sget-object v0, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    sget-object v2, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    sget-object v2, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    sget-object v3, Landroid/os/UserHandle;->sExtraUserHandleCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist getUserId(I)I
    .locals 1

    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method private static final greylist hidden_myUserId()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public static greylist isApp(I)Z
    .locals 3

    const/4 v0, 0x0

    if-lez p0, :cond_1

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_0

    const/16 v2, 0x4e1f

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static greylist-max-o isCore(I)Z
    .locals 3

    const/4 v0, 0x0

    if-ltz p0, :cond_1

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static greylist isIsolated(I)Z
    .locals 1

    if-lez p0, :cond_0

    invoke-static {p0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist isSameApp(II)Z
    .locals 2

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

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist of(I)Landroid/os/UserHandle;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-nez p0, :cond_0

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    return-object v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    sget-object v1, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    array-length v1, v1

    add-int/2addr v1, v0

    if-ge p0, v1, :cond_1

    sget-object v0, Landroid/os/UserHandle;->CACHED_USER_HANDLES:[Landroid/os/UserHandle;

    add-int/lit8 v1, p0, -0xa

    aget-object v0, v0, v1

    return-object v0

    :pswitch_0
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    return-object v0

    :pswitch_1
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object v0

    :pswitch_2
    sget-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    return-object v0

    :cond_1
    const/16 v0, -0x2710

    if-ne p0, v0, :cond_2

    sget-object v0, Landroid/os/UserHandle;->NULL:Landroid/os/UserHandle;

    return-object v0

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

    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_1

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

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

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

    :cond_2
    :goto_0
    const/4 v0, -0x2

    :goto_1
    return v0
.end method

.method public static whitelist readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

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

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public static final whitelist semGetMyUserId()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public static final whitelist semGetUserId(I)I
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist semOf(I)Landroid/os/UserHandle;
    .locals 1

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toUserHandles([I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static whitelist writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/16 v0, -0x2710

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/UserHandle;

    iget v2, p0, Landroid/os/UserHandle;->mHandle:I

    iget v3, v0, Landroid/os/UserHandle;->mHandle:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public whitelist getIdentifier()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public whitelist getUid(I)I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    return v0
.end method

.method public whitelist isOwner()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isSystem()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist semGetIdentifier()I
    .locals 1

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

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

    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
