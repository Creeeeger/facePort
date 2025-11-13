.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputView;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mButtons:[Lcom/android/keyguard/NumPadKey;

.field public mDeleteButton:Lcom/android/keyguard/NumPadButton;

.field public mOkButton:Lcom/android/keyguard/NumPadButton;

.field public mPasswordEntry:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xa

    new-array p1, p1, [Lcom/android/keyguard/NumPadKey;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    return-void
.end method


# virtual methods
.method public getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method public getPromptReasonStringRes(I)I
    .locals 0

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x3

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x6

    if-eq p1, p0, :cond_2

    const/16 p0, 0x9

    if-eq p1, p0, :cond_1

    const/16 p0, 0x10

    if-eq p1, p0, :cond_0

    const p0, 0x7f1309ee

    return p0

    :cond_0
    const p0, 0x7f1309de

    return p0

    :cond_1
    const p0, 0x7f1309da

    return p0

    :cond_2
    const p0, 0x7f1309d9

    return p0

    :cond_3
    const p0, 0x7f1309e1

    return p0

    :cond_4
    const p0, 0x7f1309e6

    return p0

    :cond_5
    const p0, 0x7f1309e9

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x10406d5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0a0563

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    const v0, 0x7f0a0347

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Lcom/android/keyguard/NumPadButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUIImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    const v3, 0x7f0a0559

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/NumPadKey;

    aput-object v3, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    const v2, 0x7f0a055a

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/NumPadKey;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    const v1, 0x7f0a055b

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    const v1, 0x7f0a055c

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    const v1, 0x7f0a055d

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    const v1, 0x7f0a055e

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    const v1, 0x7f0a055f

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    const v1, 0x7f0a0560

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    const v1, 0x7f0a0561

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    const v1, 0x7f0a0562

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x43

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    return v1

    :cond_0
    const/4 v0, 0x7

    if-lt p1, v0, :cond_1

    const/16 v2, 0x10

    if-gt p1, v2, :cond_1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v1

    :cond_1
    const/16 v0, 0x90

    if-lt p1, v0, :cond_2

    const/16 v2, 0x99

    if-gt p1, v2, :cond_2

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final performNumberClick(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    :cond_0
    return-void
.end method

.method public final resetPasswordText(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/BaseSecPasswordTextView;->reset(ZZ)V

    return-void
.end method

.method public setPasswordEntryEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public final setPasswordEntryInputEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method
