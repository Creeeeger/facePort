.class public final Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const-string v0, "ResumeMediaBrowser"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No children found for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object p2, p2, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;->onError()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {p1}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/browse/MediaBrowser$MediaItem;->isPlayable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v1, p1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;->addTrack(Landroid/media/MediaDescription;Landroid/content/ComponentName;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Child found but not playable for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object p2, p2, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;->onError()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->disconnect()V

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subscribe error for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResumeMediaBrowser"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;->onError()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->disconnect()V

    return-void
.end method

.method public final onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subscribe error for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", options: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ResumeMediaBrowser"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object p1, p1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;->onError()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->disconnect()V

    return-void
.end method
