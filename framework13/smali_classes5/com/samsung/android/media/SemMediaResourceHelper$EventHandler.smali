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
    .param p2, "semMediaResourceHelper"    # Lcom/samsung/android/media/SemMediaResourceHelper;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 405
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 406
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 407
    iput-object p2, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    .line 408
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 412
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "SemMediaResourceHelper"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 442
    :sswitch_0
    const-string v0, "onError"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->mMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onError(Lcom/samsung/android/media/SemMediaResourceHelper;)V

    goto :goto_0

    .line 467
    :sswitch_1
    const-string v0, "onCapacityError"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 471
    .local v0, "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmVideoCapacityErrorListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper$VideoCapacityErrorListener;->onError(Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;)V

    goto :goto_0

    .line 454
    .end local v0    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    :sswitch_2
    const-string v0, "onState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 458
    .restart local v0    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmCodecStateChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$CodecStateChangedListener;->onStateChanged(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 429
    .end local v0    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    :sswitch_3
    const-string v0, "onRemove"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 433
    .restart local v0    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onRemove(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 416
    .end local v0    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    :sswitch_4
    const-string v0, "onAdd"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 420
    .restart local v0    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaResourceHelper$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->-$$Nest$fgetmResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper;)Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;->onAdd(Ljava/util/ArrayList;)V

    .line 482
    .end local v0    # "mediaResourceInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/media/SemMediaResourceHelper$MediaResourceInfo;>;"
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
