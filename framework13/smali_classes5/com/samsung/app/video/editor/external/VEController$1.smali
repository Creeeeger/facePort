.class Lcom/samsung/app/video/editor/external/VEController$1;
.super Landroid/os/Handler;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/app/video/editor/external/VEController;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/app/video/editor/external/VEController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/app/video/editor/external/VEController;

    .line 75
    iput-object p1, p0, Lcom/samsung/app/video/editor/external/VEController$1;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage :: msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 86
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController$1;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->playbackComplete()V

    .line 87
    goto :goto_0

    .line 89
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/app/video/editor/external/VEController$1;->this$0:Lcom/samsung/app/video/editor/external/VEController;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/VEController;->stop()V

    .line 90
    nop

    .line 161
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x820 -> :sswitch_1
        0x85c -> :sswitch_0
    .end sparse-switch
.end method
