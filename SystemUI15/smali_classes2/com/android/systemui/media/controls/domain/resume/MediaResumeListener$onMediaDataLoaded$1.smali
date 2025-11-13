.class public final Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$onMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $inf:Ljava/util/List;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$onMediaDataLoaded$1;->$inf:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$onMediaDataLoaded$1;->$inf:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Testing if we can connect to "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "MediaResumeListener"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;

    invoke-direct {v4, v5, v0, v1}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;Ljava/lang/String;)V

    iget v8, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->currentUserId:I

    new-instance p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;

    iget-object v3, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;

    iget-object v7, v1, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mLogger:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;-><init>(Landroid/content/Context;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;I)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->setMediaBrowser(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V

    iget-object p0, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.service.media.extra.RECENT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/media/browse/MediaBrowser;

    iget-object v2, v2, Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mConnectionCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;

    invoke-direct {v3, v2, v1, v4, v0}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    const-string/jumbo v0, "testConnection"

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->connectBrowser(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
