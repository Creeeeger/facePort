.class public final synthetic Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    if-ne p5, p9, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mIsShownSIP:Z

    if-eq p1, p2, :cond_4

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mIsShownSIP:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->setMessageAreaLandscapeAdditionalPadding()V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mIsShownSIP:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mSwitchImeButton:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->updateSwitchImeButton()V

    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoTextContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0705bd

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController;->mIsShownSIP:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07052d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method
