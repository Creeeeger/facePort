.class Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$2;
.super Ljava/lang/Object;
.source "KnoxSecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->deleteAllBiometricDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 432
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 433
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 434
    iget-object p1, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;)Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 435
    iget-object p0, p0, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog$2;->this$0:Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/KnoxSecuritySettings$BiometricRemoveWarningDialog;)Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxSecuritySettings$IDialogButtonClick;->finishActivity()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
