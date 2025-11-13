.class public final Lcom/android/settings/biometrics/BiometricErrorDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/BiometricErrorDialog;

.field public final synthetic val$errMsgId:I


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/BiometricErrorDialog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->this$0:Lcom/android/settings/biometrics/BiometricErrorDialog;

    iput p2, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->val$errMsgId:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget p1, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->val$errMsgId:I

    const/4 p2, 0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricErrorDialog$1;->this$0:Lcom/android/settings/biometrics/BiometricErrorDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
