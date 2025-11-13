.class public final Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/connection/GigaLteSettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MPTCPStateReceiver: onReceive action="

    const-string v1, "GigaLteSettings"

    const-string v2, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/audiostreams/AudioStreamMediaService$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object v0, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mRemoveProgress:Lcom/samsung/android/settings/connection/GigaLteSettings$35;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    const-string p1, "MPTCP State intent is received"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "mptcp_state"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_2

    :cond_1
    if-ne p1, v2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_2

    :cond_2
    const-string p1, "Cannot enable/disable MPTCP"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p1, "wifi_state"

    const/4 v0, 0x4

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p2, p1, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    sget-object v0, Lcom/samsung/android/settings/connection/GigaLteSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    move p1, v3

    goto :goto_0

    :cond_5
    move p1, v2

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-boolean v0, p2, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsNetworkEnabling:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iput-boolean v3, p2, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    iget-boolean p0, p2, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    if-nez p0, :cond_a

    iput-boolean v3, p2, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsNetworkEnabling:Z

    iget-object p0, p2, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    goto :goto_2

    :cond_6
    iget-boolean v0, p2, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    if-eqz v0, :cond_a

    iput-boolean v3, p2, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    if-eqz p1, :cond_7

    iget-object p0, p2, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    goto :goto_2

    :cond_7
    iget-object p1, p2, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p2, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mRemoveProgress:Lcom/samsung/android/settings/connection/GigaLteSettings$35;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "mptcp_value"

    invoke-static {p0, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_a
    :goto_2
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "HotSwapReceiver: onReceive action="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "mptcp"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$HotSwapReceiver;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    sget-object p1, Lcom/samsung/android/settings/connection/GigaLteSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaLteSettings;->checkSwitchDisableStatus()V

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
