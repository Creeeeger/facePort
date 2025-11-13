.class public abstract Lcom/android/keyguard/KeyguardInputViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public final mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

.field public final mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

.field public final mNullCallback:Lcom/android/keyguard/KeyguardInputViewController$1;

.field public mPaused:Z

.field public final mPrevInfoSubText:Lcom/android/systemui/widget/SystemUITextView;

.field public final mPrevInfoText:Lcom/android/systemui/widget/SystemUITextView;

.field public final mPrevInfoTextContainer:Landroid/widget/LinearLayout;

.field public final mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mShowTipsRunnable:Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda1;

.field public final mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

.field public mTipPopup:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardInputView;",
            "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
            "Lcom/android/keyguard/KeyguardSecurityCallback;",
            "Lcom/android/keyguard/EmergencyButtonController;",
            "Lcom/android/keyguard/KeyguardMessageAreaController$Factory;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p6, Lcom/android/keyguard/KeyguardInputViewController$1;

    invoke-direct {p6, p0}, Lcom/android/keyguard/KeyguardInputViewController$1;-><init>(Lcom/android/keyguard/KeyguardInputViewController;)V

    iput-object p6, p0, Lcom/android/keyguard/KeyguardInputViewController;->mNullCallback:Lcom/android/keyguard/KeyguardInputViewController$1;

    new-instance p6, Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda1;

    invoke-direct {p6, p0}, Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardInputViewController;)V

    iput-object p6, p0, Lcom/android/keyguard/KeyguardInputViewController;->mShowTipsRunnable:Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda1;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iput-object p7, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    if-eqz p5, :cond_0

    iget-object p2, p5, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p3, p5, Lcom/android/keyguard/KeyguardMessageAreaController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    const p4, 0x7f0a0a80

    :try_start_0
    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    new-instance p5, Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-direct {p5, p4, p3, p2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;-><init>(Lcom/android/keyguard/BouncerKeyguardMessageArea;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    iput-object p5, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p5}, Lcom/android/systemui/util/ViewController;->init()V

    const/4 p4, 0x1

    invoke-virtual {p5, p4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setIsVisible(Z)V

    const p5, 0x7f0a05cb

    invoke-virtual {p1, p5}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    new-instance p6, Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-direct {p6, p5, p3, p2}, Lcom/android/keyguard/KeyguardSecMessageAreaController;-><init>(Lcom/android/keyguard/BouncerKeyguardMessageArea;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    iput-object p6, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p6}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-virtual {p6, p4}, Lcom/android/keyguard/KeyguardMessageAreaController;->setIsVisible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "KeyguardInputViewController"

    const-string p3, "Ensure that a BouncerKeyguardMessageArea is included in the layout"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p3, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    move-object p3, p2

    goto :goto_1

    :cond_1
    const p3, 0x7f0a046e

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/widget/SystemUITextView;

    :goto_1
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    if-nez p1, :cond_2

    move-object p3, p2

    goto :goto_2

    :cond_2
    const p3, 0x7f0a0911

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    :goto_2
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoTextContainer:Landroid/widget/LinearLayout;

    if-nez p1, :cond_3

    move-object p3, p2

    goto :goto_3

    :cond_3
    const p3, 0x7f0a0912

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/widget/SystemUITextView;

    :goto_3
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoText:Lcom/android/systemui/widget/SystemUITextView;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const p2, 0x7f0a0913

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/widget/SystemUITextView;

    :goto_4
    iput-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoSubText:Lcom/android/systemui/widget/SystemUITextView;

    return-void
.end method


# virtual methods
.method public final bindMessageView(Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/log/BouncerLogger;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputView;->mBouncerMessageView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/bouncer/ui/BouncerMessageView;

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/bouncer/ui/binder/BouncerMessageViewBinder;->bind(Lcom/android/systemui/bouncer/ui/BouncerMessageView;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/log/BouncerLogger;)V

    :cond_0
    return-void
.end method

.method public final dismissTips(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    :cond_0
    return-void
.end method

.method public final getIndexIn(Lcom/android/keyguard/KeyguardSecurityViewFlipper;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public abstract getInitialMessageResId()I
.end method

.method public final getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v1, :cond_1

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthShowing()Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mNullCallback:Lcom/android/keyguard/KeyguardInputViewController$1;

    const-string v2, "KeyguardInputViewController"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    if-eqz v0, :cond_1

    const-string p0, "isDualDarInnerAuthShowing() return true and getKeyguardSecurityCallback() returns NULL callback"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string p0, "getKeyguardSecurityCallback() returns NULL callback"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method public final getPrevCredentialSubInfoText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCredentialTypeForUser(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1309d1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1309d3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1309d2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onInit()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->dismissTips(Z)V

    return-void
.end method

.method public onResume(I)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPaused:Z

    return-void
.end method

.method public onViewAttached()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateMessageAreaVisibility()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x600

    invoke-static {p0, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardInputViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoSubText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getPrevCredentialSubInfoText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getInitialMessageResId()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getInitialMessageResId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage$1(Ljava/lang/CharSequence;Z)V

    :cond_3
    return-void
.end method

.method public onViewDetached()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_OPEN_THEME:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    :cond_0
    return-void
.end method

.method public reset$1()V
    .locals 0

    return-void
.end method

.method public final restoreAppearance()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const-string v2, "KeyguardInputViewController"

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "restoreAppearance - inputView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    const v0, 0x7f0a01a5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "restoreAppearance - bottom"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    return-void
.end method

.method public final setMessageTimeout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSubMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xbb8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setTimeout(I)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setTimeout(I)V

    :cond_1
    return-void
.end method

.method public shouldLockout(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldTipsPopup()Z
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBouncerFullyShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 0

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputView;->startAppearAnimation()V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final updateForgotPasswordTextVisibility()V
    .locals 10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v3, :cond_9

    if-nez v2, :cond_9

    iget-object v4, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result v2

    const/16 v5, 0x8

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    invoke-interface {v4, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v2

    const/4 v6, 0x5

    if-lt v2, v6, :cond_2

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->checkValidPrevCredentialType()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWeaverDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getLockoutAttemptDeadline()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoTextContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v1

    :cond_3
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-interface {v4, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getCredentialTypeForUser(I)I

    move-result v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_6

    const/4 v7, 0x3

    if-eq v0, v7, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f1308f9

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f1308fb

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f1308fa

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_7

    iget-object v0, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x3fb22d0e56041893L    # 0.071

    mul-double/2addr v6, v8

    double-to-int v0, v6

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070558

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070552

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07055a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07055c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070551

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070553

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070559

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07055b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_4
    invoke-virtual {v3, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070557

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070556

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {v3, v2, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public updateMessageAreaVisibility()V
    .locals 0

    return-void
.end method

.method public final updatePrevInfoTextSize()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const v1, 0x3f8ccccd    # 1.1f

    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardInputViewController;->mPrevInfoSubText:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0705be

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v2, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    return-void
.end method
