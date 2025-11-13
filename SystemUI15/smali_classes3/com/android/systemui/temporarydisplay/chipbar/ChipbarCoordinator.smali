.class public final Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;
.super Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field public final chipbarAnimator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;

.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

.field public final swipeChipbarAwayGestureHandler:Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;

.field public final vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field public final viewUtil:Lcom/android/systemui/util/view/ViewUtil;

.field public final windowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x32

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;)V
    .locals 14

    move-object v13, p0

    const v9, 0x7f0d0080

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p15

    move-object/from16 v11, p16

    move-object/from16 v12, p17

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;-><init>(Landroid/content/Context;Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;Landroid/view/WindowManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/dump/DumpManager;Landroid/os/PowerManager;ILcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/temporarydisplay/TemporaryViewUiEventLogger;)V

    move-object/from16 v0, p9

    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->chipbarAnimator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;

    move-object/from16 v0, p10

    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v0, p11

    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v0, p12

    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->swipeChipbarAwayGestureHandler:Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;

    move-object/from16 v0, p13

    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    move-object/from16 v0, p14

    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v0, v13, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->commonWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput-object v0, v13, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public static synthetic getLoadingDetails$frameworks__base__packages__SystemUI__android_common__SystemUI_core$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final animateViewIn$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/ViewGroup;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v7, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;

    invoke-direct {v7, v0, v1}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;-><init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Landroid/view/ViewGroup;)V

    const v2, 0x7f0a028f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->chipbarAnimator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    sget-object v3, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    sget-object v4, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    sget-object v21, Lcom/android/systemui/animation/ViewHierarchyAnimator;->DEFAULT_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-static {v5, v6, v9, v10, v11}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->occupiesSpace(IIIII)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    check-cast v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger;

    invoke-virtual {v0}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logAnimateInFailure()V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;->forceDisplayView(Landroid/view/View;)V

    invoke-virtual {v7}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewIn$onAnimationEnd$1;->run()V

    goto :goto_1

    :cond_0
    new-instance v9, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-wide/16 v15, 0x1f4

    move-object v0, v9

    move-object v1, v3

    move-object v3, v4

    move-wide v4, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;-><init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;ZLandroid/view/animation/Interpolator;JZLjava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-static {v8, v14, v9, v0}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->addListener$default(Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion$createListener$1;Z)V

    const/4 v0, 0x6

    int-to-long v0, v0

    div-long v0, v15, v0

    const-wide/16 v11, 0x0

    move-object v8, v14

    move-wide v9, v0

    move-object/from16 v13, v21

    invoke-static/range {v8 .. v13}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createAndStartFadeInAnimator(Landroid/view/View;JJLandroid/view/animation/Interpolator;)V

    const/4 v2, 0x3

    int-to-long v2, v2

    div-long v2, v15, v2

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    invoke-virtual {v14, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide/from16 v16, v2

    move-wide/from16 v18, v0

    move-object/from16 v20, v21

    invoke-static/range {v15 .. v20}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->createAndStartFadeInAnimator(Landroid/view/View;JJLandroid/view/animation/Interpolator;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final animateViewOut$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/ViewGroup;Ljava/lang/String;Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$removeViewFromWindow$1;)V
    .locals 2

    const p2, 0x7f0a028f

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    new-instance p2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewOut$fullEndRunnable$1;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewOut$fullEndRunnable$1;-><init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Ljava/lang/Runnable;)V

    iget-object p3, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->chipbarAnimator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarAnimator;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/android/systemui/animation/ViewHierarchyAnimator;->Companion:Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;

    sget-object v0, Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;->TOP:Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;

    sget-object v1, Lcom/android/app/animation/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Companion;->animateRemoval(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Hotspot;Landroid/view/animation/Interpolator;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewOut$fullEndRunnable$1;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    check-cast p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger;

    invoke-virtual {p1}, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->logAnimateOutFailure()V

    invoke-virtual {p2}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$animateViewOut$fullEndRunnable$1;->run()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->updateGestureListening$1()V

    return-void
.end method

.method public final getTouchableRegion(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/util/view/ViewUtil;->setRectToViewWindowLocation(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getWindowLayoutParams$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public final updateGestureListening$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->activeViews:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;

    const-string v1, "ChipbarCoordinator"

    iget-object v2, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->swipeChipbarAwayGestureHandler:Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;->info:Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;

    check-cast v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    iget-boolean v3, v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->allowSwipeToDismiss:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateGestureListening$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateGestureListening$1;-><init>(Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController$DisplayInfo;)V

    iput-object v3, v2, Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;->viewFetcher:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateGestureListening$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateGestureListening$2;-><init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;)V

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->addOnGestureDetectedCallback(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler$resetViewFetcher$1;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler$resetViewFetcher$1;

    iput-object p0, v2, Lcom/android/systemui/temporarydisplay/chipbar/SwipeChipbarAwayGestureHandler;->viewFetcher:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/gesture/GenericGestureDetector;->removeOnGestureDetectedCallback(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final updateView(Lcom/android/systemui/temporarydisplay/TemporaryViewInfo;Landroid/view/ViewGroup;)V
    .locals 10

    const/4 v0, 0x2

    check-cast p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;

    invoke-virtual {p0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->updateGestureListening$1()V

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->logger:Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;

    check-cast v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger;

    sget-object v2, Lcom/android/systemui/common/shared/model/Text;->Companion:Lcom/android/systemui/common/shared/model/Text$Companion;

    iget-object v3, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->text:Lcom/android/systemui/common/shared/model/Text;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Lcom/android/systemui/common/shared/model/Text$Companion;->loadText(Lcom/android/systemui/common/shared/model/Text;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->endItem:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem;

    if-nez v3, :cond_0

    const-string v5, "null"

    goto :goto_0

    :cond_0
    instance-of v5, v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;

    if-eqz v5, :cond_1

    const-string v5, "loading"

    goto :goto_0

    :cond_1
    instance-of v5, v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Error;

    if-eqz v5, :cond_2

    const-string v5, "error"

    goto :goto_0

    :cond_2
    instance-of v5, v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    if-eqz v5, :cond_12

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    iget-object v6, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    iget-object v5, v5, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;->text:Lcom/android/systemui/common/shared/model/Text;

    invoke-static {v5, v6}, Lcom/android/systemui/common/shared/model/Text$Companion;->loadText(Lcom/android/systemui/common/shared/model/Text;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "button("

    const-string v7, ")"

    invoke-static {v6, v5, v7}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v7, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger$logViewUpdate$2;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarLogger$logViewUpdate$2;

    iget-object v8, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->tag:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/TemporaryViewLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v6, v7, v9}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iget-object v8, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->windowTitle:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object v2, v7, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-object v5, v7, Lcom/android/systemui/log/LogMessageImpl;->str3:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const v1, 0x7f0a0cf2

    invoke-virtual {p2, v1, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    const v1, 0x7f0a0290

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarRootView;

    new-instance v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$1;-><init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;)V

    iput-object v2, v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarRootView;->touchHandler:Lcom/android/systemui/Gefingerpoken;

    const v1, 0x7f0a0c0b

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/CachingIconView;

    sget-object v2, Lcom/android/systemui/common/ui/binder/TintedIconViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/TintedIconViewBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/common/ui/binder/IconViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/IconViewBinder;

    iget-object v5, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->startIcon:Lcom/android/systemui/common/shared/model/TintedIcon;

    iget-object v6, v5, Lcom/android/systemui/common/shared/model/TintedIcon;->icon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v1}, Lcom/android/systemui/common/ui/binder/IconViewBinder;->bind(Lcom/android/systemui/common/shared/model/Icon;Landroid/widget/ImageView;)V

    iget-object v2, v5, Lcom/android/systemui/common/shared/model/TintedIcon;->tint:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v6}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v9

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const v1, 0x7f0a0d10

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/android/systemui/common/ui/binder/TextViewBinder;->INSTANCE:Lcom/android/systemui/common/ui/binder/TextViewBinder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lcom/android/systemui/common/ui/binder/TextViewBinder;->bind(Landroid/widget/TextView;Lcom/android/systemui/common/shared/model/Text;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    sget-object v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0a0646

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    move v8, v7

    goto :goto_2

    :cond_4
    move v8, v6

    :goto_2
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;->loadingView:Landroid/view/View;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_5
    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v8, v0, [F

    fill-array-data v8, :array_0

    invoke-static {v2, v1, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0x3e8

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    sget-object v8, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v8, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    invoke-direct {v8, v2, v1}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;-><init>(Landroid/view/View;Landroid/animation/ObjectAnimator;)V

    iget-object v1, v8, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_6
    iput-object v8, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_8
    iput-object v9, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->loadingDetails:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$LoadingDetails;

    :cond_9
    :goto_3
    const v1, 0x7f0a0424

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Error;->INSTANCE:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Error;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v7

    goto :goto_4

    :cond_a
    move v2, v6

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a040f

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    instance-of v2, v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    if-eqz v2, :cond_b

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    iget-object v6, v6, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;->text:Lcom/android/systemui/common/shared/model/Text;

    invoke-static {v1, v6}, Lcom/android/systemui/common/ui/binder/TextViewBinder;->bind(Landroid/widget/TextView;Lcom/android/systemui/common/shared/model/Text;)V

    new-instance v6, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$onClickListener$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$onClickListener$1;-><init>(Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_b
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    const v1, 0x7f0a028f

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v2, :cond_c

    const v2, 0x7f0701db

    goto :goto_6

    :cond_c
    const v2, 0x7f0701da

    :goto_6
    invoke-virtual {v6}, Landroid/view/View;->getPaddingStart()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v2, v5, Lcom/android/systemui/common/shared/model/TintedIcon;->icon:Lcom/android/systemui/common/shared/model/Icon;

    invoke-virtual {v2}, Lcom/android/systemui/common/shared/model/Icon;->getContentDescription()Lcom/android/systemui/common/shared/model/ContentDescription;

    move-result-object v2

    const-string v5, ""

    if-eqz v2, :cond_d

    sget-object v6, Lcom/android/systemui/common/shared/model/ContentDescription;->Companion:Lcom/android/systemui/common/shared/model/ContentDescription$Companion;

    iget-object v7, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v7}, Lcom/android/systemui/common/shared/model/ContentDescription$Companion;->loadContentDescription(Lcom/android/systemui/common/shared/model/ContentDescription;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v6, " "

    invoke-static {v2, v6}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_d
    move-object v2, v5

    :goto_7
    instance-of v6, v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Loading;

    if-eqz v6, :cond_e

    iget-object v5, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f130bfb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ". "

    const-string v7, "."

    invoke-static {v6, v5, v7}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_e
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/systemui/common/shared/model/Text$Companion;->loadText(Lcom/android/systemui/common/shared/model/Text;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setAccessibilityLiveRegion(I)V

    new-instance v0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$2;

    invoke-direct {v0}, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator$updateView$2;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    instance-of v0, v3, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarEndItem$Button;

    if-eqz v0, :cond_f

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->requestAccessibilityFocus()Z

    goto :goto_8

    :cond_f
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->clearAccessibilityFocus()V

    :goto_8
    iget-object v4, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->vibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v4, :cond_11

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object p2, p0, Lcom/android/systemui/temporarydisplay/TemporaryViewDisplayController;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    iget-object v1, p0, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;->vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_9

    :cond_10
    iget-object p0, v1, Lcom/android/systemui/statusbar/VibratorHelper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda3;

    iget-object v5, p1, Lcom/android/systemui/temporarydisplay/chipbar/ChipbarInfo;->windowTitle:Ljava/lang/String;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/VibratorHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_11
    :goto_9
    return-void

    :cond_12
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
