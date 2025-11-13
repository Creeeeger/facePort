.class public final Lcom/android/settings/wifi/WifiNoInternetDialog$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->sendResultToWCM(IZZ)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_sns_dialog_for_starting_settings"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mWifiNoInternetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$4;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method
