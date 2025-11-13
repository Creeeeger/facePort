.class public final Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 1

    const-string p1, "WifiNetworkConfigPrefCtrl"

    const-string v0, "mSaveListener - onFailure"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f143569

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onSuccess()V
    .locals 0

    return-void
.end method
