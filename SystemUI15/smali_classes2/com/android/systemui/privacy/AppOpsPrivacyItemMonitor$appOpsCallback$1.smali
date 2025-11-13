.class public final Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/appops/AppOpsController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveStateChanged(Ljava/lang/String;IIZ)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$appOpsCallback$1;->this$0:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;

    iget-object v0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->Companion:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_MIC_CAMERA:[I

    invoke-static {p2, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->micCameraAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->OPS_LOCATION:[I

    invoke-static {p2, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->locationAvailable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_4
    :goto_0
    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->Companion:Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->USER_INDEPENDENT_OPS:[I

    invoke-static {p2, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUpdatedItemFromAppOps(Ljava/lang/String;IIZ)V

    invoke-virtual {p0}, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor;->dispatchOnPrivacyItemsChanged()V

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method
