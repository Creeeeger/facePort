.class public final Lcom/samsung/android/settings/connection/GigaLteSettings$37;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/connection/GigaLteSettings;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsNetworkEnabling:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsWiFiEnabling:Z

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsNetworkEnabling:Z

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p1, p1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mIsMobileDataEnabling:Z

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object p1, p1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    sget-object v0, Lcom/samsung/android/settings/connection/GigaLteSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isRoaming()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/connection/GigaLteSettings;->isSimValid()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isTetheringOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaLteSettings$37;->this$0:Lcom/samsung/android/settings/connection/GigaLteSettings;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
