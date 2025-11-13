.class public final Lcom/android/settings/password/BiometricFragment$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/password/BiometricFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$2;->this$0:Lcom/android/settings/password/BiometricFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/password/BiometricFragment$2;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "prompt_info"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/PromptInfo;

    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$2;->this$0:Lcom/android/settings/password/BiometricFragment;

    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Lcom/android/settings/password/BiometricFragment$1;

    const/16 p2, 0xd

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/password/BiometricFragment$1;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
