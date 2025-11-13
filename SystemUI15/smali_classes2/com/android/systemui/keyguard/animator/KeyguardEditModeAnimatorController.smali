.class public final Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;
.super Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final alphaViews:Ljava/util/List;

.field public animatorSet:Landroid/animation/AnimatorSet;

.field public cancelAnimatorSet:Landroid/animation/AnimatorSet;

.field public final keyguardClickController:Lcom/android/systemui/keyguard/KeyguardClickController;

.field public final keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

.field public longPressJob:Lkotlinx/coroutines/Job;

.field public final noScaleViews:Ljava/util/List;

.field public final scaleViews:Ljava/util/List;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public startActivityJob:Lkotlinx/coroutines/Job;

.field public touchDownAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/keyguard/KeyguardEditModeController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/SecRotationWatcher;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/KeyguardClickController;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p6

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    move-object/from16 v2, p2

    iput-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v2, p3

    iput-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    move-object/from16 v2, p4

    iput-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    move-object/from16 v2, p5

    iput-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v2, p7

    iput-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v2, p8

    iput-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardClickController:Lcom/android/systemui/keyguard/KeyguardClickController;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object v3, v2

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->alphaViews:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v3, v2

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object v12, v15

    filled-new-array/range {v3 .. v12}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->scaleViews:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->noScaleViews:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    iget-object v3, v0, Lcom/android/keyguard/SecRotationWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/keyguard/SecRotationWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    iget-object v4, v0, Lcom/android/keyguard/SecRotationWatcher;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v0, Lcom/android/keyguard/SecRotationWatcher;->mCurrentRotation:I

    invoke-virtual {v2, v4}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$1;->accept(I)V

    if-eqz v3, :cond_1

    const-string v2, "SecRotationWatcher"

    :try_start_0
    const-string v3, "enable watchRotation"

    invoke-static {v2, v3}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    iget-object v4, v0, Lcom/android/keyguard/SecRotationWatcher;->mWatcher:Lcom/android/keyguard/SecRotationWatcher$1;

    iget-object v0, v0, Lcom/android/keyguard/SecRotationWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-interface {v3, v4, v0}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Failed to set rotation watcher"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    new-instance v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$2;

    invoke-direct {v2, v1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$2;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isAnimationRunning:Lkotlin/jvm/functions/Function0;

    iget-object v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    new-instance v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$3;

    invoke-direct {v2, v1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$3;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    new-instance v2, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$4;

    invoke-direct {v2, v1}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$4;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->startCancelAnimationFunction:Lkotlin/jvm/functions/Function0;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->cancelAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public final animate(Z)V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$initAnimatorSet$1$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->getEditModePivot()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->getEditModePivot()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v10, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    move-object v0, v10

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget v3, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    goto :goto_1

    :cond_3
    move-object v1, v10

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    move-object v1, v10

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x64

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->noScaleViews:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->getEditModePivot()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->getEditModePivot()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    move-object v3, v10

    check-cast v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget v3, v3, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    div-float v3, v0, v3

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    goto :goto_3

    :cond_6
    move-object v1, v10

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    div-float v1, v0, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    move-object v1, v10

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget v1, v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x64

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->alphaViews:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x96

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAlphaAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    goto :goto_5

    :cond_a
    invoke-virtual {v8, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x12c

    const-wide/16 v6, 0x12c

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAlphaAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    goto :goto_5

    :cond_b
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->scaleViews:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewScaleAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FJJ)V

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    check-cast v10, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v10, p1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->startAnimation(Z)V

    if-eqz p1, :cond_f

    invoke-virtual {v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_f
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_10

    const-string v1, "1"

    goto :goto_8

    :cond_10
    const-string v1, "2"

    :goto_8
    const-string v2, "LSE1011E"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final cancel$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 4

    const-string v0, "KeyguardEditModeAnimatorController"

    const-string v1, "cancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "longPressJob?.cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->longPressJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cancel : isAnimationRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startCancelAnimation()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->isKeyguardState()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    if-ne v1, v3, :cond_5

    const-string/jumbo v1, "startActivityJob?.cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_5

    invoke-interface {v0, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardWallpaper:Lcom/android/systemui/wallpaper/KeyguardWallpaper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final getEditModePivot()Lkotlin/Pair;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v3, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewTopMargin:F

    mul-float/2addr v0, v3

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->previewScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p0

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    return p0
.end method

.method public final isLongPressed$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result v0

    const-string v1, "KeyguardEditModeAnimatorController"

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "long pressed false"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "long pressed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final isNotSupportedAnimation()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final resetViews()V
    .locals 7

    const-string v0, "KeyguardEditModeAnimatorController"

    const-string/jumbo v1, "resetViews"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->noScaleViews:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->alphaViews:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->scaleViews:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    const-string/jumbo v1, "startActivityJob?.cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->startActivityJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_9
    return-void
.end method

.method public final startCancelAnimation()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "startCancelAnimation"

    const-string v3, "KeyguardEditModeAnimatorController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->isKeyguardState()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "startCancelAnimation : is not keyguard state"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->resetViews()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->touchDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->keyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->keyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->cancel()V

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->cancelAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getParentView$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v3, v5, v4, v4}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    iget-object v5, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->alphaViews:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    new-array v7, v0, [Landroid/animation/Animator;

    invoke-virtual {v2, v6}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v6

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v0, [F

    aput v4, v9, v1

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->alphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v6, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v6, v7, v1

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->noScaleViews:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->hasView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v3, v1, v4, v4}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->setViewAnimation(Landroid/animation/AnimatorSet;Landroid/view/View;FF)V

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController$startCancelAnimation$2$5;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iput-object v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->cancelAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method
