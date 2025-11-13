.class public final Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# instance fields
.field public final synthetic $bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

.field public final synthetic $bouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

.field public final synthetic $messageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

.field public final synthetic $securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;Lcom/android/systemui/log/BouncerLogger;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;->$bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    iput-object p3, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;->$bouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    iput-object p4, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;->$messageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->consumeCustomMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v4, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->getBouncerPromptReason()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "KeyguardSecSecurityContainer"

    const-string v2, "return, biometric lockout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_3

    if-eqz v1, :cond_2

    const-string v2, "Strong auth required, reason: "

    const-string v3, "KeyguardSecurityContainer"

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    :cond_3
    :goto_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isBouncerOnFoldOpened()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsDisappearAnimation:Z

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->appear()V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->appear()V

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->onResume(I)V

    iget-object v0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;->$bouncerLogger:Lcom/android/systemui/log/BouncerLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v2, v0, Lcom/android/systemui/log/BouncerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "BouncerLog"

    const-string v5, "Binding BouncerMessageView"

    invoke-virtual {v2, v3, v1, v5, v4}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;->$bouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/binder/KeyguardBouncerViewBinder$bind$1$1$1$1$1;->$messageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    invoke-virtual {p1, v1, p0, v0}, Lcom/android/keyguard/KeyguardInputViewController;->bindMessageView(Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/log/BouncerLogger;)V

    return-void
.end method
