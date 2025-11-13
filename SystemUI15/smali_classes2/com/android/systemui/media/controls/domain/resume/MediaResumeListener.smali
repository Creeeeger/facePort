.class public final Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final context:Landroid/content/Context;

.field public currentUserId:I

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public mediaBrowser:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

.field public final mediaBrowserCallback:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$mediaBrowserCallback$1;

.field public final mediaBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;

.field public mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public final tunerService:Lcom/android/systemui/tuner/TunerService;

.field public useMediaResumption:Z

.field public final userTrackerCallback:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$userTrackerCallback$1;

.field public final userUnlockReceiver:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$userUnlockReceiver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/controls/util/MediaFlags;)V
    .locals 11

    move-object v0, p0

    move-object v1, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->tunerService:Lcom/android/systemui/tuner/TunerService;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowserFactory;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useMediaResumption(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->useMediaResumption:Z

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->currentUserId:I

    new-instance v4, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$userUnlockReceiver$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$userUnlockReceiver$1;-><init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;)V

    new-instance v2, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$userTrackerCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$userTrackerCallback$1;-><init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;)V

    iput-object v2, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->userTrackerCallback:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$userTrackerCallback$1;

    new-instance v3, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$mediaBrowserCallback$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$mediaBrowserCallback$1;-><init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;)V

    iput-object v3, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaBrowserCallback:Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$mediaBrowserCallback$1;

    iget-boolean v3, v0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->useMediaResumption:Z

    if-eqz v3, :cond_0

    const-string v3, "MediaResumeListener"

    move-object/from16 v5, p8

    invoke-static {v5, v3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v5, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/16 v10, 0x30

    move-object v3, p2

    invoke-static/range {v3 .. v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    move-object v3, p3

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3, v2, p4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->loadSavedComponents()V

    :cond_0
    return-void
.end method

.method public static synthetic getUserUnlockReceiver$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "resumeComponents: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final loadSavedComponents()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->context:Landroid/content/Context;

    const-string v1, "media_control_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->currentUserId:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "browser_components_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    new-instance v3, Lkotlin/text/Regex;

    const-string v4, ":"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_1
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_2
    :goto_1
    if-eqz v3, :cond_5

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "/"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v4, v5, v2, v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    iget-object v8, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    :try_start_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    invoke-interface {v8}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_3

    :cond_3
    invoke-interface {v8}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v4

    :goto_3
    move v3, v1

    :goto_4
    iget-object v6, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v7, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v2, v3

    :cond_5
    iget v0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->currentUserId:I

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loaded resume components for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaResumeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->writeSharedPrefs()V

    :cond_6
    return-void
.end method

.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;ZIZ)V
    .locals 0

    iget-boolean p4, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->useMediaResumption:Z

    if-eqz p4, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p4}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->setMediaBrowser(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V

    :cond_0
    iget p2, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->playbackLocation:I

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-nez p2, :cond_1

    move p2, p6

    goto :goto_0

    :cond_1
    move p2, p5

    :goto_0
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p6, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p6, p5

    :cond_2
    iget-object p2, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumeAction:Ljava/lang/Runnable;

    if-nez p2, :cond_6

    iget-boolean p2, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->hasCheckedForResume:Z

    if-nez p2, :cond_6

    if-eqz p6, :cond_6

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    if-nez p2, :cond_3

    move-object p2, p4

    :cond_3
    invoke-interface {p2, p4, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->setResumeAction(Ljava/lang/Runnable;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Checking for service component for "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    const-string p4, "MediaResumeListener"

    invoke-static {p2, p3, p4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    new-instance p4, Landroid/content/Intent;

    const-string p6, "android.media.browse.MediaBrowserService"

    invoke-direct {p4, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget p6, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->currentUserId:I

    invoke-virtual {p2, p4, p5, p6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object p6, p5

    check-cast p6, Landroid/content/pm/ResolveInfo;

    iget-object p6, p6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p6, p6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {p6, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$onMediaDataLoaded$1;

    invoke-direct {p3, p0, p1, p4}, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$onMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public final setMediaBrowser(Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;->disconnect()V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/controls/domain/resume/ResumeMediaBrowser;

    return-void
.end method

.method public final writeSharedPrefs()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->context:Landroid/content/Context;

    const-string v2, "media_control_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;->currentUserId:I

    const-string v2, "browser_components_"

    invoke-static {p0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
