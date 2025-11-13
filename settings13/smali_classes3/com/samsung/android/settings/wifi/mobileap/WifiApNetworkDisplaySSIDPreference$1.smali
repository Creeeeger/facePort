.class Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference$1;
.super Ljava/lang/Object;
.source "WifiApNetworkDisplaySSIDPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 100
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "showDialog() - DIALOG_RESTORE_SSID\'s NegativeButton CANCEL clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "TETH_010"

    const-string p2, "8036"

    .line 101
    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApNetworkDisplaySSIDPreference;->updateCurrentConfigToContentProvider()V

    return-void
.end method
