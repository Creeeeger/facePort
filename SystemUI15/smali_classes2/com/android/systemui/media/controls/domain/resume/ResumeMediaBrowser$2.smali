.class public final Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service connected for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResumeMediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->updateMediaController()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->isBrowserConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;->onConnected()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mSubscriptionCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$1;

    invoke-virtual {v1, v0, p0}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;->onError()V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->disconnect()V

    return-void
.end method

.method public final onConnectionFailed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection failed for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResumeMediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;->onError()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->disconnect()V

    return-void
.end method

.method public final onConnectionSuspended()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection suspended for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResumeMediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;->onError()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->disconnect()V

    return-void
.end method
