.class public Lcom/android/keyguard/biometrics/KeyguardBiometricView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final defaultDisplay:Landroid/view/Display;

.field public lockIconView:Lcom/android/keyguard/SecLockIconView;

.field public orientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->defaultDisplay:Landroid/view/Display;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->orientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->orientation:I

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->orientation:I

    const v0, 0x7f0a01bf

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView$onFinishInflate$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricView$onFinishInflate$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_2
    return-void
.end method
