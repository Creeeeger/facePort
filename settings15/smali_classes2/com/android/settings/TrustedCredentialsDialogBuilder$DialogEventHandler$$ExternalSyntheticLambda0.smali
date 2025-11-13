.class public final synthetic Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object v0

    iget v0, v0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickTrust()V

    :cond_0
    return-void
.end method
