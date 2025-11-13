.class Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEntryConnectCallback"
.end annotation


# instance fields
.field final mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field final mEditIfNoConfig:Z

.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;Z)V
    .locals 0

    .line 1464
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1465
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1466
    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->mEditIfNoConfig:Z

    return-void
.end method


# virtual methods
.method public onConnectResult(I)V
    .locals 1

    .line 1471
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$100(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1475
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fputmClickedConnect(Lcom/android/settings/wifi/WifiSettings;Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 1477
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$mlaunchConnectFragment(Lcom/android/settings/wifi/WifiSettings;Lcom/android/wifitrackerlib/WifiEntry;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1479
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/WifiSettings;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifi_no_usim_warning:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->-$$Nest$mshowErrorDialog(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    if-ne p1, p0, :cond_4

    const-string p0, "WifiSettings"

    const-string p1, "failed to connect wifiEntry with unknown reason"

    .line 1481
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
