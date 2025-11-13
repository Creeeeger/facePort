.class public final synthetic Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0x1c

    const-string p2, "LSE4445"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEasyPinAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-void

    :pswitch_0
    const/16 p1, 0x1c

    const-string p2, "LSE4446"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mEasyPinAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->refreshPasswordEntryToNeedToConfirm()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
