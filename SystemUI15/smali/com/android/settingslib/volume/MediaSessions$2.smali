.class public final Lcom/android/settingslib/volume/MediaSessions$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/media/session/MediaSessionManager$RemoteSessionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/volume/MediaSessions;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/volume/MediaSessions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/volume/MediaSessions$2;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDefaultRemoteSessionChanged(Landroid/media/session/MediaSession$Token;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$2;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$2;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
