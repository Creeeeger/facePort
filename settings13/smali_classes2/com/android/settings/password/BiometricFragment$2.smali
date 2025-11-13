.class Lcom/android/settings/password/BiometricFragment$2;
.super Ljava/lang/Object;
.source "BiometricFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/BiometricFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/BiometricFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$2;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/android/settings/password/BiometricFragment$2;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "prompt_info"

    .line 111
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/PromptInfo;

    .line 113
    iget-object p0, p0, Lcom/android/settings/password/BiometricFragment$2;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-static {p0}, Lcom/android/settings/password/BiometricFragment;->-$$Nest$fgetmAuthenticationCallback(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object p0

    .line 115
    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    const/16 p2, 0xd

    .line 113
    invoke-virtual {p0, p2, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method
