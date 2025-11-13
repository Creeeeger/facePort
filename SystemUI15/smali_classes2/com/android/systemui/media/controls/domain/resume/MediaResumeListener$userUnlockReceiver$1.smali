.class public final Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$userUnlockReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$userUnlockReceiver$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$userUnlockReceiver$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    iget p2, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->currentUserId:I

    if-ne p1, p2, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->useMediaResumption:Z

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    sget-wide v5, Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListenerKt;->RESUME_MEDIA_TIMEOUT:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.browse.MediaBrowserService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->currentUserId:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/ComponentName;

    iget v9, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->currentUserId:I

    new-instance v2, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    iget-object v3, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;

    iget-object v4, v3, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mContext:Landroid/content/Context;

    iget-object v7, v3, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;

    iget-object v8, v3, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;->mLogger:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;

    iget-object v5, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaBrowserCallback:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$mediaBrowserCallback$1;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;-><init>(Landroid/content/Context;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserLogger;I)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.service.media.extra.RECENT"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, v2, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, v2, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/media/browse/MediaBrowser;

    iget-object v5, v5, Lcom/android/systemui/media/controls/domain/resume/MediaBrowserFactory;->mContext:Landroid/content/Context;

    iget-object v7, v2, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mConnectionCallback:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$2;

    invoke-direct {v6, v5, v4, v7, v3}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    const-string v3, "findRecentMedia"

    invoke-virtual {v2, v6, v3}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->connectBrowser(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->currentUserId:I

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "User "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have component "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaResumeListener"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    :goto_1
    return-void
.end method
