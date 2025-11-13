.class public final Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAODShowAction$1$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $callback:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;Lcom/android/systemui/volume/util/BroadcastReceiverManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/volume/util/BroadcastReceiverManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAODShowAction$1$1;->$callback:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAODShowAction$1$1;->this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x42b53ead

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "info"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x12

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAODShowAction$1$1;->$callback:Ljava/util/function/Consumer;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager$registerAODShowAction$1$1;->this$0:Lcom/android/systemui/volume/util/BroadcastReceiverManager;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastReceiverManager;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onReceive : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", long press on AOD state true"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "vol.BroadcastManager"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
