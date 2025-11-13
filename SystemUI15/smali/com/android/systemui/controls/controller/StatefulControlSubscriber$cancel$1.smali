.class public final Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    iget-boolean v1, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscriptionOpen:Z

    iget-object v0, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscription:Landroid/service/controls/IControlsSubscription;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancel subscriptionOpen = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subscription = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatefulControlSubscriber"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    iget-boolean v1, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscriptionOpen:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscriptionOpen:Z

    iget-object v1, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscription:Landroid/service/controls/IControlsSubscription;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->cancelSubscription(Landroid/service/controls/IControlsSubscription;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscription:Landroid/service/controls/IControlsSubscription;

    :cond_1
    return-void
.end method
