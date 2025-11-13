.class Landroid/media/tv/TvView$1;
.super Ljava/lang/Object;
.source "TvView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, p2}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceFormat(Landroid/media/tv/TvView;I)V

    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, p3}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceWidth(Landroid/media/tv/TvView;I)V

    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, p4}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceHeight(Landroid/media/tv/TvView;I)V

    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/TvView;Z)V

    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    iget-object v1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceFormat(Landroid/media/tv/TvView;)I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v2}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceWidth(Landroid/media/tv/TvView;)I

    move-result v2

    iget-object v3, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v3}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceHeight(Landroid/media/tv/TvView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/media/tv/TvView;->-$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/TvView;III)V

    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-$$Nest$fputmSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    iget-object v1, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurface(Landroid/media/tv/TvView;)Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-$$Nest$msetSessionSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-$$Nest$fputmSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceChanged(Landroid/media/tv/TvView;Z)V

    iget-object v0, p0, Landroid/media/tv/TvView$1;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-$$Nest$msetSessionSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    return-void
.end method
