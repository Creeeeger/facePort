.class public final Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;
.super Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;->$key:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTrack(Landroid/media/MediaDescription;Landroid/content/ComponentName;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can get resumable media for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p3, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->mUserId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaResumeListener"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    iget-object p2, p1, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p2, p3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    new-instance v1, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;-><init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;->$key:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->setResumeAction(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    iget-object p2, p1, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, p3

    :goto_0
    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object p2, p1, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p1, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p0

    const/4 p2, 0x5

    if-le p0, p2, :cond_3

    iget-object p0, p1, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->writeSharedPrefs()V

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->setMediaBrowser(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V

    return-void
.end method

.method public final onConnected()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    const-string v0, "Connected to "

    const-string v1, "MediaResumeListener"

    invoke-static {v0, p0, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public final onError()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resume with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaResumeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->setMediaBrowser(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V

    return-void
.end method
