.class public final Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SEMANTIC_ACTIONS_ALL:Ljava/util/List;

.field public static final SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;

.field public static final SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;

.field public static final SETTINGS_INTENT:Landroid/content/Intent;

.field static final TURBULENCE_NOISE_PLAY_DURATION:J = 0x1d4cL


# instance fields
.field public final mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mArtworkBoundId:I

.field public mArtworkNextBindRequestId:I

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastDialogController:Lcom/android/systemui/bluetooth/BroadcastDialogController;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public mButtonClicked:Z

.field public mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

.field public final mContext:Landroid/content/Context;

.field public mController:Landroid/media/session/MediaController;

.field public final mEnabledChangeListener:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public mInstanceId:Lcom/android/internal/logging/InstanceId;

.field public mIsArtworkBound:Z

.field public final mIsCurrentBroadcastedApp:Z

.field public mIsImpressed:Z

.field public mIsScrubbing:Z

.field public mIsSeekBarEnabled:Z

.field public mKey:Ljava/lang/String;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mLogger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

.field public mMediaData:Lcom/android/systemui/media/controls/shared/model/MediaData;

.field public final mMediaDataManagerLazy:Ldagger/Lazy;

.field public final mMediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

.field public final mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

.field public mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

.field public mMetadataAnimationHandler:Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;

.field public mMultiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

.field public final mNoiseDrawCallback:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$1;

.field public mPackageName:Ljava/lang/String;

.field public mPrevArtwork:Landroid/graphics/drawable/Drawable;

.field public final mRecommendationData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

.field public mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

.field public final mScrubbingChangeListener:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;

.field public mSeekBarObserver:Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;

.field public final mSeekBarViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

.field public mSmartspaceId:I

.field public final mStateChangedCallback:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$2;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;

.field public mToken:Landroid/media/session/MediaSession$Token;

.field public mTurbulenceNoiseAnimationConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

.field public mTurbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;

.field public mUid:I

.field public mWasPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->SETTINGS_INTENT:Landroid/content/Intent;

    const v0, 0x7f0a0062

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0a0063

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;

    const v3, 0x7f0a0059

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0a005a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->SEMANTIC_ACTIONS_ALL:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/controls/ui/controller/MediaViewController;Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;Ldagger/Lazy;Lcom/android/systemui/media/dialog/MediaOutputDialogManager;Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/ActivityIntentHelper;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/bluetooth/BroadcastDialogController;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/media/controls/util/MediaFlags;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/broadcast/BroadcastSender;",
            "Lcom/android/systemui/media/controls/ui/controller/MediaViewController;",
            "Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogManager;",
            "Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lcom/android/systemui/media/controls/util/MediaUiEventLogger;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/ActivityIntentHelper;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/bluetooth/BroadcastDialogController;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Lcom/android/systemui/media/controls/util/MediaFlags;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p7

    move-object/from16 v2, p18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPrevArtwork:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsArtworkBound:Z

    iput v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mArtworkBoundId:I

    iput v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mArtworkNextBindRequestId:I

    iput-boolean v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsImpressed:Z

    iput v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSmartspaceId:I

    iput-boolean v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsScrubbing:Z

    iput-boolean v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsSeekBarEnabled:Z

    new-instance v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;)V

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mScrubbingChangeListener:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;

    new-instance v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;)V

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mEnabledChangeListener:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;

    iput-boolean v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsCurrentBroadcastedApp:Z

    iput-boolean v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mWasPlaying:Z

    iput-boolean v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mButtonClicked:Z

    new-instance v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;)V

    new-instance v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$2;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;)V

    move-object v3, p1

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    move-object v3, p2

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object v3, p3

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    move-object v3, p6

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    move-object v3, p8

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaDataManagerLazy:Ldagger/Lazy;

    move-object v3, p9

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mLogger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mBroadcastDialogController:Lcom/android/systemui/bluetooth/BroadcastDialogController;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    new-instance v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;I)V

    iput-object v3, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->logSeek:Lkotlin/jvm/functions/Function0;

    iput-object v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;

    if-eqz v0, :cond_1

    const-string v1, "animator_duration_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/util/settings/SettingsProxy;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;->animationEnabled:Z

    :cond_1
    return-void
