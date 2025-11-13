.class public Lcom/google/android/material/search/SearchView$Behavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    check-cast p2, Lcom/google/android/material/search/SearchView;

    iget-object p0, p2, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz p0, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of p0, p3, Lcom/google/android/material/search/SearchBar;

    if-eqz p0, :cond_6

    check-cast p3, Lcom/google/android/material/search/SearchBar;

    iput-object p3, p2, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    iget-object p0, p2, Lcom/google/android/material/search/SearchView;->searchViewAnimationHelper:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iput-object p3, p0, Lcom/google/android/material/search/SearchViewAnimationHelper;->searchBar:Lcom/google/android/material/search/SearchBar;

    if-eqz p3, :cond_1

    new-instance p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda3;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/search/SearchView;I)V

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    new-instance p0, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/material/search/SearchView$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/search/SearchView;I)V

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->setHandwritingDelegatorCallback(Ljava/lang/Runnable;)V

    iget-object p0, p2, Lcom/google/android/material/search/SearchView;->editText:Landroid/widget/EditText;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setIsHandwritingDelegate(Z)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object p0, p2, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p2, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    const p1, 0x7f080802

    if-nez p0, :cond_4

    iget-object p0, p2, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object p1, p2, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    iget-object p1, p1, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_5
    iget-object p1, p2, Lcom/google/android/material/search/SearchView;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance p3, Lcom/google/android/material/internal/FadeThroughDrawable;

    iget-object v0, p2, Lcom/google/android/material/search/SearchView;->searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p3, v0, p0}, Lcom/google/android/material/internal/FadeThroughDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p3}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/google/android/material/search/SearchView;->updateNavigationIconProgressIfNeeded()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/material/search/SearchView;->setUpBackgroundViewElevationOverlay()V

    iget-object p0, p2, Lcom/google/android/material/search/SearchView;->currentTransitionState:Lcom/google/android/material/search/SearchView$TransitionState;

    invoke-virtual {p2, p0}, Lcom/google/android/material/search/SearchView;->updateListeningForBackCallbacks(Lcom/google/android/material/search/SearchView$TransitionState;)V

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
