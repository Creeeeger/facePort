.class public final Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;->$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;

    iget-object v5, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;->$componentName:Landroid/content/ComponentName;

    iget v8, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->currentUserId:I

    new-instance v9, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v3, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;

    iget-object v7, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mLogger:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;

    const/4 v4, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;-><init>(Landroid/content/Context;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;I)V

    invoke-virtual {v0, v9}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->setMediaBrowser(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.service.media.extra.RECENT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$3;-><init>(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/media/browse/MediaBrowser;

    iget-object v3, v3, Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;->mContext:Landroid/content/Context;

    invoke-direct {v4, v3, v1, v2, v0}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    const-string/jumbo v0, "restart"

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->connectBrowser(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
