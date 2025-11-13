.class Lcom/samsung/android/ims/SemImsManager$2;
.super Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/ims/SemImsManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/ims/SemImsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ims/SemImsManager;

    .line 1271
    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager$2;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsDmConfigListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onChangeDmValue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1274
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$2;->this$0:Lcom/samsung/android/ims/SemImsManager;

    iget-object v0, v0, Lcom/samsung/android/ims/SemImsManager;->mEventRelay:Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    const-string v1, "]"

    const-string/jumbo v2, "semImsManager["

    if-eqz v0, :cond_0

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager$2;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v2}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$fgetmPhoneId(Lcom/samsung/android/ims/SemImsManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEventRelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager$2;->this$0:Lcom/samsung/android/ims/SemImsManager;

    iget-object v2, v2, Lcom/samsung/android/ims/SemImsManager;->mEventRelay:Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$2;->this$0:Lcom/samsung/android/ims/SemImsManager;

    iget-object v0, v0, Lcom/samsung/android/ims/SemImsManager;->mEventRelay:Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/ims/SemImsManager$DmConfigEventRelay;->onChangeDmValue(Ljava/lang/String;Z)V

    .line 1281
    return-void

    .line 1275
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager$2;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v2}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$fgetmPhoneId(Lcom/samsung/android/ims/SemImsManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no listener for SemImsDmConfigListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method
