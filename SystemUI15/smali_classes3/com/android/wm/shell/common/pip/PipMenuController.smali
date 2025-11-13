.class public interface abstract Lcom/android/wm/shell/common/pip/PipMenuController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static getPipMenuLayoutParams(Landroid/content/Context;II)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    const/16 v3, 0x7f6

    const v4, 0x20840010

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget p1, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p2, 0x20000000

    or-int/2addr p1, p2

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string p1, "PipMenuView"

    invoke-virtual {v6, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f130db6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    return-object v6
.end method


# virtual methods
.method public abstract attach(Landroid/view/SurfaceControl;)V
.end method

.method public abstract detach()V
.end method

.method public abstract isMenuVisible()Z
.end method

.method public abstract movePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public abstract resizePipMenu(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public setSplitMenuEnabled(Z)V
    .locals 0

    return-void
.end method

.method public abstract updateMenuBounds(Landroid/graphics/Rect;)V
.end method
