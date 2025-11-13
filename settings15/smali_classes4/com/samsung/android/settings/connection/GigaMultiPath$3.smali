.class public final Lcom/samsung/android/settings/connection/GigaMultiPath$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

.field public final synthetic val$isChecked:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/GigaMultiPath;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iput-boolean p2, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->val$isChecked:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object p2, p1, Lcom/samsung/android/settings/connection/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-virtual {p1}, Lcom/samsung/android/settings/connection/GigaMultiPath;->showProgressDialog$1$1()V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->val$isChecked:Z

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->sendMptcpStartBroadCast$1(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/settings/connection/GigaMultiPath;->mIsWiFiEnabling:Z

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaMultiPath;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object p1, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/GigaMultiPath$3;->this$0:Lcom/samsung/android/settings/connection/GigaMultiPath;

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/GigaMultiPath;->showProgressDialog$1$1()V

    :cond_1
    :goto_0
    return-void
.end method
