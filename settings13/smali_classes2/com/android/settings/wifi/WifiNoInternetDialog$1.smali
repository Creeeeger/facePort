.class Lcom/android/settings/wifi/WifiNoInternetDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNoInternetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiNoInternetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    const-string/jumbo v0, "wifi_state"

    .line 91
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    if-nez p1, :cond_5

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmWifiNoInternetDialog(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmWifiNoInternetDialog(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 95
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_0

    :cond_3
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string/jumbo p1, "networkInfo"

    .line 98
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 99
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network state changed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiNoInternetDialog"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmWifiNoInternetDialog(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmWifiNoInternetDialog(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 102
    :cond_4
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method
