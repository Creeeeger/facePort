.class Lcom/samsung/android/media/SemMediaPlayer$TimeProvider$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3020
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    .line 3021
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3022
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 3026
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3027
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3035
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->-$$Nest$mnotifySeek(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;)V

    goto :goto_0

    .line 3032
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->-$$Nest$mnotifyStop(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;)V

    .line 3033
    goto :goto_0

    .line 3029
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->-$$Nest$mnotifyTimedEvent(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;Z)V

    .line 3030
    nop

    .line 3036
    :goto_0
    goto :goto_1

    .line 3039
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3040
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 3042
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    invoke-static {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->-$$Nest$mnotifyTrackData(Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;Landroid/util/Pair;)V

    .line 3046
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
