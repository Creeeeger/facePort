.class final Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;
.super Ljava/lang/Object;
.source "DreamOverlayConnectionHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayHandlerCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;


# direct methods
.method private constructor blacklist <init>(Landroid/service/dreams/DreamOverlayConnectionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;-><init>(Landroid/service/dreams/DreamOverlayConnectionHandler;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/dreams/IDreamOverlayClient;

    invoke-static {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$monOverlayClientReady(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/IDreamOverlayClient;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$monRemoveConsumer(Landroid/service/dreams/DreamOverlayConnectionHandler;Ljava/util/function/Consumer;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayHandlerCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$monAddConsumer(Landroid/service/dreams/DreamOverlayConnectionHandler;Ljava/util/function/Consumer;)V

    nop

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
