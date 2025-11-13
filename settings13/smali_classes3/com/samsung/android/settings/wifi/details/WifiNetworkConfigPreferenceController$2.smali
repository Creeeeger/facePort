.class Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$2;
.super Ljava/lang/Object;
.source "WifiNetworkConfigPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->saveConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    const-string p1, "WifiNetworkConfigPrefCtrl"

    const-string v0, "mSaveListener - onFailure"

    .line 762
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_failed_save_message:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 765
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
