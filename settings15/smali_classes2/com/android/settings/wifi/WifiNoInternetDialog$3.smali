.class public final Lcom/android/settings/wifi/WifiNoInternetDialog$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x4

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {p1, v0, v0, v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->sendResultToWCM(IZZ)V

    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiNoInternetDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "wifi_sns_dialog_for_starting_settings"

    invoke-static {p1, p3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiNoInternetDialog;->mWifiNoInternetDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return p2

    :cond_1
    return v0
.end method