.end method

.method public static scaleTransitionDrawableLayer(Landroid/graphics/drawable/TransitionDrawable;III)V
    .locals 5

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v3, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/android/systemui/media/controls/util/MediaDataUtils;->getScaleFactor(Landroid/util/Pair;Landroid/util/Pair;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    int-to-float p3, v1

    mul-float/2addr p3, p2

    float-to-int p3, p3

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p3, p2}, Landroid/graphics/drawable/TransitionDrawable;->setLayerSize(III)V

    return-void
.end method

.method public static setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZI)V

    return-void
.end method

.method public static setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZI)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    return-void
.end method

.method public static setupGradientColorOnDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/GradientDrawable;Lcom/android/systemui/monet/ColorScheme;F)Landroid/graphics/drawable/LayerDrawable;
    .locals 1

    iget-object v0, p2, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v0}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    move-result v0

    invoke-static {v0, p3}, Lcom/android/systemui/util/ColorUtilKt;->getColorWithAlpha(IF)I

    move-result p3

    iget-object p2, p2, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {p2}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lcom/android/systemui/util/ColorUtilKt;->getColorWithAlpha(IF)I

    move-result p2

    filled-new-array {p3, p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    aput-object p0, p3, v0

    const/4 p0, 0x1

    aput-object p1, p3, p0

    invoke-direct {p2, p3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method


# virtual methods
.method public addGradientToPlayerAlbum(Landroid/graphics/drawable/Icon;Lcom/android/systemui/monet/ColorScheme;II)Landroid/graphics/drawable/LayerDrawable;
    .locals 0

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->getScaledBackground(Landroid/graphics/drawable/Icon;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    const p3, 0x7f080e25

    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    const/high16 p3, 0x3e800000    # 0.25f

    invoke-static {p1, p0, p2, p3}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setupGradientColorOnDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/GradientDrawable;Lcom/android/systemui/monet/ColorScheme;F)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    return-object p0
.end method

.method public addGradientToRecommendationAlbum(Landroid/graphics/drawable/Icon;Lcom/android/systemui/monet/ColorScheme;II)Landroid/graphics/drawable/LayerDrawable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p3, p4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->getScaledBackground(Landroid/graphics/drawable/Icon;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    const p1, 0x7f080e22

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    const p1, 0x3e19999a    # 0.15f

    invoke-static {v0, p0, p2, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setupGradientColorOnDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/GradientDrawable;Lcom/android/systemui/monet/ColorScheme;F)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    return-object p0
.end method

.method public final attachPlayer(Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;)V
    .locals 10

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    new-instance v0, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;

    invoke-direct {v0, p1}, Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;)V

    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarChangeListener;

    iget-object v3, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarChangeListener;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;Lcom/android/systemui/plugins/FalsingManager;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v2, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarTouchListener;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$SeekBarTouchListener;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;Landroid/widget/SeekBar;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mScrubbingChangeListener:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;

    iput-object v0, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$ScrubbingChangeListener;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mEnabledChangeListener:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;

    iput-object v0, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$EnabledChangeListener;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    sget-object v1, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;->PLAYER:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;

    iget-object v2, p1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;I)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->titleText:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->artistText:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->explicitIndicator:Lcom/android/internal/widget/CachingIconView;

    sget-object v4, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    const/4 v5, 0x3

    new-array v6, v5, [Landroid/view/View;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v8, 0x1

    aput-object v3, v6, v8

    aput-object v0, v6, v1

    const v9, 0x7f0101f7

    invoke-virtual {p0, v9, v4, v6}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->loadAnimator(ILandroid/view/animation/Interpolator;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v4

    sget-object v6, Lcom/android/app/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    new-array v5, v5, [Landroid/view/View;

    aput-object v2, v5, v7

    aput-object v3, v5, v8

    aput-object v0, v5, v1

    const v0, 0x7f0101f8

    invoke-virtual {p0, v0, v6, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->loadAnimator(ILandroid/view/animation/Interpolator;[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    iget-object v2, p1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->multiRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    invoke-direct {v1, v2}, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;-><init>(Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;)V

    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMultiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    sget-object v1, Landroid/graphics/BlendMode;->SCREEN:Landroid/graphics/BlendMode;

    iget-object v2, p1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    iget-object v3, v2, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->loadingEffectView:Lcom/android/systemui/surfaceeffects/loadingeffect/LoadingEffectView;

    iput-object v1, p1, Lcom/android/systemui/surfaceeffects/loadingeffect/LoadingEffectView;->blendMode:Landroid/graphics/BlendMode;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;

    invoke-direct {p1, v2}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;-><init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mTurbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;

    new-instance v1, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMultiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    invoke-direct {v1, v2, v3, v5, p1}, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;-><init>(Landroid/content/Context;Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;)V

    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    new-instance p1, Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;

    invoke-direct {p1, v0, v4}, Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;-><init>(Landroid/animation/Animator;Landroid/animation/Animator;)V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMetadataAnimationHandler:Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;

    return-void
.end method

.method public final bindButtonCommon(Landroid/widget/ImageButton;Lcom/android/systemui/media/controls/shared/model/MediaAction;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v5, p2, Lcom/android/systemui/media/controls/shared/model/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p2, Lcom/android/systemui/media/controls/shared/model/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p2, Lcom/android/systemui/media/controls/shared/model/MediaAction;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p2, Lcom/android/systemui/media/controls/shared/model/MediaAction;->action:Ljava/lang/Runnable;

    if-nez v4, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    new-instance p2, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Landroid/widget/ImageButton;Ljava/lang/Runnable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final bindPlayer(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)V
    .locals 38

    move-object/from16 v9, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    const-string v10, ">"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaControlPanel#bindPlayer<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    iput-object v8, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mKey:Ljava/lang/String;

    iput-object v7, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaData:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v0, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    iget-object v1, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    iput-object v1, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget v1, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    iput v1, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    iget v2, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSmartspaceId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v1, v2

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSmartspaceId:I

    :cond_2
    iget-object v1, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iput-object v1, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v1, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iput-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    :cond_4
    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/media/session/MediaController;

    iget-object v2, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v3, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v0, v2, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    goto :goto_0

    :cond_5
    iput-object v1, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    :goto_0
    iget-object v0, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->clickIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    iget-object v2, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    new-instance v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda4;

    invoke-direct {v3, v9, v0, v8}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-boolean v0, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumption:Z

    if-eqz v0, :cond_7

    iget-object v2, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumeProgress:Ljava/lang/Double;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x64

    int-to-double v5, v5

    mul-double/2addr v2, v5

    double-to-int v2, v2

    new-instance v3, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x64

    const/16 v18, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;IZ)V

    invoke-virtual {v4, v3}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->set_data(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;)V

    goto :goto_1

    :cond_7
    iget-object v2, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    iget-object v3, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda5;

    const/4 v5, 0x0

    invoke-direct {v4, v9, v2, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    invoke-static {}, Lcom/android/settingslib/flags/Flags;->legacyLeAudioSharing()V

    iget-object v2, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamless:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v4, v3, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamlessIcon:Landroid/widget/ImageView;

    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamlessText:Landroid/widget/TextView;

    iget-object v5, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->device:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    if-eqz v5, :cond_8

    iget-boolean v6, v5, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->enabled:Z

    if-eqz v6, :cond_9

    :cond_8
    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    move v0, v11

    :goto_2
    xor-int/lit8 v6, v0, 0x1

    iget-object v13, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    const v14, 0x7f130bf6

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v14, v14, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamlessButton:Landroid/view/View;

    if-eqz v0, :cond_b

    const v0, 0x3ec28f5c    # 0.38f

    goto :goto_3

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v14, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz v5, :cond_d

    iget-object v0, v5, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    instance-of v6, v0, Lcom/android/settingslib/widget/AdaptiveIcon;

    if-eqz v6, :cond_c

    check-cast v0, Lcom/android/settingslib/widget/AdaptiveIcon;

    iget-object v6, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget v6, v6, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->bgColor:I

    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v0, v5, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    move-object v13, v0

    goto :goto_5

    :cond_d
    const v0, 0x7f08099e

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_e
    :goto_5
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda10;

    invoke-direct {v0, v9, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v0, v9, v7, v2}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Ljava/lang/Object;I)V

    iget-object v2, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iget-object v3, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->app:Ljava/lang/String;

    iget-boolean v4, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->isClearable:Z

    if-eqz v4, :cond_f

    iget-object v5, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    const v6, 0x7f13044c

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_f
    iget-object v3, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    const v5, 0x7f130446

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_6
    iget-object v5, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->dismissText:Landroid/widget/TextView;

    if-eqz v4, :cond_10

    const/4 v5, 0x0

    goto :goto_7

    :cond_10
    const/16 v5, 0x8

    :goto_7
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->dismiss:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v3, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->dismiss:Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda20;

    invoke-direct {v5, v9, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda20;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->cancelText:Landroid/widget/TextView;

    if-eqz v4, :cond_11

    iget-object v3, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    const v5, 0x7f080e20

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_11
    iget-object v3, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    const v5, 0x7f080e27

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    iget-object v0, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->cancel:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda21;

    const/4 v5, 0x0

    invoke-direct {v3, v9, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->isDismissible:Z

    if-ne v0, v4, :cond_12

    goto :goto_9

    :cond_12
    iput-boolean v4, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->isDismissible:Z

    iget-object v0, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    if-eqz v0, :cond_13

    iput-object v0, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->colorScheme:Lcom/android/systemui/monet/ColorScheme;

    iget-object v3, v0, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v3}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->setSurfaceColor(I)V

    iget-object v3, v0, Lcom/android/systemui/monet/ColorScheme;->mNeutral1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v3}, Lcom/android/systemui/monet/TonalPalette;->getS50()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->setTextPrimaryColor(I)V

    iget-object v0, v0, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v0}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->setAccentPrimaryColor(I)V

    :cond_13
    :goto_9
    iget-object v0, v2, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->settings:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda21;

    const/4 v3, 0x1

    invoke-direct {v2, v9, v3}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->bindPlayerContentDescription(Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->bindScrubbingTime(Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->genericButtonIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    invoke-virtual {v4, v3}, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->getAction(I)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    iget-object v13, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-object v2, v13, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v3, v13, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v6, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    if-eqz v6, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    invoke-static {v3, v4, v11}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    invoke-static {v2, v1, v11}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    goto :goto_b

    :cond_15
    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->SEMANTIC_ACTIONS_ALL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->getAction(I)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v6, v0}, Lcom/android/systemui/media/controls/shared/model/MediaButton;->getActionById(I)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;

    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    :goto_d
    move-object v15, v0

    goto :goto_e

    :cond_16
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;

    goto :goto_d

    :goto_e
    new-instance v5, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v4, v15

    move-object v12, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Landroid/widget/ImageButton;Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;Lcom/android/systemui/media/controls/shared/model/MediaButton;)V

    invoke-virtual {v15}, Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v15, Lcom/android/systemui/media/controls/ui/animation/AnimationBindHandler;->onAnimationsComplete:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_17
    invoke-virtual {v12}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda16;->invoke()Ljava/lang/Object;

    goto :goto_c

    :cond_18
    sget-object v4, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v5, v11}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-static {v2, v5, v11}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    goto :goto_f

    :cond_19
    iget-object v4, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->actionsToShowInCompact:Ljava/util/List;

    iget-object v5, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->actions:Ljava/util/List;

    move v6, v11

    :goto_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_1c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_1c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    invoke-virtual {v9, v14, v15}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->bindButtonCommon(Landroid/widget/ImageButton;Lcom/android/systemui/media/controls/shared/model/MediaAction;)V

    if-eqz v15, :cond_1a

    const/4 v15, 0x1

    goto :goto_11

    :cond_1a
    move v15, v11

    :goto_11
    invoke-virtual {v14}, Landroid/widget/ImageButton;->getId()I

    move-result v11

    invoke-static {v2, v11, v15}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-virtual {v14}, Landroid/widget/ImageButton;->getId()I

    move-result v11

    if-eqz v15, :cond_1b

    if-eqz v12, :cond_1b

    const/4 v12, 0x1

    goto :goto_12

    :cond_1b
    const/4 v12, 0x0

    :goto_12
    invoke-static {v3, v11, v12}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    goto :goto_10

    :cond_1c
    :goto_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v6, v4, :cond_1d

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v9, v4, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->bindButtonCommon(Landroid/widget/ImageButton;Lcom/android/systemui/media/controls/shared/model/MediaAction;)V

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v5

    const/4 v11, 0x0

    invoke-static {v2, v5, v11}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    invoke-static {v3, v4, v11}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->updateSeekBarVisibility()V

    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->titleText:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->artistText:Landroid/widget/TextView;

    iget-object v5, v13, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v6, v13, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v11, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMetadataAnimationHandler:Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;

    new-instance v12, Lkotlin/Triple;

    iget-object v0, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    iget-object v1, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->artist:Ljava/lang/CharSequence;

    iget-boolean v3, v7, Lcom/android/systemui/media/controls/shared/model/MediaData;->isExplicit:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v12, v0, v1, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Landroid/widget/TextView;Lcom/android/systemui/media/controls/shared/model/MediaData;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;

    const/4 v1, 0x2

    invoke-direct {v0, v9, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;I)V

    iget-object v1, v11, Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;->targetData:Ljava/lang/Object;

    invoke-virtual {v12, v1}, Lkotlin/Triple;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    iput-object v12, v11, Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;->targetData:Ljava/lang/Object;

    iput-object v14, v11, Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;->postExitUpdate:Lkotlin/jvm/functions/Function0;

    iput-object v0, v11, Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;->postEnterUpdate:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11}, Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v11, Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;->exitAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1e
    const/16 v16, 0x1

    goto :goto_14

    :cond_1f
    const/16 v16, 0x0

    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/controls/shared/model/MediaData;->hashCode()I

    move-result v11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaControlPanel#bindArtworkAndColors<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    iget v5, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mArtworkNextBindRequestId:I

    add-int/lit8 v0, v5, 0x1

    iput v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mArtworkNextBindRequestId:I

    if-eqz v16, :cond_20

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsArtworkBound:Z

    :cond_20
    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v10, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v12, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v7, v11

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Lcom/android/systemui/media/controls/shared/model/MediaData;IIILjava/lang/String;IZ)V

    invoke-interface {v10, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMetadataAnimationHandler:Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/animation/MetadataAnimationHandler;->isRunning()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {v13}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->refreshState()V

    :cond_21
    iget-boolean v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mButtonClicked:Z

    if-eqz v0, :cond_25

    iget-boolean v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mWasPlaying:Z

    if-nez v0, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mTurbulenceNoiseAnimationConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    if-nez v0, :cond_22

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    new-instance v3, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v21

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v22

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v23

    iget-object v2, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mColorSchemeTransition:Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/animation/ColorSchemeTransition;->accentPrimary:Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;

    iget v2, v2, Lcom/android/systemui/media/controls/ui/animation/AnimatingColorTransition;->currentColor:I

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v4, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move/from16 v34, v4

    const v36, 0x3db851ec    # 0.09f

    const/16 v37, 0x0

    const v19, 0x4008f5c3    # 2.14f

    const/high16 v20, 0x3f800000    # 1.0f

    const v24, 0x3ed70a3d    # 0.42f

    const/16 v25, 0x0

    const v26, 0x3e99999a    # 0.3f

    const/high16 v28, -0x1000000

    const v31, 0x46ea6000    # 30000.0f

    const v32, 0x44a8c000    # 1350.0f

    const v33, 0x44a8c000    # 1350.0f

    const v35, 0x3e851eb8    # 0.26f

    move-object/from16 v18, v3

    move/from16 v27, v2

    move/from16 v29, v1

    move/from16 v30, v0

    invoke-direct/range {v18 .. v37}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;-><init>(FFFFFFFFIIFFFFFFFFZ)V

    iput-object v3, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mTurbulenceNoiseAnimationConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    :cond_22
    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mTurbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;

    sget-object v1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader$Companion$Type;->SIMPLEX_NOISE:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader$Companion$Type;

    iget-object v2, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mTurbulenceNoiseAnimationConfig:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;

    iget-object v3, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->state:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    sget-object v4, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;->NOT_PLAYING:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    if-eq v3, v4, :cond_23

    goto :goto_15

    :cond_23
    iget-object v3, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->turbulenceNoiseView:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->initShader(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseShader$Companion$Type;Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseAnimationConfig;)V

    iget-object v1, v0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->state:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    if-eq v1, v4, :cond_24

    goto :goto_15

    :cond_24
    sget-object v1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;->EASE_IN:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;->setState(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$Companion$AnimationState;)V

    new-instance v1, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$playEaseInAnimation$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController$playEaseInAnimation$1;-><init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->playEaseIn(Ljava/lang/Runnable;)V

    :goto_15
    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mTurbulenceNoiseController:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x1d4c

    iget-object v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mButtonClicked:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->isPlaying()Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mWasPlaying:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final bindPlayerContentDescription(Lcom/android/systemui/media/controls/shared/model/MediaData;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-boolean v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-eqz v1, :cond_1

    iget-object p1, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/systemui/media/controls/shared/model/MediaData;->artist:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/systemui/media/controls/shared/model/MediaData;->app:Ljava/lang/String;

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f13044f

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final bindRecommendationContentDescription(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-boolean v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-eqz v1, :cond_1

    iget-object p1, v0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    const v0, 0x7f130454

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final bindScrubbingTime(Lcom/android/systemui/media/controls/shared/model/MediaData;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->scrubbingElapsedTimeView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->scrubbingTotalTimeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    iget-object p1, p1, Lcom/android/systemui/media/controls/shared/model/MediaData;->semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda11;

    invoke-direct {v4, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaButton;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsScrubbing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, v1, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    const/16 p1, 0x8

    invoke-static {v0, v2, p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZI)V

    return-void
.end method

.method public final closeGuts(Z)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    const-string v1, "marquee while longPressText.getHandler() is null"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-wide v3, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->GUTS_ANIMATION_DURATION:J

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "MediaViewHolder"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$marquee$1;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$marquee$1;-><init>(Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;Z)V

    invoke-virtual {v5, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    if-eqz v0, :cond_3

    sget-wide v3, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->GUTS_ANIMATION_DURATION:J

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "RecommendationViewHolder"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$marquee$1;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$marquee$1;-><init>(Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;Z)V

    invoke-virtual {v5, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-boolean v0, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-nez p1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animateNextStateChange:Z

    sget-wide v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->GUTS_ANIMATION_DURATION:J

    iput-wide v0, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animationDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animationDelay:J

    :cond_5
    iget v7, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentStartLocation:I

    iget v8, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentEndLocation:I

    iget v9, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentTransitionProgress:F

    const/4 v11, 0x1

    move v10, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->setCurrentState(IIFZZ)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaData:Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->bindPlayerContentDescription(Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->bindRecommendationContentDescription(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public getListening()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->listening:Z

    return p0
.end method

.method public getNumberOfFittedRecommendations()I
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f070dfd

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070df1

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_0

    div-int/lit8 v2, v2, 0x2

    :cond_0
    if-le v2, v1, :cond_1

    const v0, 0x7f070dfe

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    div-int/2addr p0, v3

    goto :goto_0

    :cond_1
    int-to-float v0, v2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    div-int/2addr p0, v3

    :goto_0
    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final getScaledBackground(Landroid/graphics/drawable/Icon;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-gt v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-le v0, p3, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, p3

    int-to-float p3, v1

    div-float/2addr p3, v0

    neg-float p2, p2

    float-to-int p2, p2

    neg-float p3, p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public final getSurfaceForSmartspaceLogging()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentEndLocation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x4

    return p0
.end method

.method public getWallpaperColor(Landroid/graphics/drawable/Icon;)Landroid/app/WallpaperColors;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Landroid/app/WallpaperColors;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/app/WallpaperColors;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "MediaControlPanel"

    const-string p1, "Cannot load wallpaper color from a recycled bitmap"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-static {p0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public final isPlaying()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mController:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public varargs loadAnimator(ILandroid/view/animation/Interpolator;[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p3, v3

    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    invoke-virtual {v6, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final logSmartspaceCardReported(III)V
    .locals 10

    iget v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSmartspaceId:I

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaCarouselController:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/16 v9, 0x1c0

    const/4 v8, 0x0

    move v1, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v9}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;III[IIIIZI)V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSeekBarObserver:Lcom/android/systemui/media/controls/ui/binder/SeekBarObserver;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_progress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$ScrubbingChangeListener;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mScrubbingChangeListener:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-object v2, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$ScrubbingChangeListener;

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$EnabledChangeListener;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mEnabledChangeListener:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v2, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$EnabledChangeListener;

    :cond_2
    new-instance v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onDestroy$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onDestroy$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->controllers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->configurationListener:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$configurationListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final openGuts()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    const-string v1, "marquee while longPressText.getHandler() is null"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-wide v3, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->GUTS_ANIMATION_DURATION:J

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "MediaViewHolder"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$marquee$1;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$marquee$1;-><init>(Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;Z)V

    invoke-virtual {v5, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    if-eqz v0, :cond_3

    sget-wide v3, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->GUTS_ANIMATION_DURATION:J

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->gutsViewHolder:Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;->gutsText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v2, "RecommendationViewHolder"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$marquee$1;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/media/controls/ui/view/GutsViewHolder$marquee$1;-><init>(Lcom/android/systemui/media/controls/ui/view/GutsViewHolder;Z)V

    invoke-virtual {v5, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-boolean v0, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    iput-boolean v0, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animateNextStateChange:Z

    sget-wide v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->GUTS_ANIMATION_DURATION:J

    iput-wide v0, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animationDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animationDelay:J

    iget v7, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentStartLocation:I

    iget v8, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentEndLocation:I

    iget v9, v6, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentTransitionProgress:F

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->setCurrentState(IIFZZ)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaData:Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->bindPlayerContentDescription(Lcom/android/systemui/media/controls/shared/model/MediaData;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->bindRecommendationContentDescription(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;)V

    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mLogger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object p0, p0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_LONG_PRESS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {p0, v3, v0, v1, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public final setSemanticButtonVisibleAndAlpha(ILcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/shared/model/MediaButton;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    sget-object v2, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v7, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda11;

    invoke-direct {v7, p3}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaButton;)V

    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsScrubbing:Z

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-eqz p2, :cond_2

    if-nez v3, :cond_2

    move p2, v6

    goto :goto_2

    :cond_2
    move p2, v5

    :goto_2
    const v3, 0x7f0a0063

    if-ne p1, v3, :cond_3

    iget-boolean v3, p3, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reservePrev:Z

    if-nez v3, :cond_4

    :cond_3
    const v3, 0x7f0a0061

    if-ne p1, v3, :cond_5

    iget-boolean p3, p3, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reserveNext:Z

    if-eqz p3, :cond_5

    :cond_4
    iget-object p3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    invoke-virtual {p3, p1}, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->getAction(I)Landroid/widget/ImageButton;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->getAction(I)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setClickable(Z)V

    const/4 p0, 0x4

    goto :goto_3

    :cond_5
    const/16 p0, 0x8

    :goto_3
    invoke-static {v0, p1, p2, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZI)V

    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    move v5, v6

    :cond_6
    invoke-static {v1, p1, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->setVisibleAndAlpha(Landroidx/constraintlayout/widget/ConstraintSet;IZ)V

    return-void
.end method

.method public final updateSeekBarVisibility()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsSeekBarEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const v2, 0x7f0a06df

    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsSeekBarEnabled:Z

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, v2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    return-void
.end method
