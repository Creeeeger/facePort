.class public abstract Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAttached:Z

.field public mContainer:Landroid/view/ViewGroup;

.field public mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field public mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mTouchEnabled:Z

    return-void
.end method


# virtual methods
.method public final disableTouch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mTouchEnabled:Z

    return-void
.end method

.method public final enableTouch()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mTouchEnabled:Z

    return-void
.end method

.method public final getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    iget-object p0, p0, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onAttachedToWindow()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputView;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    const v0, 0x7f0a02ce

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a08c9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mTouchEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "KeyguardSecPinBasedInputView"

    const-string p1, "Touch event intercepted"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    return v1

    :cond_0
    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    return v1

    :cond_1
    const/4 v0, 0x7

    if-lt p1, v0, :cond_2

    const/16 v2, 0x10

    if-gt p1, v2, :cond_2

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v1

    :cond_2
    const/16 v0, 0x90

    if-lt p1, v0, :cond_3

    const/16 v2, 0x99

    if-gt p1, v2, :cond_3

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mAttached:Z

    if-eqz p1, :cond_1

    const-string p1, "onVisibilityChanged() Visibility : "

    const-string v0, "KeyguardSecPinBasedInputView"

    invoke-static {p2, p1, v0}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "deadzone_v2"

    const-string p2, "3.33%,3.33%,0%"

    invoke-static {p1, p2}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/tsp/SemTspStateManager;->setDeadZone(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/tsp/SemTspStateManager;->clearDeadZone(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setPasswordEntryEnabled(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->mTouchEnabled:Z

    :cond_3
    return-void
.end method
