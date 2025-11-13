.class Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaResourceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private blacklist mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemMediaResourceHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/SemMediaResourceHelper;Lcom/samsung/android/media/SemMediaResourceHelper;Landroid/os/Looper;)V
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

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "SemMediaResourceHelper"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "onError"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onError(Lcom/samsung/android/media/SemMediaResourceHelper;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "onCapacityError"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;->onError(Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;)V

    :cond_0
    goto :goto_0

    :sswitch_2
    const-string v0, "onState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;->onStateChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    :sswitch_3
    const-string v0, "onRemove"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onRemove(Ljava/util/ArrayList;)V

    goto :goto_0

    :sswitch_4
    const-string v0, "onAdd"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onAdd(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
