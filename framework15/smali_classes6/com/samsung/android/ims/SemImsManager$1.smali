.class Lcom/samsung/android/ims/SemImsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ims/SemImsManager;->connectService()V
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "semImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v2}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$fgetmPhoneId(Lcom/samsung/android/ims/SemImsManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.sec.ims.imsmanager.RESTART"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v0}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$mgetImsService(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v3}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$fgetmPhoneId(Lcom/samsung/android/ims/SemImsManager;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsService not found, this should not happen!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    iget-object v2, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v2}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$mgetImsService(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$mregisterPreviousListeners(Lcom/samsung/android/ims/SemImsManager;Lcom/samsung/android/ims/SemImsService;)V

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v1}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v1}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;->onConnected()V

    :cond_1
    return-void
.end method
