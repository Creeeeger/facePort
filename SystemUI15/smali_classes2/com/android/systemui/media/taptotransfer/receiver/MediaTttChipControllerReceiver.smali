.class public final Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;
.super Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final ICON_ALPHA_ANIM_DURATION:J


# instance fields
.field public final bounceAnimator:Landroid/animation/ValueAnimator;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final commandQueueCallbacks:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$commandQueueCallbacks$1;

.field public final displayListener:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$displayListener$1;

.field public final instanceMap:Ljava/util/Map;

.field public final mainHandler:Landroid/os/Handler;

.field public final mediaTttFlags:Lcom/android/systemui/media/taptotransfer/MediaTttFlags;

.field public final rippleController:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

.field public final temporaryViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

.field public final uiEventLogger:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEventLogger;

.field public final viewUtil:Lcom/android/systemui/util/view/ViewUtil;

.field public final windowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/systemui/util/animation/AnimationUtil;->Companion:Lcom/android/systemui/util/animation/AnimationUtil$Companion;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->ICON_ALPHA_ANIM_DURATION:J

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/content/Context;Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;Landroid/os/Handler;Lcom/android/systemui/media/taptotransfer/MediaTttFlags;Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEventLogger;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;)V
    .locals 15

    move-object v13, p0

    const/4 v14, 0x2

    const v9, 0x7f0d0213

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v12, p17

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;-><init>(Landroid/content/Context;Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;ILcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;)V

    move-object/from16 v0, p1

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p10

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->mainHandler:Landroid/os/Handler;

    move-object/from16 v0, p11

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->mediaTttFlags:Lcom/android/systemui/media/taptotransfer/MediaTttFlags;

    move-object/from16 v0, p12

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->uiEventLogger:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverUiEventLogger;

    move-object/from16 v0, p13

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    move-object/from16 v0, p16

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->rippleController:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    move-object/from16 v0, p17

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->temporaryViewUiEventLogger:Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;

    iget-object v0, v13, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->commonWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-array v0, v14, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v14}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->bounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$commandQueueCallbacks$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$commandQueueCallbacks$1;-><init>(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;)V

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->commandQueueCallbacks:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$commandQueueCallbacks$1;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->instanceMap:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$displayListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$displayListener$1;-><init>(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;)V

    iput-object v0, v13, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->displayListener:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$displayListener$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static animateViewTranslationAndFade$default(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;Landroid/view/ViewGroup;FFLandroid/animation/TimeInterpolator;JJLcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$animateViewIn$1;I)V
    .locals 2

    and-int/lit8 v0, p10, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p4, v1

    :cond_0
    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_1

    const-wide/16 p5, 0x1f4

    :cond_1
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_2

    sget-wide p7, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->ICON_ALPHA_ANIM_DURATION:J

    :cond_2
    and-int/lit8 p10, p10, 0x40

    if-eqz p10, :cond_3

    move-object p9, v1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p5, p6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p2, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$animateViewTranslationAndFade$1;

    invoke-direct {p2, p9}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$animateViewTranslationAndFade$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p7, p8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final animateViewIn$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/ViewGroup;)V
    .locals 12

    const v0, 0x7f0a0509

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    const v0, 0x7f0a0510

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    const v1, 0x7f0a09e8

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->rippleController:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    invoke-virtual {v1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;-><init>(ZLcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v4, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;

    invoke-direct {v4, v5, v1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;-><init>(ZLcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;

    const/4 v4, 0x1

    invoke-direct {p1, v4, v1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$1;-><init>(ZLcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance p1, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;

    invoke-direct {p1, v4, v1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController$expandRipple$2;-><init>(ZLcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const/4 p1, -0x1

    int-to-float p1, p1

    mul-float/2addr p1, v3

    sget-object v5, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    new-instance v10, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$animateViewIn$1;

    invoke-direct {v10, p0, v2, v3}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$animateViewIn$1;-><init>(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;Landroid/view/ViewGroup;F)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v11, 0x30

    move-object v1, p0

    move v3, p1

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->animateViewTranslationAndFade$default(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;Landroid/view/ViewGroup;FFLandroid/animation/TimeInterpolator;JJLcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$animateViewIn$1;I)V

    return-void
.end method

.method public final animateViewOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;)V
    .locals 12

    const v0, 0x7f0a0509

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    const v0, 0x7f0a09e8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->rippleController:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;

    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->getReceiverIconSize$frameworks__base__packages__SystemUI__android_common__SystemUI_core()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->bounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->bounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const-string v1, "TRANSFER_TO_RECEIVER_SUCCEEDED"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->layoutRipple(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;Z)V

    iget v0, v0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttReceiverRippleController;->maxRippleHeight:F

    iget-boolean v1, p1, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->isStarted:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    move-object v5, v1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    iget-object v6, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->baseRingFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    const v7, 0x3e99999a    # 0.3f

    iput v7, v6, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    iget-object v5, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->centerFillFadeParams:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;

    const/4 v8, 0x0

    iput v8, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInStart:F

    iput v8, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    iget v6, v6, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeInEnd:F

    iput v6, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutStart:F

    iput v7, v5, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$FadeParams;->fadeOutEnd:F

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    iget-object v1, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rippleSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;

    iget v1, v1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentHeight:F

    div-float/2addr v1, v0

    int-to-float p2, p2

    sub-float v0, p2, v1

    float-to-double v0, v0

    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr p2, v0

    iget-object v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;-><init>(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$2;

    invoke-direct {v0, p3, p1}, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$2;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    const/4 p1, -0x1

    int-to-float p1, p1

    mul-float/2addr v3, p1

    const-wide/16 v8, 0xa7

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0xa7

    const/16 v11, 0x48

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->animateViewTranslationAndFade$default(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;Landroid/view/ViewGroup;FFLandroid/animation/TimeInterpolator;JJLcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$animateViewIn$1;I)V

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p2, p1, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->isStarted:Z

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    const-wide/16 v0, 0x14d

    iput-wide v0, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->duration:J

    iget-object p2, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object p2, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$collapseRipple$1;

    invoke-direct {v0, p3, p1}, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$collapseRipple$1;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p1, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_3
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v11, 0x78

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->animateViewTranslationAndFade$default(Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;Landroid/view/ViewGroup;FFLandroid/animation/TimeInterpolator;JJLcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$animateViewIn$1;I)V

    :goto_4
    return-void
.end method

.method public final getTouchableRegion(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a00f4

    invoke-virtual {p2, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/CachingIconView;

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/util/view/ViewUtil;->setRectToViewWindowLocation(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getWindowLayoutParams$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public final start()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->start()V

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->mediaTttFlags:Lcom/android/systemui/media/taptotransfer/MediaTttFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/Flags;->MEDIA_TAP_TO_TRANSFER:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object v0, v0, Lcom/android/systemui/media/taptotransfer/MediaTttFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->commandQueueCallbacks:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$commandQueueCallbacks$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->listeners:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;->displayListener:Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$displayListener$1;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/ViewGroup;)V
    .locals 6

    check-cast p1, Lcom/android/systemui/media/taptotransfer/receiver/ChipReceiverInfo;

    iget-object v0, p1, Lcom/android/systemui/media/taptotransfer/receiver/ChipReceiverInfo;->routeInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/media/taptotransfer/common/MediaTttUtils;->Companion:Lcom/android/systemui/media/taptotransfer/common/MediaTttUtils$Companion;

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateView$iconInfo$1;

    invoke-direct {v3, v0, p0}, Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver$updateView$iconInfo$1;-><init>(Ljava/lang/String;Lcom/android/systemui/media/taptotransfer/receiver/MediaTttChipControllerReceiver;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/android/systemui/media/taptotransfer/common/MediaTttUtils$Companion;->getIconInfoFromPackageName(Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    move-result-object v0

    iget-object v2, p1, Lcom/android/systemui/media/taptotransfer/receiver/ChipReceiverInfo;->appNameOverride:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    iget-object v5, p1, Lcom/android/systemui/media/taptotransfer/receiver/ChipReceiverInfo;->appNameOverride:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xe

    invoke-static {v0, v2, v4, v3, v5}, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->copy$default(Lcom/android/systemui/media/taptotransfer/common/IconInfo;Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;ZI)Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    move-result-object v0

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/media/taptotransfer/receiver/ChipReceiverInfo;->appIconDrawableOverride:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    new-instance v2, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;

    invoke-direct {v2, p1}, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x5

    invoke-static {v0, v4, v2, v1, p1}, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->copy$default(Lcom/android/systemui/media/taptotransfer/common/IconInfo;Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;ZI)Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    move-result-object v0

    :cond_1
    iget-boolean p1, v0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07099d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    const p0, 0x7f0a00f4

    invoke-virtual {p2, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/internal/widget/CachingIconView;->setPadding(IIII)V

    sget-object p1, Lcom/android/systemui/common/ui/binder/TintedIconViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/TintedIconViewBinder;

    invoke-virtual {v0}, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->toTintedIcon()Lcom/android/systemui/common/shared/model/TintedIcon;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/common/ui/binder/IconViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/IconViewBinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/android/systemui/common/shared/model/TintedIcon;->icon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-static {p1, p0}, Lcom/android/systemui/common/ui/binder/IconViewBinder;->bind(Lcom/android/systemui/common/shared/model/Icon;Landroid/widget/ImageView;)V

    iget-object p1, v0, Lcom/android/systemui/common/shared/model/TintedIcon;->tint:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    :cond_3
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const p0, 0x7f0a0509

    invoke-virtual {p2, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    return-void
.end method
