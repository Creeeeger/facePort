.class public final synthetic Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda3;->f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->enableHidingPassword(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/EditText;->setAccessibilitySelection(II)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
