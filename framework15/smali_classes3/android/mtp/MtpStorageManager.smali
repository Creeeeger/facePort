.class public Landroid/mtp/MtpStorageManager;
.super Ljava/lang/Object;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpStorageManager$MtpNotifier;,
        Landroid/mtp/MtpStorageManager$MtpObject;,
        Landroid/mtp/MtpStorageManager$MtpObjectObserver;,
        Landroid/mtp/MtpStorageManager$MtpOperation;,
        Landroid/mtp/MtpStorageManager$MtpObjectState;
    }
.end annotation


# static fields
.field private static final greylist-max-o IN_IGNORED:I = 0x8000

.field private static final greylist-max-o IN_ISDIR:I = 0x40000000

.field private static final greylist-max-o IN_ONLYDIR:I = 0x1000000

.field private static final greylist-max-o IN_Q_OVERFLOW:I = 0x4000

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private volatile greylist-max-o mCheckConsistency:Z

.field private greylist-max-o mConsistencyThread:Ljava/lang/Thread;

.field private greylist-max-o mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

.field private greylist-max-o mNextObjectId:I

.field private greylist-max-o mNextStorageId:I

.field private greylist-max-o mObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSubdirectories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$UnbKBGmLOBDQA2Y79rPJULPQTU8(Landroid/mtp/MtpStorageManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleAddedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleChangedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpStorageManager;->handleChangedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRemovedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->handleRemovedObject(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msDebugLog(Landroid/mtp/MtpStorageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msDebugLog(Landroid/mtp/MtpStorageManager;Ljava/lang/String;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/nio/file/Path;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/mtp/MtpStorageManager$MtpNotifier;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/mtp/MtpStorageManager$MtpNotifier;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    iput-object p2, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput v0, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/mtp/MtpStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/mtp/MtpStorageManager$$ExternalSyntheticLambda0;-><init>(Landroid/mtp/MtpStorageManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private declared-synchronized greylist-max-o addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_3
    new-instance v6, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextObjectId()I

    move-result v2

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fgetmStorage(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorage;

    move-result-object v3

    move-object v0, v6

    move-object v1, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    move-object v0, v6

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextObjectId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetId(Landroid/mtp/MtpStorageManager$MtpObject;I)V

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-direct {p0, v1, p2}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-direct {p0, v1, p2}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    monitor-exit p0

    return v1

    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    if-eqz p2, :cond_3

    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    :goto_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized greylist-max-o generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .locals 7

    monitor-enter p0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v5

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v5, v6, :cond_2

    invoke-direct {p0, v4, p2, p3}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    move v0, v5

    :cond_2
    goto :goto_0

    :cond_3
    if-nez p2, :cond_5

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v3

    :goto_3
    invoke-direct {p0, p1, p2, v1}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    move v2, v3

    :cond_6
    move v0, v2

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    monitor-exit p0

    return v1

    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    if-nez p2, :cond_3

    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_3
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_2

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :cond_3
    :goto_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized greylist-max-o generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p3, v2}, Landroid/mtp/MtpStorageManager;->generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v2

    invoke-direct {p0, p2, p3, p3}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist getChildren(Landroid/mtp/MtpStorageManager$MtpObject;Z)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            "Z)",
            "Ljava/util/Collection<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    :try_start_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "Observer is not null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Landroid/mtp/MtpStorageManager$MtpObjectObserver;

    invoke-direct {v2, p0, p1}, Landroid/mtp/MtpStorageManager$MtpObjectObserver;-><init>(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    :try_start_3
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    nop

    const/4 v2, 0x1

    :try_start_4
    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetVisited(Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isSkipObserving()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    :try_start_5
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v2

    :try_start_7
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-object v0

    :cond_6
    :goto_2
    :try_start_8
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit p0

    return-object v0

    :cond_7
    :goto_3
    :try_start_9
    sget-object v1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find children of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_8

    const-string/jumbo v3, "null"

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o getNextObjectId()I
    .locals 5

    iget v0, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    iget v1, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    return v0
.end method

.method private greylist-max-o getNextStorageId()I
    .locals 2

    iget v0, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    return v0
.end method

.method private declared-synchronized blacklist getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZZ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            "IZZ)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p5}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;Z)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    if-eqz p3, :cond_1

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v3

    if-ne v3, p3, :cond_2

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-eqz p4, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v6}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p1

    move v7, p3

    move v9, p5

    invoke-direct/range {v4 .. v9}, Landroid/mtp/MtpStorageManager;->getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZZ)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v1, v3

    :cond_4
    goto :goto_1

    :cond_5
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v2

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v3

    move-object v0, v3

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v3

    if-eq v3, p3, :cond_0

    sget-object v3, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-eq v2, v3, :cond_0

    const-string v3, "Inconsistent directory info! "

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/nio/file/Path;)V

    :cond_0
    invoke-static {v1, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetDir(Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    sget-object v3, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    goto :goto_1

    :pswitch_1
    sget-object v3, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_1

    :pswitch_2
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected state in add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transitioned to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in op "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_a

    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectAdded(I)V

    :goto_2
    if-eqz p3, :cond_9

    sget-object v2, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v0, v2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v0, v2, :cond_3

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "Observer is not null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    new-instance v2, Landroid/mtp/MtpStorageManager$MtpObjectObserver;

    invoke-direct {v2, p0, v1}, Landroid/mtp/MtpStorageManager$MtpObjectObserver;-><init>(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetVisited(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    const-string v6, "Manually handling event for "

    invoke-interface {v5}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v7

    invoke-interface {v7}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    :try_start_7
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_6
    goto :goto_5

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_7

    :try_start_8
    invoke-interface {v3}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v5

    :try_start_9
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catch_0
    move-exception v3

    :try_start_a
    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/FileObserver;->stopWatching()V

    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    :goto_5
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->isSkipObserving()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_9
    monitor-exit p0

    return-void

    :cond_a
    :try_start_b
    const-string/jumbo v2, "object alraeady exists"

    invoke-direct {p0, v2, p2}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized blacklist handleChangedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v2

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v3

    move-object v0, v3

    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectInfoChanged(I)V

    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendObjectInfoChanged: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "object is null"

    invoke-direct {p0, v2, p2}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o handleRemovedObject(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string v2, "Got unexpected object remove for"

    goto :goto_1

    :pswitch_1
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-direct {p0, p1, v3, v4}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    goto :goto_2

    :pswitch_2
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    goto :goto_2

    :pswitch_3
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p1, v3, v3}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transitioned to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in op "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized greylist-max-o isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private synthetic blacklist lambda$new$0()V
    .locals 2

    nop

    :goto_0
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3a98

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager;->checkConsistency()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v1, "Cache is consistent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v1, "Cache is not consistent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    return-void

    :cond_1
    return-void
.end method

.method private declared-synchronized greylist-max-o removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fgetmChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    const-string v3, "Failed to remove from parent "

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/nio/file/Path;)V

    :cond_2
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    move v0, v3

    goto :goto_4

    :cond_4
    if-eqz p2, :cond_6

    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    move v0, v3

    :cond_6
    :goto_4
    if-nez v0, :cond_7

    const-string v3, "Failed to remove from global cache "

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/nio/file/Path;)V

    :cond_7
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    :cond_8
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz p3, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-direct {p0, v5, p2, v2}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_9

    if-eqz v0, :cond_9

    move v6, v2

    goto :goto_6

    :cond_9
    move v6, v1

    :goto_6
    move v0, v6

    goto :goto_5

    :cond_a
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist sDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private blacklist sDebugLog(Ljava/lang/String;Ljava/nio/file/Path;)V
    .locals 4

    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist addMtpStorage(Landroid/os/storage/StorageVolume;Ljava/util/function/Supplier;)Landroid/mtp/MtpStorage;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/storage/StorageVolume;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/mtp/MtpStorage;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "emulated;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x5f

    if-lt v1, v2, :cond_0

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/mtp/MtpStorage;

    const v3, 0x10002

    invoke-direct {v2, p1, v3, p2}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;ILjava/util/function/Supplier;)V

    new-instance v10, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v2}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v6, 0x10002

    move-object v4, v10

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    move-object v4, v10

    iget-object v5, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v1

    const v2, 0x10001

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextStorageId()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v1, v2, 0x1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    new-instance v1, Landroid/mtp/MtpStorage;

    invoke-direct {v1, p1, v7, p2}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;ILjava/util/function/Supplier;)V

    move-object v8, v1

    new-instance v9, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v8}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v9

    move v3, v7

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    move-object v1, v9

    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "beginCopyObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, p2, v1}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;Z)Ljava/util/Collection;

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit p0

    return v2

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v3

    invoke-static {p1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {v3, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-direct {p0, v3, v1}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    monitor-exit p0

    return v2

    :cond_3
    :try_start_4
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "beginMoveObject"

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/nio/file/Path;)V

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p2, v0}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;Z)Ljava/util/Collection;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v3

    if-eq v2, v3, :cond_4

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {p2, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    sget-object v3, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-direct {p0, p1, v3}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    nop

    :goto_0
    monitor-exit p0

    return v1

    :cond_4
    :try_start_4
    invoke-static {p1, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-direct {p0, v0, p1}, Landroid/mtp/MtpStorageManager;->generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "beginRemoveObject"

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-direct {p0, p1, v0}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "beginRenameObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    invoke-static {p1, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-direct {p0, v0, p1}, Landroid/mtp/MtpStorageManager;->generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;I)I
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "beginSendObject"

    invoke-direct {p0, v0, p2}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, v0}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;Z)Ljava/util/Collection;

    const/16 v2, 0x3001

    if-ne p3, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    :try_start_3
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->ADD:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o checkConsistency()Z
    .locals 11

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mexists(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object doesn\'t exist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    sget-object v5, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-eq v4, v5, :cond_1

    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_1
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v4

    sget-object v5, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-eq v4, v5, :cond_2

    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_3

    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not in map correctly"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    iget-object v5, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v6

    invoke-virtual {v6}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_4

    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Root parent is not in root mapping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    iget-object v5, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v6

    invoke-virtual {v6}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_5

    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parent is not in object mapping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    if-eq v4, v3, :cond_6

    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child does not exist in parent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_6
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v4

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_1
    if-ne v4, v5, :cond_9

    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, ""

    goto :goto_2

    :cond_8
    const-string/jumbo v6, "not "

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " visited but observer is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_9
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_a

    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not visited but has children"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    :cond_a
    :try_start_1
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/Path;

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v8

    if-nez v8, :cond_c

    iget-object v8, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v8, :cond_b

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-interface {v7}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_b
    sget-object v8, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File exists in fs but not in children "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_c
    invoke-interface {v7}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_3

    :cond_d
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    sget-object v8, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File in children doesn\'t exist in fs "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_e
    iget-object v8, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_f

    sget-object v8, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Child is not in object map "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :cond_f
    goto :goto_4

    :cond_10
    if-eqz v4, :cond_11

    :try_start_3
    invoke-interface {v4}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_11
    goto :goto_6

    :catchall_0
    move-exception v5

    if-eqz v4, :cond_12

    :try_start_4
    invoke-interface {v4}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v6

    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    :goto_5
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v4

    :try_start_6
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v1, 0x0

    :cond_13
    :goto_6
    goto/16 :goto_0

    :cond_14
    monitor-exit p0

    return v1

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    :cond_2
    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o dump()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    invoke-virtual {v5}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_0
    const-string/jumbo v5, "null"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "dir"

    goto :goto_2

    :cond_1
    const-string/jumbo v5, "obj"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "v"

    goto :goto_3

    :cond_2
    const-string/jumbo v5, "nv"

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    goto/16 :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o endCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCopyObject "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/mtp/MtpStorageManager;->sDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o endMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endMoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v3

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v4

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, v0, p4}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, p4, v4}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    move v2, v4

    :cond_1
    monitor-exit p0

    return v2

    :cond_2
    if-nez p4, :cond_3

    move-object v2, v0

    :try_start_1
    invoke-static {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v3

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    move-object v0, v1

    invoke-static {v0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {v0, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    move-object v1, v2

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    :cond_3
    invoke-direct {p0, v0, v1, p4}, Landroid/mtp/MtpStorageManager;->generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_4
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endRemoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v5

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpOperation;->DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v5, v6, :cond_1

    invoke-virtual {p0, v4, p2}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    move v0, v5

    :cond_1
    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, v3}, Landroid/mtp/MtpStorageManager;->generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o endRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endRenameObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    if-nez p3, :cond_0

    move-object v2, v1

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v3

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    move-object v1, p1

    invoke-static {v1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    move-object p1, v2

    invoke-static {v0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    :cond_0
    invoke-direct {p0, v1, p1, p3}, Landroid/mtp/MtpStorageManager;->generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o endSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endSendObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o flushEvents()V
    .locals 2

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public declared-synchronized greylist-max-o getByPath(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;Z)Ljava/util/Collection;

    :cond_4
    invoke-static {v0, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    :cond_6
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :goto_0
    :try_start_2
    sget-object v1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t get root storages with getObject()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getObjects(IIIZ)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)",
            "Ljava/util/List<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    move-object v12, p0

    move/from16 v0, p1

    move/from16 v13, p3

    monitor-enter p0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v5, v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v14, 0x0

    if-ne v13, v3, :cond_4

    if-nez v0, :cond_4

    iget-object v3, v12, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/mtp/MtpStorageManager$MtpObject;

    move-object v1, p0

    move/from16 v4, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/mtp/MtpStorageManager;->getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v8, v1

    goto :goto_1

    :cond_2
    if-eqz v8, :cond_3

    move-object v14, v2

    :cond_3
    monitor-exit p0

    return-object v14

    :cond_4
    if-nez v0, :cond_5

    :try_start_1
    invoke-virtual {p0, v13}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-nez v3, :cond_6

    monitor-exit p0

    return-object v14

    :cond_6
    move-object v6, p0

    move-object v7, v2

    move-object v8, v3

    move/from16 v9, p2

    move v10, v5

    move/from16 v11, p4

    :try_start_2
    invoke-direct/range {v6 .. v11}, Landroid/mtp/MtpStorageManager;->getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZZ)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v4

    if-eqz v1, :cond_7

    move-object v14, v2

    :cond_7
    monitor-exit p0

    return-object v14

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist-max-o getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method public declared-synchronized greylist-max-o removeMtpStorage(Landroid/mtp/MtpStorage;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o setSubdirectories(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
