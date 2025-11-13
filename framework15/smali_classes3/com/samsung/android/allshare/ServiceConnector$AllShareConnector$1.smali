.class Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;
.super Ljava/lang/Object;
.source "ServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscriber onServiceConnected to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {v1}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fgetmSubscriberTag(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllShareConnector"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {p2}, Lcom/sec/android/allshare/iface/ISubscriber$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/iface/ISubscriber;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fputmISubscriber(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Lcom/sec/android/allshare/iface/ISubscriber;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {v0, p1}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fputmComponentName(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$monConnected(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscriber onServiceDisconnected from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {v1}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fgetmSubscriberTag(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllShareConnector"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fputmISubscriber(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Lcom/sec/android/allshare/iface/ISubscriber;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$fputmComponentName(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector$1;->this$0:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->-$$Nest$monDisconnected(Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    return-void
.end method
