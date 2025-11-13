.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;
.super Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final actionHandlerTypes:Ljava/util/Map;

.field public callback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

.field public doubleTapDownEvent:Landroid/view/MotionEvent;

.field public final doubleTapSlop:I

.field public dozeAmount:F

.field public final dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

.field public final dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

.field public final editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

.field public final fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

.field public final gestureDetector:Landroid/view/GestureDetector;

.field public final keyguardClickController:Lcom/android/systemui/keyguard/KeyguardClickController;

.field public final keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

.field public final keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public final lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

.field public notiScale:F

.field public final parentView$delegate:Lkotlin/Lazy;

.field public final pivotViewController:Lcom/android/systemui/keyguard/animator/PivotViewController;

.field public final sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final screenOnViewController:Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;

.field public final securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

.field public viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

.field public final views:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;Lcom/android/systemui/keyguard/KeyguardClickController;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 15

    move-object v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p8

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p4

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v0, p5

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dymLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    move-object/from16 v0, p6

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->loggingInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchLoggingInjector;

    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    iput-object v11, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->sbStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v7, p9

    iput-object v7, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v3, p10

    iput-object v3, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    move-object/from16 v4, p11

    iput-object v4, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    iput-object v12, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iput-object v13, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

    move-object/from16 v8, p15

    iput-object v8, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardClickController:Lcom/android/systemui/keyguard/KeyguardClickController;

    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$parentView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$parentView$2;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->parentView$delegate:Lkotlin/Lazy;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->actionHandlerTypes:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    new-instance v0, Lcom/android/systemui/keyguard/animator/PivotViewController;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/PivotViewController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->pivotViewController:Lcom/android/systemui/keyguard/animator/PivotViewController;

    new-instance v0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;

    move-object/from16 v1, p16

    move-object/from16 v2, p17

    move-object/from16 v5, p18

    invoke-direct {v0, p0, v2, v1, v5}, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->screenOnViewController:Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;

    new-instance v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/FullScreenViewController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    new-instance v14, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p19

    move-object/from16 v5, p2

    move-object/from16 v6, p12

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardClickController;)V

    iput-object v14, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    new-instance v0, Lcom/android/systemui/keyguard/animator/DragViewController;

    invoke-direct {v0, p0, v13}, Lcom/android/systemui/keyguard/animator/DragViewController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;)V

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens$5()V

    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    invoke-interface {v11, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->doubleTapSlop:I

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;

    move-object/from16 v2, p3

    invoke-direct {v1, p0, v10, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$2;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;)V

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->gestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3;

    invoke-direct {v0, p0, v10}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator$3;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    return-void
.end method

.method public static showViewState(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "v="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " alpha="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " scale="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardTouchAnimator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final canLongPressArea(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->isFingerprintArea(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->longPressAllowHeight:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->parentView$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mContinuityLockScreenContainer:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    goto/16 :goto_c

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_2

    move-object v2, v0

    :cond_2
    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNowBarContainer:Landroid/view/View;

    if-nez v2, :cond_3

    const-string v2, "NotificationPanelView"

    const-string v3, "provideFaceWidgetNowBarContainer nowbarRootView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_3
    move-object v0, v2

    goto/16 :goto_c

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const v2, 0x7f0a0585

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_c

    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    goto/16 :goto_c

    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_6

    move-object v2, v0

    :cond_6
    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v2, :cond_12

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    goto/16 :goto_c

    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_7

    move-object v2, v0

    :cond_7
    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-nez v2, :cond_8

    move-object v2, v0

    goto :goto_3

    :cond_8
    iget-object v2, v2, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mContentsContainerList:Ljava/util/List;

    :goto_3
    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_c

    :cond_9
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto/16 :goto_c

    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    move-object v0, v2

    :goto_4
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewController;->getLockIconContainer()Landroid/view/ViewGroup;

    move-result-object v0

    goto/16 :goto_c

    :pswitch_7
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_b

    goto :goto_5

    :cond_b
    move-object v0, v2

    :goto_5
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->indicationArea$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_c

    :pswitch_8
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    move-object v0, v2

    :goto_6
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_c

    :pswitch_9
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_d

    goto :goto_7

    :cond_d
    move-object v0, v2

    :goto_7
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_c

    :pswitch_a
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    move-object v0, v2

    :goto_8
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :pswitch_b
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_f

    goto :goto_9

    :cond_f
    move-object v0, v2

    :goto_9
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    goto :goto_c

    :pswitch_c
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_10

    goto :goto_a

    :cond_10
    move-object v0, v2

    :goto_a
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->getClockView()Landroid/view/View;

    move-result-object v0

    goto :goto_c

    :pswitch_d
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->viewInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;

    if-nez v2, :cond_11

    goto :goto_b

    :cond_11
    move-object v0, v2

    :goto_b
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    :cond_12
    :goto_c
    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    :cond_13
    const/4 v1, 0x0

    :goto_d
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isAnimationRunning$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->isTapAnimationRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/DragViewController;->restoreAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isViRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isAnimationRunning$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->securityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isDoubleTapToSleepAllowed()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x3002

    const/16 v2, 0x1002

    if-ne v0, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->gestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->actionHandlerTypes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/android/systemui/keyguard/animator/ActionHandlerType;->Companion:Lcom/android/systemui/keyguard/animator/ActionHandlerType$Companion;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_9

    if-eq v4, v3, :cond_8

    const/4 v2, 0x2

    if-eq v4, v2, :cond_7

    const/4 v2, 0x3

    if-eq v4, v2, :cond_8

    const/4 v2, 0x5

    if-eq v4, v2, :cond_6

    const/4 v2, 0x6

    if-eq v4, v2, :cond_8

    new-instance v2, Lcom/android/systemui/keyguard/animator/ActionDefaultHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/animator/ActionDefaultHandler;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    goto :goto_1

    :cond_6
    new-instance v2, Lcom/android/systemui/keyguard/animator/ActionPointerDownHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/animator/ActionPointerDownHandler;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    goto :goto_1

    :cond_7
    new-instance v2, Lcom/android/systemui/keyguard/animator/ActionMoveHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/animator/ActionMoveHandler;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    goto :goto_1

    :cond_8
    new-instance v2, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    goto :goto_1

    :cond_9
    new-instance v2, Lcom/android/systemui/keyguard/animator/ActionDownHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyguard/animator/ActionDownHandler;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    :goto_1
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    check-cast v2, Lcom/android/systemui/keyguard/animator/ActionHandlerType;

    invoke-virtual {v2, p1}, Lcom/android/systemui/keyguard/animator/ActionHandlerType;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final reset(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    const-string v1, "reset unlockExecuted="

    const-string v2, "KeyguardTouchAnimator"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->screenOnViewController:Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;->screenOnSpringAnimationList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;->restoreSpringAnimationList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    iget-object v1, v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->tapSpringAnimationList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimationList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->restoreSpringAnimRunnable:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController$restoreSpringAnimRunnable$1;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->isTapAnimationRunning:Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->fullScreenViewController:Lcom/android/systemui/keyguard/animator/FullScreenViewController;

    iget-object v3, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->fullScreenAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    iget-boolean v3, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    if-eqz v3, :cond_4

    const-string v3, "reset mFullScreenModeEnabled true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullscreenModeEnabled:Z

    :cond_4
    iput-boolean v1, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->isFullScreenModeShown:Z

    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/FullScreenViewController;->longPressCallback:Lcom/android/systemui/keyguard/animator/FullScreenViewController$longPressCallback$1;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/DragViewController;->unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, v0, Lcom/android/systemui/keyguard/animator/DragViewController;->restoreAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->isKeyguardState()Z

    move-result v2

    const-string v3, "reset "

    const-string v4, "KeyguardEditModeAnimatorController"

    invoke-static {v3, v4, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const-string v2, "longPressJob?.cancel"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->isKeyguardState()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->resetViews()V

    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    :cond_8
    if-eqz p1, :cond_9

    const p1, 0x3f733333    # 0.95f

    goto :goto_4

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->resetChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->hasDozeAmount:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroid/graphics/PointF;->x:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final resetChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resetChildViewVI(): isUnlockExecuted="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " scale="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardTouchAnimator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->showViewState(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "resetChildViewVI vIRunning"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->notiScale:F

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v2, v1, :cond_5

    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->showViewState(Landroid/view/View;)V

    :cond_2
    const v5, 0x3f733333    # 0.95f

    cmpg-float v5, p1, v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->screenOnViewController:Lcom/android/systemui/keyguard/animator/ScreenOnAffordanceViewController;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, p1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->keyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

    invoke-virtual {p0, v3}, Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;->updateAlpha(F)V

    return-void
.end method

.method public final restoreChildViewVI$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->tapAffordanceViewController:Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;

    iget-boolean v1, v1, Lcom/android/systemui/keyguard/animator/TapAffordanceViewController;->isTapAnimationRunning:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->dragViewController:Lcom/android/systemui/keyguard/animator/DragViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/keyguard/animator/DragViewController;->createAnimatorSet$default(Lcom/android/systemui/keyguard/animator/DragViewController;I)Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/DragViewController;->dragViews:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v6, v3, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/high16 v7, 0x437a0000    # 250.0f

    const v8, 0x3f333333    # 0.7f

    invoke-static {v7, v8}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v9

    iput-object v9, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {v6, v3, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-static {v7, v8}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    iput-object v7, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v6, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    new-instance v6, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$12;

    invoke-direct {v6, v3, v7}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const v7, 0x44098000    # 550.0f

    const v8, 0x3f75c28f    # 0.96f

    invoke-static {v7, v8}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    iput-object v7, v6, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lcom/android/systemui/keyguard/animator/ViewAnimationController$setViewAnimationRestoreDrag$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController$setViewAnimationRestoreDrag$1;-><init>(Lcom/android/systemui/keyguard/animator/ViewAnimationController;)V

    invoke-virtual {v6, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    :cond_7
    invoke-virtual {v6, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v5, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v0, v2, v4}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    :cond_9
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_a
    :goto_4
    const-string/jumbo p0, "restoreChildViewVI(): "

    const-string v1, "KeyguardTouchAnimator"

    invoke-static {p0, v1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateAffordace(Landroid/view/DisplayInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->pivotViewController:Lcom/android/systemui/keyguard/animator/PivotViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotX:I

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/systemui/keyguard/animator/PivotViewController;->affordancePivotY:I

    return-void
.end method
