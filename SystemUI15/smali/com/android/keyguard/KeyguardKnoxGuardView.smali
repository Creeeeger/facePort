.class public Lcom/android/keyguard/KeyguardKnoxGuardView;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mPinEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPasswordTextViewId()I
    .locals 0

    const p0, 0x7f0a05a0

    return p0
.end method

.method public final getPromptReasonStringRes(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getWrongPasswordStringId()I
    .locals 0

    const p0, 0x7f1309fd

    return p0
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    const v0, 0x7f0a05a0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    return-void
.end method

.method public final resetPasswordText(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPasswordEntryEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public final setPasswordEntryInputEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardView;->mPinEditText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setClickable(Z)V

    return-void
.end method

.method public final startAppearAnimation()V
    .locals 0

    return-void
.end method
