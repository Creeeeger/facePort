.class public final synthetic Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPinBasedInputViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputViewController;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/KeyguardPinBasedInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController$$ExternalSyntheticLambda4;->f$0:Lcom/android/keyguard/KeyguardPinBasedInputViewController;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->verifyPasswordAndUnlock()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/BaseSecPasswordTextView;->deleteLastChar()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
