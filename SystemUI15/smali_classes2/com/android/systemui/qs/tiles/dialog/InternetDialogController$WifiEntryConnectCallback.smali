.class public final Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$WifiEntryConnectCallback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$WifiEntryConnectCallback;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$WifiEntryConnectCallback;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$WifiEntryConnectCallback;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    return-void
.end method


# virtual methods
.method public final onConnectResult(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->DEBUG:Z

    const-string v1, "InternetDialogController"

    if-eqz v0, :cond_0

    const-string v2, "onConnectResult "

    invoke-static {p1, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$WifiEntryConnectCallback;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/settingslib/wifi/WifiUtils;->Companion:Lcom/android/settingslib/wifi/WifiUtils$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settingslib/wifi/WifiUtils;->ACTION_WIFI_DIALOG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/settingslib/wifi/WifiUtils;->EXTRA_CHOSEN_WIFI_ENTRY_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/android/settingslib/wifi/WifiUtils;->EXTRA_CONNECT_FOR_CALLER:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$WifiEntryConnectCallback;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$WifiEntryConnectCallback;->mInternetDialogController:Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    const p1, 0x7f1314c6

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;->makeOverlayToast(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string p0, "connect failure reason="

    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
