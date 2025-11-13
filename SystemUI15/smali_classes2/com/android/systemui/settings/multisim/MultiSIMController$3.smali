.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$3;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$3;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "set_network_mode_by_quick_panel"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$3;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    move v0, p2

    :cond_1
    const-string p1, "onChanged() -set_network_mode_by_quick_panel : "

    const-string v1, "MultiSIMController"

    invoke-static {p1, v1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$3;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iput-boolean p2, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    if-eqz p1, :cond_2

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$3;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$3;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    :cond_3
    return-void
.end method
