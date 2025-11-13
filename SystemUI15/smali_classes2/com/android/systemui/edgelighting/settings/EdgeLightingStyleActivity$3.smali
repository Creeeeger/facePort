.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    const v5, 0x7f0a0689

    if-ne v3, v5, :cond_4

    iget-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v3, v3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    const-string v5, "empty view clicked"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v5, v3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    if-eqz v5, :cond_1

    iget-boolean v6, v3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    if-eqz v6, :cond_1

    invoke-virtual {v3, v4}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout(I)V

    goto/16 :goto_0

    :cond_1
    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->playEdgeLightingByHandler()V

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-boolean v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_3
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07136c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    neg-float v3, v3

    const/4 v6, 0x0

    new-array v7, v2, [F

    aput v6, v7, v4

    aput v3, v7, v1

    const-string/jumbo v8, "translationY"

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v9, 0x12c

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v7, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    new-array v12, v2, [F

    fill-array-data v12, :array_0

    const-string v13, "alpha"

    invoke-static {v7, v13, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v14, 0x96

    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v12, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    new-array v11, v2, [F

    aput v6, v11, v4

    aput v3, v11, v1

    invoke-static {v12, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    new-array v8, v2, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v13, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3e4ccccd    # 0.2f

    const v11, 0x3e2e147b    # 0.17f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v11, v11, v10, v12}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v3, v9, v4

    aput-object v5, v9, v1

    aput-object v6, v9, v2

    const/4 v2, 0x3

    aput-object v7, v9, v2

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$5;

    invoke-direct {v3, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$5;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_0
    return v4

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
