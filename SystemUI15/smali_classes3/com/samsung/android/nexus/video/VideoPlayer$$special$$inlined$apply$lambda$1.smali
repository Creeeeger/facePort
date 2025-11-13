.class final Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;


# instance fields
.field final synthetic $this_apply:Lcom/samsung/android/media/SemMediaPlayer;

.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/nexus/video/VideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/samsung/android/media/SemMediaPlayer;

    iput-object p2, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prepare is done."

    invoke-static {v0, v1}, Lcom/samsung/android/nexus/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->INITIALIZED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/nexus/video/VideoPlayer;->setMPlayerState(Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;)V

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/samsung/android/media/SemMediaPlayer;

    const v1, 0x88bc

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/samsung/android/media/SemMediaPlayer;

    const v1, 0x9088

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    iget-object v0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/video/VideoPlayer;->getPreparedListener()Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;->onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->$this_apply:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->isLooping()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/media/SemMediaPlayer;->setLooping(Z)V

    iget-object p1, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/nexus/video/VideoPlayer;->getMPlayerState()Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/nexus/video/VideoPlayer$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/nexus/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoPlayer;->play()V

    :cond_1
    return-void
.end method
