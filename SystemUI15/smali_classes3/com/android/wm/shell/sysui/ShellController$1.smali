.class public final Lcom/android/wm/shell/sysui/ShellController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# instance fields
.field public mInsetsState:Landroid/view/InsetsState;

.field public final synthetic this$0:Lcom/android/wm/shell/sysui/ShellController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController$1;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController$1;->mInsetsState:Landroid/view/InsetsState;

    return-void
.end method


# virtual methods
.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$1;->mInsetsState:Landroid/view/InsetsState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v5

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v3

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController$1;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    if-eq v4, v2, :cond_5

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/sysui/ShellController;->onImeVisibilityChanged(Z)V

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/sysui/ShellController;->onImeBoundsChanged(Landroid/graphics/Rect;)V

    :cond_6
    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController$1;->mInsetsState:Landroid/view/InsetsState;

    return-void
.end method
