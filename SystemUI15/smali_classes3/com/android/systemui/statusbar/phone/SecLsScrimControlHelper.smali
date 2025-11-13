.class public final Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

.field public final mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field public final mCoverHostLazy:Ldagger/Lazy;

.field public final mDozeParametersLazy:Ldagger/Lazy;

.field public final mHandler:Landroid/os/Handler;

.field public mIsDLSOverlayView:Z

.field public mIsFingerprintOptionEnabled:Z

.field public mIsFoldOpened:Z

.field public mIsReduceTransparency:Z

.field public final mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerLazy:Ldagger/Lazy;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public mPreviousState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

.field public mQsExpandedOnNightMode:Z

.field public final mResources:Landroid/content/res/Resources;

.field public mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

.field public mScrimBouncerAlpha:F

.field public mScrimBouncerColor:I

.field public mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ScrimController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/aod/AODAmbientWallpaperHelper;Lcom/android/systemui/keyguard/KeyguardFoldController;Landroid/content/res/Resources;Ldagger/Lazy;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/aod/AODAmbientWallpaperHelper;",
            "Lcom/android/systemui/keyguard/KeyguardFoldController;",
            "Landroid/content/res/Resources;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPreviousState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsFoldOpened:Z

    move-object v3, p1

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mDozeParametersLazy:Ldagger/Lazy;

    move-object v3, p2

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardStateControllerLazy:Ldagger/Lazy;

    move-object v3, p3

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPluginAODManagerLazy:Ldagger/Lazy;

    move-object v3, p9

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mCoverHostLazy:Ldagger/Lazy;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v3, p10

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardFastBioUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    move-object v3, p6

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mAodAmbientWallpaperHelper:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f060608

    invoke-virtual {p8, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    new-instance v1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    invoke-virtual {v1, v3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    iget v3, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    invoke-virtual {v1, v3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V

    move-object v3, p7

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4, v2}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_COVER:Z

    if-eqz v1, :cond_2

    :cond_1
    move-object/from16 v1, p12

    goto :goto_1

    :cond_2
    :goto_0
    move-object/from16 v1, p13

    goto :goto_2

    :goto_1
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    goto :goto_0

    :goto_2
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    return-void
.end method

.method public static getWhiteWallpaperState$1(Ljava/lang/Boolean;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const-wide/16 v2, 0x200

    invoke-virtual {p0, v2, v3}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p0

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method


# virtual methods
.method public final needUpdateScrimColor()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mKeyguardOccludedSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onKeyguardDismissAmountChanged()V
    .locals 0

    return-void
.end method

.method public final setFrontScrimToBlack(Z)V
    .locals 2

    const-string/jumbo v0, "setFrontScrimToBlack direct="

    const-string v1, " isAODShown="

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrimController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Lcom/android/systemui/scrim/ScrimView;->setTint(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final setQsExpandedOnNightMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mQsExpandedOnNightMode:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setQsExpandedOnNightMode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mQsExpandedOnNightMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrimController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mQsExpandedOnNightMode:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mUpdateScrimsRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setScrimAlphaForKeyguard(Z)V

    :cond_0
    return-void
.end method

.method public final setScrimAlphaForKeyguard(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsReduceTransparency:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->getWhiteWallpaperState$1(Ljava/lang/Boolean;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const-string p1, "background"

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsReduceTransparency:Z

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_CAPTURED_BLUR:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_BLUR:Z

    if-nez v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsReduceTransparency:Z

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isOpticalFingerprintSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    if-eqz v3, :cond_8

    if-nez v1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mKeyguardOccludedSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mQsExpandedOnNightMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mIsDLSOverlayView:Z

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_4

    :cond_7
    const v0, 0x3e99999a    # 0.3f

    goto :goto_4

    :cond_8
    :goto_3
    const/high16 v0, 0x3f400000    # 0.75f

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mResources:Landroid/content/res/Resources;

    if-eqz p1, :cond_9

    const v3, 0x7f060609

    goto :goto_5

    :cond_9
    const v3, 0x7f060608

    :goto_5
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setScrimAlphaForKeyguard isWhiteWallpaper() = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " bouncerScrimAlpha = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mScrimBouncerColor = #"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callers = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerAlpha:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_a

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerAlpha:F

    const-string v1, "ScrimController"

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput v0, p1, Lcom/android/systemui/statusbar/phone/ScrimState;->mDefaultScrimAlpha:F

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mBouncerColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimBouncerColor:I

    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_b

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_b

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mUpdateScrimsRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_b
    return-void
.end method

.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->setScrimAlphaForKeyguard(Z)V

    return-void
.end method
