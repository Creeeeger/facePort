.class Lcom/samsung/android/ims/options/SemCapabilityListener$1;
.super Landroid/os/Handler;
.source "SemCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemCapabilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilityListener;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ims/options/SemCapabilityListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 117
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilityListener;->onCapabilityAndAvailabilityPublished(I)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 132
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;>;"
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/ims/util/SemImsUri;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/ims/options/SemCapabilities;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/ims/options/SemCapabilityListener;->onCapabilitiesChanged(Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;)V

    .line 133
    goto :goto_0

    .line 129
    .end local v0    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/ims/util/SemImsUri;Lcom/samsung/android/ims/options/SemCapabilities;>;"
    :pswitch_2
    goto :goto_0

    .line 125
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOwnCapabilitiesChanged: listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCapabilityListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityListener$1;->this$0:Lcom/samsung/android/ims/options/SemCapabilityListener;

    invoke-virtual {v0}, Lcom/samsung/android/ims/options/SemCapabilityListener;->onOwnCapabilitiesChanged()V

    .line 127
    nop

    .line 138
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
