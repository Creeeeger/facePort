.class public final Lcom/android/systemui/aiagent/AiAgentEffect;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HIDE_ANIM_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final HIDE_ANIM_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

.field public static final SHOW_ANIM_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

.field public static final SHOW_ANIM_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;


# instance fields
.field public final activityManager:Landroid/app/ActivityManager;

.field public animState:Lcom/android/systemui/util/AnimHelper$AnimationState;

.field private final aodShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final callback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

.field public final config:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

.field public final context:Landroid/content/Context;

.field public drawWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final geminiStateObserver:Lcom/android/systemui/aiagent/AiAgentEffect$geminiStateObserver$1;

.field public final handler:Landroid/os/Handler;

.field public final hideAnimList:Ljava/util/ArrayList;

.field public hideAnimSet:Landroid/animation/AnimatorSet;

.field public isAnimating:Z

.field public isAttachedView:Z

.field public isHideAnimating:Z

.field public isPlaying:Z

.field public isShowAnimating:Z

.field public isUsingMicForEffect:Z

.field public isVideoPlaying:Z

.field public isVisibleView:Z

.field public lastDensityDpi:I

.field public lastTimeStampElapsed:J

.field public layout:Landroid/view/View;

.field public final layoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final powerManager:Landroid/os/PowerManager;

.field public final privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

.field public final releaseRunnable:Lkotlin/jvm/functions/Function0;

.field public final resourceFd:Landroid/content/res/AssetFileDescriptor;

.field public final screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final showAnimList:Ljava/util/ArrayList;

.field public showAnimSet:Landroid/animation/AnimatorSet;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final statusBarStateListener:Lcom/android/systemui/aiagent/AiAgentEffect$statusBarStateListener$1;

.field public videoView:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

