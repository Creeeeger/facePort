.class public final Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyItemMonitor;


# static fields
.field public static final Companion:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;

.field public static final OPS:[I

.field public static final OPS_LOCATION:[I

.field public static final OPS_MIC_CAMERA:[I

.field public static final USER_INDEPENDENT_OPS:[I


# instance fields
.field public final appOpsCallback:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;

.field public final appOpsController:Lcom/android/systemui/appops/AppOpsController;

.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public callback:Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;

.field public final configCallback:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;

.field public listening:Z

.field public locationAvailable:Z

.field public final lock:Ljava/lang/Object;

.field public final logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public micCameraAvailable:Z

.field public final privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->Companion:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;

    const/16 v0, 0x64

    const/16 v1, 0x65

    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_MIC_CAMERA:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    filled-new-array {v5, v4}, [I

    move-result-object v4

    sput-object v4, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_LOCATION:[I

    const/16 v6, 0x9

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    const/4 v6, 0x2

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v3, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS:[I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->USER_INDEPENDENT_OPS:[I

    return-void

    :array_0
    .array-data 4
        0x1a
        0x65
        0x1b
        0x64
        0x78
        0x79
        0x88
    .end array-data
.end method

.method public constructor <init>(Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/privacy/PrivacyConfig;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/privacy/logging/PrivacyLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    iput-object p2, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iput-object p4, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p5, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    iget-boolean p1, p3, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    iput-boolean p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z

    iget-boolean p1, p3, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    iput-boolean p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z

    new-instance p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;-><init>(Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->appOpsCallback:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;

    new-instance p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$userTrackerCallback$1;-><init>(Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance p1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;-><init>(Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->configCallback:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$configCallback$1;

    invoke-virtual {p3, p1}, Lcom/android/systemui/privacy/PrivacyConfig;->addCallback(Lcom/android/systemui/privacy/PrivacyConfig$Callback;)V

    return-void
.end method

.method public static synthetic getUserTrackerCallback$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final dispatchOnPrivacyItemsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;-><init>(Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string p2, "Callback: "

    const-string v0, "locationAvailable: "

    const-string v1, "micCameraAvailable: "

    const-string v2, "Listening: "

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    const-string v3, "AppOpsPrivacyItemMonitor:"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v4, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->listening:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3

    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current user ids: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0
.end method

.method public final onCurrentProfilesChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logCurrentProfilesChanged(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->dispatchOnPrivacyItemsChanged()V

    return-void
.end method

.method public final setListeningStateLocked()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->callback:Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->listening:Z

    if-ne v2, v0, :cond_2

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->listening:Z

    iget-object v2, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v3, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->appOpsCallback:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;

    sget-object v4, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS:[I

    iget-object v5, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    if-eqz v0, :cond_3

    check-cast v5, Lcom/android/systemui/appops/AppOpsControllerImpl;

    invoke-virtual {v5, v4, v3}, Lcom/android/systemui/appops/AppOpsControllerImpl;->addCallback([ILcom/android/systemui/appops/AppOpsController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->onCurrentProfilesChanged()V

    goto :goto_2

    :cond_3
    check-cast v5, Lcom/android/systemui/appops/AppOpsControllerImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, v4

    move v6, v1

    :goto_1
    if-ge v6, v0, :cond_5

    iget-object v7, v5, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    aget v8, v4, v6

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v5, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacksByCode:Landroid/util/SparseArray;

    aget v8, v4, v6

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, v5, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v5, Lcom/android/systemui/appops/AppOpsControllerImpl;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5, v1}, Lcom/android/systemui/appops/AppOpsControllerImpl;->setListening(Z)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTrackerCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2, p0}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    :goto_2
    return-void
.end method

.method public final toPrivacyItemLocked(Lcom/android/systemui/appops/AppOpItem;)Lcom/android/systemui/privacy/PrivacyItem;
    .locals 10

    iget v0, p1, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_LOCATION:[I

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_MIC_CAMERA:[I

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    iget p0, p1, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq p0, v1, :cond_4

    const/16 v1, 0x1b

    if-eq p0, v1, :cond_3

    const/16 v1, 0x64

    if-eq p0, v1, :cond_3

    const/16 v1, 0x65

    if-eq p0, v1, :cond_4

    const/16 v1, 0x78

    if-eq p0, v1, :cond_3

    const/16 v1, 0x79

    if-eq p0, v1, :cond_3

    const/16 v1, 0x88

    if-eq p0, v1, :cond_3

    return-object v0

    :cond_3
    sget-object p0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    :goto_1
    move-object v1, p0

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_1

    :goto_2
    new-instance v2, Lcom/android/systemui/privacy/PrivacyApplication;

    iget-object p0, p1, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    iget v0, p1, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/privacy/PrivacyApplication;-><init>(Ljava/lang/String;I)V

    new-instance p0, Lcom/android/systemui/privacy/PrivacyItem;

    iget-boolean v5, p1, Lcom/android/systemui/appops/AppOpItem;->mIsDisabled:Z

    iget-wide v3, p1, Lcom/android/systemui/appops/AppOpItem;->mTimeStartedElapsed:J

    const-wide/16 v6, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/privacy/PrivacyItem;-><init>(Lcom/android/systemui/privacy/PrivacyType;Lcom/android/systemui/privacy/PrivacyApplication;JZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
