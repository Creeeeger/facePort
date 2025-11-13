.class public final Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;

.field public static final SEC_LIGHT_REVEAL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final context:Landroid/content/Context;

.field public final dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public isFolded:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

.field public final physicalDisplaySize:Landroid/graphics/Point;

.field public final pluginAODManagerLazy:Ldagger/Lazy;

.field public powerKeyYPos:I

.field public final screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public secCircleReveal:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$SecCircleReveal;

.field public secRevealCenterX:F

.field public secRevealCenterY:F

.field public secRevealDoubleTapX:F

.field public secRevealDoubleTapY:F

.field public final semWindowManager$delegate:Lkotlin/Lazy;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->Companion:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333    # 0.35f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ee66666    # 0.45f

    const v4, 0x3e3851ec    # 0.18f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->SEC_LIGHT_REVEAL_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/LightRevealScrim;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/statusbar/LightRevealScrim;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->pluginAODManagerLazy:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p7, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object p8, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->lightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    iput-object p9, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p10, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object p11, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p12, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterX:F

    iput p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealCenterY:F

    iput p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapX:F

    iput p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->secRevealDoubleTapY:F

    new-instance p1, Landroid/graphics/Point;

    const/16 p2, 0x438

    const/16 p3, 0x924

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->physicalDisplaySize:Landroid/graphics/Point;

    sget-object p1, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$semWindowManager$2;->INSTANCE:Lcom/android/systemui/statusbar/SecLightRevealScrimHelper$semWindowManager$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->semWindowManager$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final disableLightRevealAnimation()Z
    .locals 4

    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_COVER:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->isFolded:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v3, :cond_6

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    const/16 v3, 0x67

    if-eq v0, v3, :cond_6

    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/SecLightRevealScrimHelper;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAODParameters:Lcom/android/systemui/doze/AODParameters;

    if-eqz p0, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/doze/AODParameters;->mDozeUiState:Z

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method
