.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 2

    const-string v0, "MultiSIMController"

    const-string v1, "onSubscriptionsChanged: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUpdateDataHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    if-eqz v0, :cond_0

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$2;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUpdateDataHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
