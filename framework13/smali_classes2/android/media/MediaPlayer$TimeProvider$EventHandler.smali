.class Landroid/media/MediaPlayer$TimeProvider$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer$TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaPlayer$TimeProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 6869
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    .line 6870
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6871
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 6875
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6876
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 6884
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifySeek(Landroid/media/MediaPlayer$TimeProvider;)V

    goto :goto_0

    .line 6881
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyStop(Landroid/media/MediaPlayer$TimeProvider;)V

    .line 6882
    goto :goto_0

    .line 6878
    :pswitch_3
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyTimedEvent(Landroid/media/MediaPlayer$TimeProvider;Z)V

    .line 6879
    nop

    .line 6885
    :goto_0
    goto :goto_1

    .line 6894
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6895
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 6897
    :pswitch_4
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$0:Landroid/media/MediaPlayer$TimeProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-$$Nest$mnotifyTrackData(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V

    .line 6902
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch
.end method
