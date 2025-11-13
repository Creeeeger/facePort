.class public final Lcom/android/keyguard/StrongAuthPopup;
.super Landroid/app/AlertDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/StrongAuthPopup$3;

.field public final mContext:Landroid/content/Context;

.field public mCurrentOrientation:I

.field public final mHandler:Landroid/os/Handler;

.field public mImeHeight:I

.field public mIsSIPVisible:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mPasswordEntry:Landroid/widget/EditText;

.field public mRotation:I

.field public final mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

.field public final mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public final mTextWatcher:Lcom/android/keyguard/StrongAuthPopup$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;)V
    .locals 9

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p2, v0, :cond_0

    const v1, 0x7f1408e8

    goto :goto_0

    :cond_0
    const v1, 0x7f1408ee

    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/StrongAuthPopup$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/StrongAuthPopup$1;-><init>(Lcom/android/keyguard/StrongAuthPopup;)V

    iput-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/keyguard/StrongAuthPopup$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/StrongAuthPopup$2;-><init>(Lcom/android/keyguard/StrongAuthPopup;)V

    iput-object v2, p0, Lcom/android/keyguard/StrongAuthPopup;->mTextWatcher:Lcom/android/keyguard/StrongAuthPopup$2;

    new-instance v3, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/StrongAuthPopup;I)V

    iput-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mCurrentOrientation:I

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {v4, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object v4, p0, Lcom/android/keyguard/StrongAuthPopup;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v5, Lcom/android/keyguard/StrongAuthPopup$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/StrongAuthPopup$3;-><init>(Lcom/android/keyguard/StrongAuthPopup;)V

    iput-object v5, p0, Lcom/android/keyguard/StrongAuthPopup;->mConfigurationListener:Lcom/android/keyguard/StrongAuthPopup$3;

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/keyguard/StrongAuthPopup;->mImeHeight:I

    iput-object p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/StrongAuthPopup;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p3, p0, Lcom/android/keyguard/StrongAuthPopup;->mPasswordEntry:Landroid/widget/EditText;

    const-class v7, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v8, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v7, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/android/keyguard/StrongAuthPopup;->mCurrentOrientation:I

    check-cast v4, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v7, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/16 v0, 0x7d9

    invoke-virtual {p3, v0}, Landroid/view/Window;->setType(I)V

    const v0, 0xc0028

    invoke-virtual {p3, v0}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p3, v6}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const p3, 0x7f0d0195

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a0c26

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardTextBuilder;->getStrongAuthTimeOutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mConfigurationListener:Lcom/android/keyguard/StrongAuthPopup$3;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mTextWatcher:Lcom/android/keyguard/StrongAuthPopup$2;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public final getNavigationBarSize()I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10502c4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    iget-object p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p1

    sget-object v0, Lcom/android/keyguard/SecurityUtils;->sImeHeight:[I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    aget p1, v0, v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/StrongAuthPopup;->mIsSIPVisible:Z

    iget p2, p0, Lcom/android/keyguard/StrongAuthPopup;->mImeHeight:I

    if-eq p2, p1, :cond_2

    iput p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mImeHeight:I

    iget-object p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/keyguard/StrongAuthPopup;->mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/StrongAuthPopup;->mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method public final updatePopup()V
    .locals 12

    iget-object v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/StrongAuthPopup;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/StrongAuthPopup;->mRunnable:Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1f

    :cond_0
    iput v0, p0, Lcom/android/keyguard/StrongAuthPopup;->mRotation:I

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    const v5, 0x7f0705e0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget-boolean v7, Lcom/android/systemui/LsRune;->SECURITY_BIOMETRICS_TABLET:Z

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v7, :cond_1

    const v4, 0x7f0705e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/StrongAuthPopup;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v6, :cond_2

    move v4, v10

    goto :goto_0

    :cond_2
    move v4, v9

    :goto_0
    invoke-static {v3, v4}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    move-result v3

    goto :goto_2

    :cond_3
    if-eq v0, v10, :cond_5

    if-ne v0, v8, :cond_4

    goto :goto_1

    :cond_4
    mul-int/2addr v6, v11

    sub-int/2addr v4, v6

    move v3, v4

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/keyguard/SecurityUtils;->calculateLandscapeViewWidth(ILandroid/content/Context;)I

    move-result v3

    sub-int/2addr v3, v6

    :goto_2
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v0, v10, :cond_7

    if-ne v0, v8, :cond_6

    goto :goto_3

    :cond_6
    move v3, v9

    goto :goto_4

    :cond_7
    :goto_3
    move v3, v10

    :goto_4
    const/16 v4, 0x50

    if-eqz v3, :cond_10

    if-nez v7, :cond_10

    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v6, :cond_8

    move v3, v10

    goto :goto_5

    :cond_8
    move v3, v9

    :goto_5
    const/16 v6, 0x10

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mIsSIPVisible:Z

    if-eqz v3, :cond_b

    sget-object v3, Lcom/android/keyguard/SecurityUtils;->sImeHeight:[I

    if-eq v0, v10, :cond_a

    if-ne v0, v8, :cond_9

    goto :goto_6

    :cond_9
    move v7, v9

    goto :goto_7

    :cond_a
    :goto_6
    move v7, v10

    :goto_7
    aget v3, v3, v7

    goto :goto_8

    :cond_b
    move v3, v9

    :goto_8
    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    move v4, v6

    :goto_9
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v3, :cond_d

    iget-object v4, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v3}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v3

    goto :goto_a

    :cond_d
    move v3, v9

    :goto_a
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_b

    :cond_e
    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_b
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    or-int/2addr v3, v8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v0, v10, :cond_f

    invoke-virtual {p0}, Lcom/android/keyguard/StrongAuthPopup;->getNavigationBarSize()I

    move-result v9

    :cond_f
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_1e

    :cond_10
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/keyguard/StrongAuthPopup;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v4

    goto :goto_c

    :cond_11
    move v4, v9

    :goto_c
    sget-object v5, Lcom/android/keyguard/StrongAuthPopup$4;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v6, p0, Lcom/android/keyguard/StrongAuthPopup;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const v6, 0x7f070492

    const v7, 0x7f070493

    if-eq v5, v10, :cond_23

    if-eq v5, v11, :cond_18

    if-eq v5, v8, :cond_12

    goto/16 :goto_1d

    :cond_12
    if-eqz v0, :cond_13

    const v5, 0x7f0705a3

    goto :goto_d

    :cond_13
    const v5, 0x7f0705a2

    :goto_d
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    if-eqz v0, :cond_14

    const v8, 0x7f0705a5

    goto :goto_e

    :cond_14
    const v8, 0x7f0705a4

    :goto_e
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v5

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Lcom/android/keyguard/StrongAuthPopup;->getNavigationBarSize()I

    move-result p0

    :goto_f
    sub-int/2addr v4, p0

    goto :goto_12

    :cond_15
    if-eqz v0, :cond_16

    move v6, v7

    :cond_16
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-eqz v0, :cond_17

    const v0, 0x7f0705a1

    goto :goto_10

    :cond_17
    const v0, 0x7f0705a0

    :goto_10
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_11
    add-int v4, v0, p0

    :goto_12
    add-int v9, v8, v4

    goto/16 :goto_1d

    :cond_18
    iget-boolean v5, p0, Lcom/android/keyguard/StrongAuthPopup;->mIsSIPVisible:Z

    if-eqz v5, :cond_1b

    iget v5, p0, Lcom/android/keyguard/StrongAuthPopup;->mRotation:I

    sget-object v11, Lcom/android/keyguard/SecurityUtils;->sImeHeight:[I

    if-eq v5, v10, :cond_1a

    if-ne v5, v8, :cond_19

    goto :goto_13

    :cond_19
    move v10, v9

    :cond_1a
    :goto_13
    aget v5, v11, v10

    goto :goto_14

    :cond_1b
    move v5, v9

    :goto_14
    if-eqz v0, :cond_1c

    const v8, 0x7f0705cb

    goto :goto_15

    :cond_1c
    const v8, 0x7f0705ca

    :goto_15
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    if-eqz v0, :cond_1d

    const v10, 0x7f0705c8

    goto :goto_16

    :cond_1d
    const v10, 0x7f0705c7

    :goto_16
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v10, v8

    if-eqz v0, :cond_1e

    const v8, 0x7f0705d2

    goto :goto_17

    :cond_1e
    const v8, 0x7f070598

    :goto_17
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v10

    if-eqz v4, :cond_1f

    invoke-virtual {p0}, Lcom/android/keyguard/StrongAuthPopup;->getNavigationBarSize()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_19

    :cond_1f
    if-eqz v0, :cond_20

    move v6, v7

    :cond_20
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v0, :cond_21

    const v0, 0x7f07059a

    goto :goto_18

    :cond_21
    const v0, 0x7f070599

    :goto_18
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v4, v0

    :goto_19
    add-int/2addr v8, v4

    if-eqz v5, :cond_22

    invoke-virtual {p0}, Lcom/android/keyguard/StrongAuthPopup;->getNavigationBarSize()I

    move-result p0

    sub-int v9, v5, p0

    :cond_22
    add-int/2addr v9, v8

    goto :goto_1d

    :cond_23
    if-eqz v0, :cond_24

    iget-object v5, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/SecurityUtils;->getTabletPINContainerHeight(Landroid/content/Context;)I

    move-result v5

    goto :goto_1a

    :cond_24
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v5, :cond_25

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v5, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v5, v5, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/SecurityUtils;->getFoldPINContainerHeight(Landroid/content/Context;)I

    move-result v5

    goto :goto_1a

    :cond_25
    iget-object v5, p0, Lcom/android/keyguard/StrongAuthPopup;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/SecurityUtils;->getPINContainerHeight(Landroid/content/Context;)I

    move-result v5

    :goto_1a
    if-eqz v0, :cond_26

    const v8, 0x7f0705ab

    goto :goto_1b

    :cond_26
    const v8, 0x7f0705aa

    :goto_1b
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int/2addr v8, v5

    if-eqz v4, :cond_27

    invoke-virtual {p0}, Lcom/android/keyguard/StrongAuthPopup;->getNavigationBarSize()I

    move-result p0

    goto/16 :goto_f

    :cond_27
    if-eqz v0, :cond_28

    move v6, v7

    :cond_28
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-eqz v0, :cond_29

    const v0, 0x7f0705ad

    goto :goto_1c

    :cond_29
    const v0, 0x7f0705ac

    :goto_1c
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_11

    :goto_1d
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1e
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_1f
    return-void
.end method
