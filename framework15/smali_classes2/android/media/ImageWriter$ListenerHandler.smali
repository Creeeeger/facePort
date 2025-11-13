.class final Landroid/media/ImageWriter$ListenerHandler;
.super Landroid/os/Handler;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/ImageWriter;


# direct methods
.method public constructor blacklist <init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-static {v0}, Landroid/media/ImageWriter;->-$$Nest$fgetmListenerLock(Landroid/media/ImageWriter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-static {v1}, Landroid/media/ImageWriter;->-$$Nest$fgetmListener(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-static {v0}, Landroid/media/ImageWriter;->-$$Nest$fgetmCloseLock(Landroid/media/ImageWriter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-static {v0}, Landroid/media/ImageWriter;->-$$Nest$fgetmIsWriterValid(Landroid/media/ImageWriter;)Z

    move-result v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/media/ImageWriter$ListenerHandler;->this$0:Landroid/media/ImageWriter;

    invoke-interface {v1, v2}, Landroid/media/ImageWriter$OnImageReleasedListener;->onImageReleased(Landroid/media/ImageWriter;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
