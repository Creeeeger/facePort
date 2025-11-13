.class public final Lcom/google/android/material/search/SearchViewAnimationHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget-object p1, p1, Lcom/google/android/material/search/SearchViewAnimationHelper;->rootView:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget-object p1, p1, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->isAdjustNothingSoftInputMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget-object p1, p1, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    invoke-virtual {p1}, Lcom/google/android/material/search/SearchView;->clearFocusAndHideKeyboard()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    sget-object p1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDDEN:Lcom/google/android/material/search/SearchView$TransitionState;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;Z)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget-object p0, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchView:Lcom/google/android/material/search/SearchView;

    sget-object p1, Lcom/google/android/material/search/SearchView$TransitionState;->HIDING:Lcom/google/android/material/search/SearchView$TransitionState;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/search/SearchView;->setTransitionState(Lcom/google/android/material/search/SearchView$TransitionState;Z)V

    return-void
.end method
