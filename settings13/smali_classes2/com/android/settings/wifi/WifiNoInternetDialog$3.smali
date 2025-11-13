.class Lcom/android/settings/wifi/WifiNoInternetDialog$3;
.super Ljava/lang/Object;
.source "WifiNoInternetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiNoInternetDialog;->createDialog()V
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

    .line 253
    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 256
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p2

    if-nez p2, :cond_1

    .line 257
    iget-object p2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {p2, p1, p1, p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->sendResultToWCM(ZZI)V

    .line 258
    iget-object p2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "wifi_sns_dialog_for_starting_settings"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmWifiNoInternetDialog(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->-$$Nest$fgetmWifiNoInternetDialog(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 261
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog$3;->this$0:Lcom/android/settings/wifi/WifiNoInternetDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return v0

    :cond_1
    return p1
.end method
