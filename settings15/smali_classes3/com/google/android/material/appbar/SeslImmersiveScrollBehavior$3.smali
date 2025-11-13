.class public final Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    return-void
.end method


# virtual methods
.method public final onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-object v1, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/google/android/material/appbar/AppBarLayout;->mCurrentOrientation:I

    if-ne v1, v3, :cond_1

    move v4, v2

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isNavigationBarBottomPosition()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-boolean v0, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCalledHideShowOnLayoutChild:Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->show(I)V

    invoke-interface {p1, v3}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iput-boolean v2, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mCalledHideShowOnLayoutChild:Z

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-boolean v0, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mIsSetAutoRestore:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    iget-object p2, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-object p1, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->mDecorViewInset:Landroid/view/WindowInsets;

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->isAppBarHide()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior$3;->this$0:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->restoreTopAndBottom(Z)V

    :cond_3
    return-void
.end method
