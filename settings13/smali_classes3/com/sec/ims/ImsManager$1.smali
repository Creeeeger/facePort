.class Lcom/sec/ims/ImsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ims/ImsManager;->connectService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/ImsManager;


# direct methods
.method constructor <init>(Lcom/sec/ims/ImsManager;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/sec/ims/ImsManager$1;->this$0:Lcom/sec/ims/ImsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "legacyImsManager["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/ImsManager$1;->this$0:Lcom/sec/ims/ImsManager;

    invoke-static {v0}, Lcom/sec/ims/ImsManager;->-$$Nest$fgetmPhoneId(Lcom/sec/ims/ImsManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sec.ims.imsmanager.RESTART"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    iget-object p1, p0, Lcom/sec/ims/ImsManager$1;->this$0:Lcom/sec/ims/ImsManager;

    invoke-static {p1}, Lcom/sec/ims/ImsManager;->-$$Nest$mgetImsService(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/IImsService;

    move-result-object p1

    .line 385
    iget-object p0, p0, Lcom/sec/ims/ImsManager$1;->this$0:Lcom/sec/ims/ImsManager;

    invoke-static {p0, p1}, Lcom/sec/ims/ImsManager;->-$$Nest$monConnectService(Lcom/sec/ims/ImsManager;Lcom/sec/ims/IImsService;)V

    :cond_0
    return-void
.end method
