.class public final Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeFoldAnimator;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildViewAnimator(Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$1;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$2;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$3;)Landroid/view/ViewPropertyAnimator;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v7, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl$1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final cancelFoldToAodAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->resetAlpha()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->resetTranslation()V

    return-void
.end method

.method public final getView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    return-object p0
.end method

.method public final prepareFoldToAodAnimation()V
    .locals 2

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->showAodUi()V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final startFoldToAodAnimation(Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$1;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$2;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$3;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeFoldAnimatorImpl;->buildViewAnimator(Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$1;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$2;Lcom/android/systemui/unfold/FoldAodAnimationController$startAnimationRunnable$1$3;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda26;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda26;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
