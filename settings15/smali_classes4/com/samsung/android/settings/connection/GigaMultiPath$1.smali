.class public final Lcom/samsung/android/settings/connection/GigaMultiPath$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/connection/GigaMultiPath;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsMobileDataEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaMultiPath;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->showProgressDialog$1$1()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "smart_bonding"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object p2, p1, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p2, p2, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/connection/GigaMultiPath;->sendMptcpStartBroadCast$1(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->showProgressDialog$1$1()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/connection/GigaMultiPath;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
