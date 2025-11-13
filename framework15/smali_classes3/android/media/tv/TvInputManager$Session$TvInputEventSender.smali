.class final Landroid/media/tv/TvInputManager$Session$TvInputEventSender;
.super Landroid/view/InputEventSender;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInputEventSender"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputManager$Session;


# direct methods
.method public constructor blacklist <init>(Landroid/media/tv/TvInputManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V
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

    iput-object p1, p0, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->this$0:Landroid/media/tv/TvInputManager$Session;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventSender;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onInputEventFinished(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$Session$TvInputEventSender;->this$0:Landroid/media/tv/TvInputManager$Session;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/tv/TvInputManager$Session;->finishedInputEvent(IZZ)V

    return-void
.end method
