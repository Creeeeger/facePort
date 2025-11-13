.class Lcom/samsung/android/knox/foresight/KnoxForesight$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/foresight/KnoxForesight;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$1;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$1;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    iget-object v0, v0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service connected!! : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$1;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-static {p2}, Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/knox/foresight/KnoxForesight;->iBinder:Lcom/samsung/android/knox/foresight/framework/system/IKFCommnadService;

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$1;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    invoke-virtual {p0}, Lcom/samsung/android/knox/foresight/KnoxForesight;->sendLastCommand()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight$1;->this$0:Lcom/samsung/android/knox/foresight/KnoxForesight;

    iget-object p0, p0, Lcom/samsung/android/knox/foresight/KnoxForesight;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service disconnected!! : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
