.class public final Lcom/android/systemui/keyguard/animator/DragViewController;
.super Lcom/android/systemui/keyguard/animator/ViewAnimationController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dragViews:Ljava/util/List;

.field public final keyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

.field public final onlyAlphaDragViews:Ljava/util/List;

.field public restoreAnimatorSet:Landroid/animation/AnimatorSet;

.field public unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/animator/DragViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/DragViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/keyguard/animator/ViewAnimationController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/systemui/keyguard/animator/DragViewController;->keyguardStatusViewAlphaChangeControllerWrapper:Lcom/android/systemui/facewidget/plugin/KeyguardStatusViewAlphaChangeControllerWrapper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v2, v1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object v7, v12

    move-object/from16 v8, v16

    move-object v9, v11

    move-object/from16 p1, v10

    move-object/from16 v10, v17

    move-object/from16 p2, v14

    move-object v14, v11

    move-object/from16 v11, v18

    move-object/from16 v19, v13

    move-object v13, v12

    move-object/from16 v12, p1

    filled-new-array/range {v2 .. v12}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/animator/DragViewController;->dragViews:Ljava/util/List;

    move-object/from16 v11, p1

    filled-new-array {v15, v13, v14, v11}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/animator/DragViewController;->onlyAlphaDragViews:Ljava/util/List;

    move-object v2, v1

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object v5, v15

    move-object v6, v13

    move-object/from16 v7, v16

    move-object v8, v14

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/animator/DragViewController;->unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/animator/DragViewController;->restoreAnimatorSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static createAnimatorSet$default(Lcom/android/systemui/keyguard/animator/DragViewController;I)Landroid/animation/AnimatorSet;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->SINE_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/DragViewController;->restoreAnimatorSet:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/ViewAnimationController;->SINE_IN_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/DragViewController;->unlockViewHideAnimatorSet:Landroid/animation/AnimatorSet;

    :goto_0
    return-object v0
.end method
