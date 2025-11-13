.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;
.super Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final list:Ljava/util/List;

.field public final subscriber:Landroid/service/controls/IControlsSubscriber;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/service/controls/IControlsSubscriber;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->list:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->subscriber:Landroid/service/controls/IControlsSubscriber;

    return-void
.end method


# virtual methods
.method public final callWrapper$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->list:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "subscribe "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->list:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;->subscriber:Landroid/service/controls/IControlsSubscriber;

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    invoke-interface {v0, v2, p0}, Landroid/service/controls/IControlsProvider;->subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ServiceWrapper"

    const-string v2, "Caught exception from ControlsProviderService"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v1
.end method
