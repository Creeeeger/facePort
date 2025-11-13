.class Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;
.super Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PushServiceCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/kpm/IKnoxPushServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "KnoxPushServiceCallback"

    const-string/jumbo v1, "onRegistrationFinished: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getInstance()Lcom/samsung/android/knox/kpm/KnoxPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    iget-object v1, v1, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->onRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V

    return-void
.end method

.method public onRegistrationStatus(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "KnoxPushServiceCallback"

    const-string/jumbo v1, "onRegistrationStatus: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getInstance()Lcom/samsung/android/knox/kpm/KnoxPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    iget-object v1, v1, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->onRegistrationStatus(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V

    return-void
.end method

.method public onUnRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "KnoxPushServiceCallback"

    const-string/jumbo v1, "onUnRegistrationFinished: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/kpm/KnoxPushService;->getInstance()Lcom/samsung/android/knox/kpm/KnoxPushService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    iget-object v1, v1, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/kpm/KnoxPushService;->removeFromTrackMap(Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;)V

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback$PushServiceCallback;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->acb:Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/kpm/KnoxPushServiceCallback;->onUnRegistrationFinished(Lcom/samsung/android/knox/kpm/KnoxPushServiceResult;)V

    return-void
.end method
