.class Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;
.super Landroid/os/Handler;
.source "SamsungRilConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;Landroid/os/Looper;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    .line 244
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 249
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed. error code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "response"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fputmBytesBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;[B)V

    .line 255
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fgetmBytesBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fgetmBytesBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "byte buffer is empty. failed"

    .line 256
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fgetmListenerRef(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;

    .line 259
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "BLOB_SET_DONE"

    .line 273
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    .line 275
    :goto_0
    invoke-interface {v2, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;->onSetBlobFinished(Z)V

    goto :goto_2

    :cond_5
    const-string p1, "BLOB_GET_DONE"

    .line 261
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fgetmBytesBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fgetmBytesBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object p1

    array-length p1, p1

    if-eqz p1, :cond_6

    .line 263
    iget-object p1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fgetmBytesBuffer(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->parseOperationName([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fputmOperationName(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;Ljava/lang/String;)V

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operation name : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fgetmOperationName(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string p1, "Blob policy file data not received : Failed!"

    .line 266
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v2, :cond_7

    .line 269
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$MessageHandler;->this$0:Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;->-$$Nest$fgetmOperationName(Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/samsung/android/settings/deviceinfo/statusinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;->onGetBlobFinished(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
