.class Landroid/view/InsetsController$1;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/inputmethod/ImeTracker$InputMethodJankContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/InsetsController;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDisplayContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getRootViewContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getHostPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-static {v0}, Landroid/view/InsetsController;->-$$Nest$fgetmHost(Landroid/view/InsetsController;)Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getRootViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getTargetSurfaceControl()Landroid/view/SurfaceControl;
    .locals 2

    iget-object v0, p0, Landroid/view/InsetsController$1;->this$0:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getImeSourceConsumer()Landroid/view/InsetsSourceConsumer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
