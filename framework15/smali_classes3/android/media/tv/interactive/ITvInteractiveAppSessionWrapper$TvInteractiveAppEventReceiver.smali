.class final Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ITvInteractiveAppSessionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInteractiveAppEventReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->this$0:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->this$0:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->-$$Nest$fgetmSessionImpl(Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;)Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->this$0:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->-$$Nest$fgetmSessionImpl(Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;)Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :cond_2
    return-void
.end method
