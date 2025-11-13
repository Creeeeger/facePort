.class public final synthetic Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/BaseSecPasswordTextView;->deleteLastChar()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mDeleteButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    instance-of v0, p1, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/keyguard/SecPasswordTextView;

    iget-object p1, p1, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const v0, 0x3ecccccd    # 0.4f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->verifyPasswordAndUnlock()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
