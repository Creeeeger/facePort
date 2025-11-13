.class public final Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

.field public final synthetic val$item:Lcom/android/systemui/appops/AppOpItem;


# direct methods
.method public constructor <init>(Lcom/android/systemui/appops/AppOpsControllerImpl$H;Lcom/android/systemui/appops/AppOpItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;->this$1:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    iput-object p2, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;->val$item:Lcom/android/systemui/appops/AppOpItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;->this$1:Lcom/android/systemui/appops/AppOpsControllerImpl$H;

    iget-object v1, v0, Lcom/android/systemui/appops/AppOpsControllerImpl$H;->this$0:Lcom/android/systemui/appops/AppOpsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/appops/AppOpsControllerImpl$H$1;->val$item:Lcom/android/systemui/appops/AppOpItem;

    iget v2, p0, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    iget v4, p0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    iget-object v5, p0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/appops/AppOpItem;->mAttributionTag:Ljava/lang/String;

    iget-object p0, v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    invoke-static {v0, v2, v4, v5}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v3, v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->mNotedItems:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    iget-object p0, v1, Lcom/android/systemui/appops/AppOpsControllerImpl;->mActiveItems:Ljava/util/List;

    invoke-static {p0, v2, v4, v5}, Lcom/android/systemui/appops/AppOpsControllerImpl;->getAppOpItemLocked(Ljava/util/List;IILjava/lang/String;)Lcom/android/systemui/appops/AppOpItem;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_2

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/appops/AppOpsControllerImpl;->notifySuscribersWorker(IZILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
