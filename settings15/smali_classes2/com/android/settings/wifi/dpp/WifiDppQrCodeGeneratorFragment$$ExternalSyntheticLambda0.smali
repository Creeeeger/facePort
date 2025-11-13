.class public final synthetic Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;Landroid/content/Intent;Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->removeFirstAndLastDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SSID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.intent.extra.PASSWORD"

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mPreSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.intent.extra.SECURITY_TYPE"

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSecurity:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.intent.extra.HIDDEN_SSID"

    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mHiddenSsid:Z

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "android.intent.extra.WIFI_CREDENTIALS_BUNDLE"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
