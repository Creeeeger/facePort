.class public final Lcom/android/settingslib/widget/ActionBarShadowController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final ELEVATION_HIGH:F = 8.0f

.field static final ELEVATION_LOW:F


# instance fields
.field public mIsScrollWatcherAttached:Z

.field mScrollChangeWatcher:Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;

.field public mScrollView:Landroid/view/View;


# direct methods
.method private attachScrollWatcher()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mIsScrollWatcherAttached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mIsScrollWatcherAttached:Z

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;

    iget-object p0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    iget-object v0, v0, Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const/high16 p0, 0x41000000    # 8.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->setElevation(F)V

    :cond_1
    return-void
.end method

.method public static attachToView(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    new-instance v0, Lcom/android/settingslib/widget/ActionBarShadowController;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-direct {v1, p0}, Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v1, v0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settingslib/widget/ActionBarShadowController$ScrollChangeWatcher;

    iput-object p2, v0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollView:Landroid/view/View;

    invoke-direct {v0}, Lcom/android/settingslib/widget/ActionBarShadowController;->attachScrollWatcher()V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private detachScrollWatcher()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mScrollView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionBarShadowController;->mIsScrollWatcherAttached:Z

    return-void
.end method
