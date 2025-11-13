.class Landroid/media/MediaCas$EventHandler;
.super Landroid/os/Handler;
.source "MediaCas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final blacklist DATA_KEY:Ljava/lang/String; = "data"

.field private static final greylist-max-o MSG_CAS_EVENT:I = 0x0

.field private static final blacklist MSG_CAS_RESOURCE_LOST:I = 0x3

.field private static final blacklist MSG_CAS_SESSION_EVENT:I = 0x1

.field private static final blacklist MSG_CAS_STATUS_EVENT:I = 0x2

.field private static final blacklist SESSION_KEY:Ljava/lang/String; = "sessionId"


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaCas;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaCas;Landroid/os/Looper;)V
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

    iput-object p1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    :goto_0
    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/media/MediaCas$EventListener;->onEvent(Landroid/media/MediaCas;II[B)V

    goto :goto_1

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sessionId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v3}, Landroid/media/MediaCas;->-$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget-object v5, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-virtual {v5, v1}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Landroid/media/MediaCas$EventListener;->onSessionEvent(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;II[B)V

    goto :goto_1

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmTunerResourceManager(Landroid/media/MediaCas;)Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmTunerResourceManager(Landroid/media/MediaCas;)Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$fgetmCasSystemId(Landroid/media/MediaCas;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->updateCasInfo(II)V

    :cond_3
    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaCas$EventListener;->onPluginStatusUpdate(Landroid/media/MediaCas;II)V

    goto :goto_1

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$EventHandler;->this$0:Landroid/media/MediaCas;

    invoke-interface {v0, v1}, Landroid/media/MediaCas$EventListener;->onResourceLost(Landroid/media/MediaCas;)V

    :cond_5
    :goto_1
    return-void
.end method
