.class public final Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# instance fields
.field public final mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field public final mEditIfNoConfig:Z

.field public final mFullScreenEdit:Z

.field public final synthetic this$0:Lcom/android/settings/network/NetworkProviderSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iput-boolean p3, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mEditIfNoConfig:Z

    iput-boolean p4, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mFullScreenEdit:Z

    return-void
.end method


# virtual methods
.method public final onConnectResult(I)V
    .locals 2

    sget-object v0, Lcom/android/settings/network/NetworkProviderSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    iput-boolean v1, v0, Lcom/android/settings/network/NetworkProviderSettings;->mClickedConnect:Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mEditIfNoConfig:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mFullScreenEdit:Z

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/settings/network/NetworkProviderSettings;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    if-ne p1, p0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f143567

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method
