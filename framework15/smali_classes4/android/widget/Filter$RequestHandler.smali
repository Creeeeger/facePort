.class Landroid/widget/Filter$RequestHandler;
.super Landroid/os/Handler;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Filter;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/Filter;Landroid/os/Looper;)V
    .locals 0
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

    iput-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    iget-object v1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v1}, Landroid/widget/Filter;->-$$Nest$fgetmLock(Landroid/widget/Filter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v2}, Landroid/widget/Filter;->-$$Nest$fgetmThreadHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v2}, Landroid/widget/Filter;->-$$Nest$fgetmThreadHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/widget/Filter;->-$$Nest$fputmThreadHandler(Landroid/widget/Filter;Landroid/os/Handler;)V

    :cond_0
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/Filter$RequestArguments;

    :try_start_1
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    iget-object v3, v1, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Filter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    :goto_0
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v2}, Landroid/widget/Filter;->-$$Nest$fgetmResultHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v3, v1, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    const-string v3, "Filter"

    const-string v4, "An exception occured during performFiltering()!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    goto :goto_0

    :goto_1
    iget-object v3, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v3}, Landroid/widget/Filter;->-$$Nest$fgetmLock(Landroid/widget/Filter;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v4}, Landroid/widget/Filter;->-$$Nest$fgetmThreadHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v4}, Landroid/widget/Filter;->-$$Nest$fgetmThreadHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v4

    const v5, -0x21524111

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v5}, Landroid/widget/Filter;->-$$Nest$fgetmThreadHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    monitor-exit v3

    goto :goto_3

    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    :goto_2
    iget-object v3, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v3}, Landroid/widget/Filter;->-$$Nest$fgetmResultHandler(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    throw v2

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f2f0ff3 -> :sswitch_1
        -0x21524111 -> :sswitch_0
    .end sparse-switch
.end method
