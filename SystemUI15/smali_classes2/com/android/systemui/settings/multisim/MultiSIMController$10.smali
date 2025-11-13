.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$10;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive() - action = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSIMController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.telecom.action.DEFAULT_OUTGOING_PHONE_ACCOUNT_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "onReceive() - subId = "

    const-string/jumbo v3, "subscription"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0x3e8

    if-eqz v0, :cond_4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    if-eqz p2, :cond_10

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "android.samsung.action.ACTION_NETWORK_SLOT_CHANGING_FINISH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    if-eqz p2, :cond_10

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUIHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$13;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUpdateDataHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    if-eqz p1, :cond_10

    const/16 p2, 0x7d0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mUpdateDataHandler:Lcom/android/systemui/settings/multisim/MultiSIMController$12;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateMultiSimReadyState(Z)V

    const-string/jumbo p1, "ss"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "READY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "LOADED"

    if-nez p2, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v1, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataEnabled()Z

    move-result p2

    iput-boolean p2, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateSimSlotType()V

    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    goto :goto_0

    :cond_a
    const-string v0, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateMultiSimReadyState(Z)V

    goto :goto_0

    :cond_b
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p2, p2, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_c
    move v4, v1

    :cond_d
    iput-boolean v4, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    goto :goto_0

    :cond_e
    const-string p2, "com.samsung.android.softsim.ServiceStatus"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p2, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->getSRoamingVirtualSlot()I

    move-result p1

    if-ne p1, v1, :cond_f

    move v4, v1

    :cond_f
    iput-boolean v4, p2, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    :cond_10
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$10;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    return-void
.end method
