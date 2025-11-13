.class public abstract Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mToolbardelegate:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    new-instance p1, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    new-instance v0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment$DelegateCallback;

    invoke-direct {v0, p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment$DelegateCallback;-><init>(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment;)V

    invoke-direct {p1, v0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;-><init>(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment$DelegateCallback;)V

    iput-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment;->mToolbardelegate:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment;->mToolbardelegate:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p3, 0x7f0d0172

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    :cond_0
    const p2, 0x7f0a0394

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const p2, 0x7f0a0102

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const p3, 0x3f8ccccd    # 1.1f

    iput p3, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->lineSpacingMultiplier:F

    const/4 p3, 0x3

    iput p3, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->hyphenationFrequency:I

    new-instance p3, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer;

    if-eq v0, p3, :cond_1

    iput-object p3, p2, Lcom/google/android/material/internal/CollapsingTextHelper;->staticLayoutBuilderConfigurer:Lcom/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate(Z)V

    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    new-instance p3, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    new-instance v0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onDragCallback:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;

    invoke-virtual {p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :goto_0
    const p2, 0x7f0a041c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mContentFrameLayout:Landroid/widget/FrameLayout;

    const-string p2, "onCreateView: from NonAppCompatActivity."

    const-string p3, "CTBdelegate"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x7f0a0068

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Toolbar;

    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mHostCallback:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment$DelegateCallback;

    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment$DelegateCallback;->this$0:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarBaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    return-object p1
.end method
