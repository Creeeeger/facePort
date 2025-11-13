.class public final Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object p1, p1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    if-eqz p1, :cond_1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object p1, p1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->length()I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget p3, p2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordMaxLength:I

    if-lt p1, p3, :cond_1

    iget-boolean p1, p2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordMaxLength:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordMaxLength:Z

    iget-boolean p1, p2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz p1, :cond_0

    const p1, 0x7f14225c

    goto :goto_0

    :cond_0
    const p1, 0x7f142269

    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object p2, p2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/password/SecGlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object p1, p1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mGlifLayout:Lcom/samsung/android/settings/password/SecGlifLayout;

    iget-object p1, p1, Lcom/samsung/android/settings/password/SecGlifLayout;->mDetailsTextView:Landroid/widget/TextView;

    new-instance p2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsPasswordMaxLength:Z

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
