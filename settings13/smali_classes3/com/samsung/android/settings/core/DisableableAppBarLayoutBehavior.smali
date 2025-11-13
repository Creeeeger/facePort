.class public Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "DisableableAppBarLayoutBehavior.java"


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->mEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->mEnabled:Z

    return p0
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    .line 11
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 0

    .line 11
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-super/range {p0 .. p8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 11
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/settings/core/DisableableAppBarLayoutBehavior;->mEnabled:Z

    return-void
.end method
