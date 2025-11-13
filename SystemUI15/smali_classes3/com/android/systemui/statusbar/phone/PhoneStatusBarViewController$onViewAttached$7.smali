.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic $viewsToAnimate:[Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;[Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$7;->$viewsToAnimate:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->moveFromCenterAnimationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$7;->$viewsToAnimate:[Landroid/view/View;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->moveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-static {v2}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->updateDisplayProperties$default(Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;)V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    new-instance v12, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;-><init>(Ljava/lang/ref/WeakReference;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v12, v5}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->updateAnimatedView(Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$AnimatedView;Landroid/view/View;)V

    iget-object v5, v2, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->animatedViews:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->progressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    iget-object v1, v1, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->transitionListener:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->access$getMView$p$s1936973844(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 p0, 0x1

    return p0
.end method
