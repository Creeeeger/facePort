.class public final Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final Companion:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$Companion;


# instance fields
.field public final currentMedia:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final hasActiveMediaOrRecommendation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final hasAnyMediaOrRecommendation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;

.field public final mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

.field public final mediaDeviceManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

.field public final mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->Companion:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Lcom/android/systemui/media/controls/domain/pipeline/MediaTimeoutListener;Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener;Lcom/android/systemui/media/controls/domain/pipeline/MediaSessionBasedFilter;Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataCombineLatest;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;Lcom/android/systemui/media/controls/util/MediaFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iput-object p6, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDeviceManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    iput-object p8, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;

    iput-object p9, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iput-object p10, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    iget-object p2, p9, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->selectedUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasActiveMediaOrRecommendation$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p5, p9, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->smartspaceMediaData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p6, p9, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->reactivatedId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2, p5, p6, p3}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p3

    sget-object p6, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p7, 0x3

    invoke-static {p6, p7}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p8

    sget-object p10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p3, p1, p8, p10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->hasActiveMediaOrRecommendation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasAnyMediaOrRecommendation$1;

    invoke-direct {p3, p0, p4}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$hasAnyMediaOrRecommendation$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance p4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p4, p2, p5, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p6, p7}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    invoke-static {p4, p1, p2, p10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->hasAnyMediaOrRecommendation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p9, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->currentMedia:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->currentMedia:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addResumptionControls(ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 50

    move-object/from16 v5, p7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object v12, v13, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v0, v12, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v11, v13, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v0, v11, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v10

    :try_start_0
    iget-object v0, v13, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not get app UID for "

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaDataProcessor"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_0
    new-instance v14, Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-object v1, v14

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const v45, 0xfffffff

    const/16 v46, 0x0

    invoke-direct/range {v14 .. v46}, Lcom/android/systemui/media/controls/shared/model/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v13, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v14, 0x0

    move-object/from16 v9, p3

    check-cast v9, Lcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v18, 0x0

    move-object/from16 p0, v10

    move/from16 v10, v18

    const/16 v18, 0x1

    move-object/from16 v47, v11

    move/from16 v11, v18

    const/16 v18, 0x0

    move-object/from16 v48, v12

    move-object/from16 v12, v18

    const/16 v18, 0x0

    move-object/from16 v49, v13

    move/from16 v13, v18

    const v20, 0xc777bff

    move-object/from16 v5, p7

    move-object/from16 v18, p0

    move/from16 v19, v0

    invoke-static/range {v1 .. v20}, Lcom/android/systemui/media/controls/shared/model/MediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v1

    move-object/from16 v9, p7

    move-object/from16 v2, v48

    invoke-virtual {v2, v1, v9}, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->addMediaEntry(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-object/from16 v1, p0

    move-object/from16 v2, v49

    invoke-virtual {v2, v0, v9, v1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logSingleVsMultipleMediaAdded(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    move-object/from16 v3, v47

    iget-object v3, v3, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->RESUME_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v3, v4, v0, v9, v1}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_1

    :cond_0
    move-object v9, v5

    move-object v2, v13

    :goto_1
    iget-object v0, v2, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$addResumptionControls$1;

    move-object v1, v10

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$addResumptionControls$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;ILandroid/media/MediaDescription;Ljava/lang/Runnable;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final dismissMediaData(Ljava/lang/String;JZ)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->dismissMediaData(Ljava/lang/String;JZ)Z

    move-result p0

    return p0
.end method

.method public final dismissSmartspaceRecommendation(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDeviceManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDeviceManager;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final hasActiveMediaOrRecommendation()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->hasActiveMediaOrRecommendation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final hasAnyMediaOrRecommendation()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->hasAnyMediaOrRecommendation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isRecommendationActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iget-object p0, p0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_smartspaceMediaData:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    return p0
.end method

.method public final onNotificationAdded(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 57

    move-object/from16 v2, p1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-boolean v0, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->useQsMediaPlayer:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->Companion:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v4, v3, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v2

    goto :goto_1

    :cond_0
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    if-nez v4, :cond_2

    iget-object v5, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v5, v5, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v5}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v23

    new-instance v24, Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-object/from16 v6, v24

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const v55, 0xfffffff

    const/16 v56, 0x0

    invoke-direct/range {v24 .. v56}, Lcom/android/systemui/media/controls/shared/model/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    iget-object v7, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v7}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v21

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v19, 0x0

    const/16 v24, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v25, 0xe7ffbff

    invoke-static/range {v6 .. v25}, Lcom/android/systemui/media/controls/shared/model/MediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLcom/android/systemui/media/controls/domain/resume/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->addMediaEntry(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)Lcom/android/systemui/media/controls/shared/model/MediaData;

    :goto_2
    move v5, v0

    goto :goto_3

    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, v4}, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->removeMediaEntry(Ljava/lang/String;)Lcom/android/systemui/media/controls/shared/model/MediaData;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v2}, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->addMediaEntry(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)Lcom/android/systemui/media/controls/shared/model/MediaData;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    iget-object v6, v1, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;

    move-object v0, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor$loadMediaData$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Z)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->onNotificationRemoved(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public final onNotificationRemoved(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->onNotificationRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public final onSwipeToDismiss()V
    .locals 15

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Media carousel swiped away"

    const-string v1, "MediaDataFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFilterRepository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iget-object v2, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->allUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v5, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->selectedUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v5, v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    iget-object v3, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    throw v4

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->smartspaceMediaData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-boolean v3, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->dismissIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    const-string v5, "com.google.android.apps.gsa.staticplugins.opa.smartspace.ExportedSmartspaceTrampolineActivity"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {v1, v3}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    const-string v3, "Cannot create dismiss action click action: extras missing dismiss_intent."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    sget-object v5, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-object v11, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    const/4 v8, 0x0

    const/16 v14, 0x17e

    iget-object v6, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    invoke-static/range {v5 .. v14}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->copy$default(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;Ljava/lang/String;ZLandroid/content/Intent;JLcom/android/internal/logging/InstanceId;JI)Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    move-result-object p0

    iget-object v0, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_smartspaceMediaData:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v4, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v4

    :cond_5
    return-void
.end method

.method public final removeListener(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataFilter:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataFilterImpl;->_listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setInactive(Ljava/lang/String;ZZ)V
    .locals 0

    sget-object p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->Companion:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Code path not supported when SceneContainerFlag is enabled"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMediaResumptionEnabled(Z)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->useMediaResumption:Z

    if-ne v0, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->useMediaResumption:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object v0, p1, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-boolean v3, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->removeMediaEntry(Ljava/lang/String;)Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->notifyMediaDataRemoved$default(Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget v2, v2, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v3, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-object v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v4, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    invoke-virtual {v4, v2, v3, v1}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logMediaRemoved(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public final setResumeAction(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->mediaDataRepository:Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;

    iget-object p0, p0, Lcom/android/systemui/media/controls/data/repository/MediaDataRepository;->mediaEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumeAction:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/shared/model/MediaData;->hasCheckedForResume:Z

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method
