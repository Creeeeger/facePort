.class public final Lcom/android/keyguard/SecurityUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final sImeHeight:[I

.field public static sMainDisplayHeight:I

.field public static sMainDisplayWidth:I

.field public static sPINContainerBottomMargin:I

.field public static sPasswordViewFlipperWidth:I

.field public static sSubDisplayWidth:I

.field public static final sTypefaceMap:Ljava/util/HashMap;

.field public static sViewFlipperWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/SecurityUtils;->sImeHeight:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/keyguard/SecurityUtils;->sTypefaceMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/SecurityUtils;->sViewFlipperWidth:I

    sput v0, Lcom/android/keyguard/SecurityUtils;->sPasswordViewFlipperWidth:I

    sput v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayWidth:I

    sput v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayHeight:I

    sput v0, Lcom/android/keyguard/SecurityUtils;->sSubDisplayWidth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLandscapeViewWidth(ILandroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10502c4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 v0, p1, 0x2

    sub-int v0, p0, v0

    div-int/lit8 v0, v0, 0x2

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    if-eqz v1, :cond_0

    sub-int/2addr p0, p1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result p1

    sub-int/2addr p0, p1

    div-int/lit8 v0, p0, 0x2

    :cond_0
    return v0
.end method

.method public static checkFullscreenBouncer(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 4

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->AdminLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Permanent:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    if-eqz v3, :cond_7

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v0, v1

    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :cond_9
    :goto_4
    move v0, v1

    :cond_a
    return v0
.end method

.method public static getCurrentRotation(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getFoldPINContainerHeight(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f0703ec

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v1, v2

    const v2, 0x7f0703ea

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    float-to-int p0, p0

    return p0
.end method

.method public static getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I
    .locals 1

    sget v0, Lcom/android/keyguard/SecurityUtils;->sViewFlipperWidth:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->initMainDisplaySize(Landroid/content/Context;)V

    :cond_0
    if-eqz p1, :cond_1

    sget p0, Lcom/android/keyguard/SecurityUtils;->sPasswordViewFlipperWidth:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/keyguard/SecurityUtils;->sViewFlipperWidth:I

    :goto_0
    return p0
.end method

.method public static getPINContainerHeight(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v1, v1

    const v2, 0x7f070bd2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    int-to-float v0, v0

    const v1, 0x7f070bcf

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    add-float/2addr p0, v2

    float-to-int p0, p0

    return p0
.end method

.method public static getSimSlotNum(I)I
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getStrongAuthPopupString(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;I)Landroid/text/SpannableStringBuilder;
    .locals 4

    invoke-static {p0}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/keyguard/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getStrongAuthTimeOutMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x2

    if-eq p3, p0, :cond_0

    const/4 p0, 0x7

    if-eq p3, p0, :cond_0

    const/16 p0, 0x11

    if-ne p3, p0, :cond_4

    :cond_0
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string p3, "%1$s"

    invoke-virtual {v1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const-string v2, "%2$s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-ltz p3, :cond_3

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, ""

    filled-new-array {v3, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, "none"

    iget-object v3, v0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/keyguard/KeyguardTextBuilder$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/keyguard/KeyguardTextBuilder$1;-><init>(Lcom/android/keyguard/KeyguardTextBuilder;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Landroid/widget/EditText;)V

    const/16 p1, 0x21

    invoke-virtual {p0, v1, p3, v2, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    move-object v3, p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "Unnecessary to update this message : promptReasonString = "

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardTextBuilder"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-object v3
.end method

.method public static getStrongAuthPrompt(I)I
    .locals 3

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v1

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result p0

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_4

    const/4 p0, 0x7

    return p0

    :cond_4
    if-nez p0, :cond_5

    const/16 p0, 0x11

    return p0

    :cond_5
    return v2
.end method

.method public static getTabletPINContainerHeight(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v1, v1

    const v2, 0x7f071714

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    int-to-float v0, v0

    const v1, 0x7f071712

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr p0, v0

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    add-float/2addr p0, v2

    float-to-int p0, p0

    return p0
.end method

.method public static initMainDisplaySize(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v0, :cond_0

    sget v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayWidth:I

    if-nez v0, :cond_1

    sget v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayHeight:I

    if-nez v0, :cond_1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayHeight:I

    sget v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayWidth:I

    int-to-float v0, v0

    const v1, 0x7f070596

    invoke-static {p0, v1, v0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/keyguard/SecurityUtils;->sViewFlipperWidth:I

    sget v0, Lcom/android/keyguard/SecurityUtils;->sMainDisplayWidth:I

    int-to-float v0, v0

    const v1, 0x7f07059c

    invoke-static {p0, v1, v0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcom/android/keyguard/SecurityUtils;->sPasswordViewFlipperWidth:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/keyguard/SecurityUtils;->sSubDisplayWidth:I

    if-nez p0, :cond_1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/android/keyguard/SecurityUtils;->sSubDisplayWidth:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static matchSignature(Landroid/content/pm/Signature;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    :try_start_0
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    mul-int/lit8 v5, v2, 0x2

    ushr-int/lit8 v4, v4, 0x4

    aget-char v4, v0, v4

    aput-char v4, v1, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v0, "0848EDB80D10A557AA0D885AB3B669C915DCD6BCA8D78715568A06876AACD7CD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method
