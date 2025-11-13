.class public Lcom/samsung/android/sume/Reply;
.super Ljava/lang/Object;
.source "Reply.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist contentsId:I

.field private blacklist data:Landroid/os/Bundle;

.field private blacklist event:Lcom/samsung/android/sume/Event;

.field private blacklist nnId:I

.field private blacklist postCb:Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/samsung/android/sume/Reply;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/Reply;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/android/sume/Event;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/Reply;->data:Landroid/os/Bundle;

    .line 21
    iput-object p1, p0, Lcom/samsung/android/sume/Reply;->event:Lcom/samsung/android/sume/Event;

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/Event;IILandroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # Lcom/samsung/android/sume/Event;
    .param p2, "nnId"    # I
    .param p3, "contentsId"    # I
    .param p4, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "nnId",
            "contentsId",
            "data"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/Reply;->data:Landroid/os/Bundle;

    .line 25
    iput-object p1, p0, Lcom/samsung/android/sume/Reply;->event:Lcom/samsung/android/sume/Event;

    .line 26
    iput p2, p0, Lcom/samsung/android/sume/Reply;->nnId:I

    .line 27
    iput p3, p0, Lcom/samsung/android/sume/Reply;->contentsId:I

    .line 28
    iput-object p4, p0, Lcom/samsung/android/sume/Reply;->data:Landroid/os/Bundle;

    .line 29
    return-void
.end method

.method public static blacklist from(Landroid/os/Message;)Lcom/samsung/android/sume/Reply;
    .locals 5
    .param p0, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/samsung/android/sume/Reply;

    const-class v1, Lcom/samsung/android/sume/Event;

    iget v2, p0, Landroid/os/Message;->what:I

    .line 76
    invoke-static {v1, v2}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/Event;

    iget v2, p0, Landroid/os/Message;->arg1:I

    iget v3, p0, Landroid/os/Message;->arg2:I

    .line 79
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sume/Reply;-><init>(Lcom/samsung/android/sume/Event;IILandroid/os/Bundle;)V

    .line 75
    return-object v0
.end method


# virtual methods
.method public blacklist getContentsId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/samsung/android/sume/Reply;->contentsId:I

    return v0
.end method

.method public blacklist getData()Landroid/os/Bundle;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sume/Reply;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getEvent()Lcom/samsung/android/sume/Event;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sume/Reply;->event:Lcom/samsung/android/sume/Event;

    return-object v0
.end method

.method public blacklist getNNId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/android/sume/Reply;->nnId:I

    return v0
.end method

.method public blacklist post(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messenger"
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sume/Reply;->event:Lcom/samsung/android/sume/Event;

    invoke-virtual {v1}, Lcom/samsung/android/sume/Event;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 62
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/samsung/android/sume/Reply;->nnId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 63
    iget v1, p0, Lcom/samsung/android/sume/Reply;->contentsId:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 64
    iget-object v1, p0, Lcom/samsung/android/sume/Reply;->data:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v0    # "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/samsung/android/sume/Reply;->postCb:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 70
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-object v1, Lcom/samsung/android/sume/Reply;->TAG:Ljava/lang/String;

    const-string v2, "client is disconnected abnormally, ignore this reply"

    invoke-static {v1, v2}, Lcom/samsung/android/sume/SumeLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/samsung/android/sume/Reply;->postCb:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 72
    :cond_0
    return-void

    .line 69
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sume/Reply;->postCb:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 70
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 71
    :cond_1
    throw v0
.end method

.method public blacklist setContents(I)Lcom/samsung/android/sume/Reply;
    .locals 0
    .param p1, "contentsId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentsId"
        }
    .end annotation

    .line 50
    iput p1, p0, Lcom/samsung/android/sume/Reply;->contentsId:I

    .line 51
    return-object p0
.end method

.method public blacklist setData(Landroid/os/Bundle;)Lcom/samsung/android/sume/Reply;
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/samsung/android/sume/Reply;->data:Landroid/os/Bundle;

    .line 44
    return-object p0
.end method

.method public blacklist setNNid(I)Lcom/samsung/android/sume/Reply;
    .locals 0
    .param p1, "nnId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nnId"
        }
    .end annotation

    .line 36
    iput p1, p0, Lcom/samsung/android/sume/Reply;->nnId:I

    .line 37
    return-object p0
.end method

.method public blacklist setOnAfterPost(Ljava/lang/Runnable;)Lcom/samsung/android/sume/Reply;
    .locals 0
    .param p1, "func"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "func"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/samsung/android/sume/Reply;->postCb:Ljava/lang/Runnable;

    .line 56
    return-object p0
.end method
