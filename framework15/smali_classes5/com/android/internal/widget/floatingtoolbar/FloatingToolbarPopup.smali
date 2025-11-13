.class public interface abstract Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;
.super Ljava/lang/Object;
.source "FloatingToolbarPopup.java"


# direct methods
.method public static blacklist createInstance(Landroid/content/Context;Landroid/view/View;Z)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist dismiss()V
.end method

.method public abstract blacklist getMovedPos()Landroid/graphics/Point;
.end method

.method public abstract blacklist hide()V
.end method

.method public abstract blacklist isDiscardTouch()Z
.end method

.method public abstract blacklist isDismissed()Z
.end method

.method public abstract blacklist isHidden()Z
.end method

.method public abstract blacklist isMovingStarted()Z
.end method

.method public abstract blacklist isShowing()Z
.end method

.method public abstract blacklist onDetachFromWindow()V
.end method

.method public abstract blacklist setIsMovingStarted(Z)V
.end method

.method public abstract blacklist setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)Z
.end method

.method public abstract blacklist setSuggestedWidth(I)V
.end method

.method public abstract blacklist setWidthChanged(Z)V
.end method

.method public abstract blacklist show(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method