.field public final wakeLockHandler:Landroid/os/Handler;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/systemui/aiagent/AiAgentEffect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/aiagent/AiAgentEffect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/systemui/util/AnimHelper$AnimationType;->ALPHA:Lcom/android/systemui/util/AnimHelper$AnimationType;

    sget-object v9, Lcom/android/systemui/util/AnimHelper$AnimationType;->TRANSLATION_Y:Lcom/android/systemui/util/AnimHelper$AnimationType;

    filled-new-array {v0, v9}, [Lcom/android/systemui/util/AnimHelper$AnimationType;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/aiagent/AiAgentEffect;->INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

    new-instance v10, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v10, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3ea3d70a    # 0.32f

    const v5, 0x3f70a3d7    # 0.94f

    invoke-direct {v8, v2, v5, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v11, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v11, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v12, Landroid/view/animation/PathInterpolator;

    invoke-direct {v12, v3, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v1, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v1, Lcom/android/systemui/aiagent/AiAgentEffect;->SHOW_ANIM_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v8, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    move-object v1, v8

    move-object v2, v9

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v8, Lcom/android/systemui/aiagent/AiAgentEffect;->SHOW_ANIM_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v1, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v4, 0xc8

    const/16 v5, 0x12c

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v0

    move-object v8, v12

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v1, Lcom/android/systemui/aiagent/AiAgentEffect;->HIDE_ANIM_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    new-instance v0, Lcom/android/systemui/util/AnimHelper$AnimProperty;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v9

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/AnimHelper$AnimProperty;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationType;IIFFLandroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/android/systemui/aiagent/AiAgentEffect;->HIDE_ANIM_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/privacy/PrivacyItemController;Landroid/os/PowerManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/ScreenLifecycle;Landroid/app/IActivityManager;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->privacyController:Lcom/android/systemui/privacy/PrivacyItemController;

    iput-object p3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->powerManager:Landroid/os/PowerManager;

    iput-object p4, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p5, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->windowManager:Landroid/view/WindowManager;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->showAnimList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->hideAnimList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    iput p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->lastDensityDpi:I

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p2, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/SettingsHelper;

    iput-object p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    sget-object p2, Lcom/android/systemui/util/AnimHelper$AnimationState;->HIDING:Lcom/android/systemui/util/AnimHelper$AnimationState;

    iput-object p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->animState:Lcom/android/systemui/util/AnimHelper$AnimationState;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->handler:Landroid/os/Handler;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->wakeLockHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120042

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->resourceFd:Landroid/content/res/AssetFileDescriptor;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->activityManager:Landroid/app/ActivityManager;

    new-instance p1, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v5, 0x1

    const/4 v6, 0x1

    const v1, 0x3e4ccccd    # 0.2f

    const-string v2, "putUniqueIdForThisView"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;-><init>(FLjava/lang/String;Landroid/graphics/Bitmap;ZZZLjava/lang/Float;)V

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->config:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView$Configs;

    new-instance p1, Lcom/android/systemui/aiagent/AiAgentEffect$foregroundServiceObserver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect$foregroundServiceObserver$1;-><init>(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    const-string p2, "AiAgentEffect"

    const-string p3, "init"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p6, p1}, Landroid/app/IActivityManager;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    new-instance p1, Lcom/android/systemui/aiagent/AiAgentEffect$aodShowStateCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect$aodShowStateCallback$1;-><init>(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->aodShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance p1, Lcom/android/systemui/aiagent/AiAgentEffect$callback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect$callback$1;-><init>(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->callback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    new-instance p1, Lcom/android/systemui/aiagent/AiAgentEffect$statusBarStateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect$statusBarStateListener$1;-><init>(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->statusBarStateListener:Lcom/android/systemui/aiagent/AiAgentEffect$statusBarStateListener$1;

    new-instance p1, Lcom/android/systemui/aiagent/AiAgentEffect$geminiStateObserver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect$geminiStateObserver$1;-><init>(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->geminiStateObserver:Lcom/android/systemui/aiagent/AiAgentEffect$geminiStateObserver$1;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x968

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/16 v6, 0x538

    const/4 v7, -0x3

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/high16 p2, 0x40000

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/4 p2, 0x3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string p2, "AiAgentEffectView"

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance p1, Lcom/android/systemui/aiagent/AiAgentEffect$releaseRunnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/aiagent/AiAgentEffect$releaseRunnable$1;-><init>(Lcom/android/systemui/aiagent/AiAgentEffect;)V

    iput-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->releaseRunnable:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final access$display(Lcom/android/systemui/aiagent/AiAgentEffect;Lcom/android/systemui/privacy/PrivacyItem;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "display usingMicItem = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/systemui/privacy/PrivacyItem;->log:Ljava/lang/String;

    const-string v2, "AiAgentEffect"

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/util/AnimHelper$AnimationState;->NONE:Lcom/android/systemui/util/AnimHelper$AnimationState;

    iput-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->animState:Lcom/android/systemui/util/AnimHelper$AnimationState;

    iget-wide v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->lastTimeStampElapsed:J

    iget-wide v2, p1, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->aodShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x1

    new-array v4, v1, [Landroid/net/Uri;

    const-string v5, "aod_show_state"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v0, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->statusBarStateListener:Lcom/android/systemui/aiagent/AiAgentEffect$statusBarStateListener$1;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->geminiStateObservers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->geminiStateObserver:Lcom/android/systemui/aiagent/AiAgentEffect$geminiStateObserver$1;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-wide v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->lastTimeStampElapsed:J

    iput-boolean v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isUsingMicForEffect:Z

    :cond_0
    return-void
.end method

.method public static final access$displayEffect(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 2

    iput-object p0, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->animState:Lcom/android/systemui/util/AnimHelper$AnimationState;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "displayEffect animState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiAgentEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/aiagent/AiAgentEffect;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/aiagent/AiAgentEffect$displayEffect$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/aiagent/AiAgentEffect$displayEffect$1;-><init>(Lcom/android/systemui/util/AnimHelper$AnimationState;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final access$getCurrentStateLog(Lcom/android/systemui/aiagent/AiAgentEffect;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    iget-object v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->screenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget p0, p0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const-string v3, "aod = "

    const-string v4, ", vis = "

    const-string v5, ", SB = "

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/aiagent/AiAgentEffect;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static final access$hiding(Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    iget-boolean v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isShowAnimating:Z

    iget-boolean v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAnimating:Z

    iget-object v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "hiding isVisibleView = "

    const-string v5, ", isStartAnimating = "

    const-string v6, ", isAnimating = "

    invoke-static {v4, v5, v6, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiAgentEffect"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAttachedView:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isShowAnimating:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->hideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->hideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAnimating:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAnimating:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public static final access$isGeminiForegroundService(Lcom/android/systemui/aiagent/AiAgentEffect;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->activityManager:Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.search.assistant.surfaces.voice.robin.ui.conversationmode.service.ConversationService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final access$releaseDrawWakeLock(Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AiAgentEffect"

    :try_start_0
    const-string v1, "releaseDrawWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->drawWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->wakeLockHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v1, "releaseDrawWakeLock exception = "

    invoke-static {v1, p0, v0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public static final access$showing(Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAnimating:Z

    iget-boolean v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAttachedView:Z

    iget-boolean v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    iget-boolean v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isHideAnimating:Z

    const-string v4, "showing isAnimating = "

    const-string v5, " -> true, isAttachedView = "

    const-string v6, ", isVisibleView = "

    invoke-static {v4, v5, v6, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHideAnimating = "

    const-string v4, "AiAgentEffect"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAttachedView:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAttachedView:Z

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateLayoutAndAnimators config = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->layout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->updateLayoutVisibility()V

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->layout:Landroid/view/View;

    if-eqz v0, :cond_1

    const v2, 0x7f0a00b0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    :cond_1
    iput-object v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->videoView:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/aiagent/AiAgentEffect;->initAnimProperties(Z)V

    sget-object v0, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    new-instance v1, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    iget-object v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->videoView:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    sget-object v3, Lcom/android/systemui/aiagent/AiAgentEffect;->SHOW_ANIM_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    iget-object v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->videoView:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iget-object v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v3, v5

    sget-object v6, Lcom/android/systemui/aiagent/AiAgentEffect;->SHOW_ANIM_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v6, v3}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setToValue(F)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v3, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v3, v2, v6}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    filled-new-array {v1, v3}, [Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->showAnimList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;

    const-string v6, "Show"

    invoke-direct {v3, p0, v6}, Lcom/android/systemui/aiagent/AiAgentEffect$ShowAnimatorListener;-><init>(Lcom/android/systemui/aiagent/AiAgentEffect;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/AnimHelper;->makeAnimSet([Lcom/android/systemui/util/AnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->showAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    iget-object v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->videoView:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    sget-object v3, Lcom/android/systemui/aiagent/AiAgentEffect;->HIDE_ANIM_ALPHA_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    iget-object v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->videoView:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    iget-object v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sget-object v4, Lcom/android/systemui/aiagent/AiAgentEffect;->HIDE_ANIM_TRANSLATION_Y_PROPERTY:Lcom/android/systemui/util/AnimHelper$AnimProperty;

    invoke-virtual {v4, v3}, Lcom/android/systemui/util/AnimHelper$AnimProperty;->setFromValue(F)V

    new-instance v3, Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/util/AnimHelper$AnimPairSet;-><init>(Landroid/view/View;Lcom/android/systemui/util/AnimHelper$AnimProperty;)V

    filled-new-array {v1, v3}, [Lcom/android/systemui/util/AnimHelper$AnimPairSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->hideAnimList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/aiagent/AiAgentEffect$HideAnimatorListener;

    const-string v4, "Hide"

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/aiagent/AiAgentEffect$HideAnimatorListener;-><init>(Lcom/android/systemui/aiagent/AiAgentEffect;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/util/AnimHelper;->makeAnimSet([Lcom/android/systemui/util/AnimHelper$AnimPairSet;Ljava/util/ArrayList;Lcom/android/systemui/util/AnimHelper$BaseAnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->hideAnimSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->videoView:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/aiagent/AiAgentEffect$updateLayoutAndAnimators$$inlined$doOnPreDraw$1;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/aiagent/AiAgentEffect$updateLayoutAndAnimators$$inlined$doOnPreDraw$1;-><init>(Landroid/view/View;Lcom/android/systemui/aiagent/AiAgentEffect;)V

    invoke-static {v0, v1}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->layout:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAnimating:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->hideAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/systemui/aiagent/AiAgentEffect;->initAnimProperties(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAnimating:Z

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->showAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    :goto_0
    return-void
.end method

.method public static final access$unregisterListener(Lcom/android/systemui/aiagent/AiAgentEffect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->aodShowStateCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->statusBarStateListener:Lcom/android/systemui/aiagent/AiAgentEffect$statusBarStateListener$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method


# virtual methods
.method public final initAnimProperties(Z)V
    .locals 4

    sget-object v0, Lcom/android/systemui/util/AnimHelper;->INSTANCE:Lcom/android/systemui/util/AnimHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->videoView:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/systemui/aiagent/AiAgentEffect;->INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/util/AnimHelper;->initProperty([Lcom/android/systemui/util/AnimHelper$AnimationType;[Landroid/view/View;)V

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAnimating:Z

    iget-boolean p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAttachedView:Z

    if-eqz p1, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    invoke-virtual {p0}, Lcom/android/systemui/aiagent/AiAgentEffect;->updateLayoutVisibility()V

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVideoPlaying:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->videoView:Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->pause()V

    invoke-static {p1}, Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;->release$default(Lcom/samsung/android/sesl/transparentvideo/TransparentVideoView;)V

    iput-boolean v3, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVideoPlaying:Z

    :cond_1
    return-void
.end method

.method public final updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isAttachedView:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->lastDensityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->lastDensityDpi:I

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->lastDensityDpi:I

    return-void
.end method

.method public final updateLayoutVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->layout:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/aiagent/AiAgentEffect;->isVisibleView:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
