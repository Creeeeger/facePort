.class public final Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# instance fields
.field public final mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method


# virtual methods
.method public final onConnectResult(I)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0, v2}, Lcom/android/settings/wifi/WifiSettings;->launchConnectFragment(Lcom/android/wifitrackerlib/WifiEntry;Z)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    if-ne p1, p0, :cond_4

    iget-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSimCheck(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const p1, 0x7f1435f3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiSettings;->showErrorDialog$1(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, v0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const p1, 0x7f140250

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiSettings;->showErrorDialog$1(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    const-string p0, "WifiSettings"

    const-string p1, "failed to connect wifiEntry with unknown reason"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 p0, 0x4

    if-ne p1, p0, :cond_6

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f143567

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_0
    return-void
.end method
