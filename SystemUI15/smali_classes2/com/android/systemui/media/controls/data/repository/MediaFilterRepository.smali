.class public final Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _allUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _currentMedia:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _reactivatedId:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _selectedUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _smartspaceMediaData:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final allUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final comparator:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$8;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final currentMedia:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public locale:Ljava/util/Locale;

.field public mediaFromRecPackageName:Ljava/lang/String;

.field public final onAnyMediaConfigurationChange:Lkotlinx/coroutines/flow/Flow;

.field public final reactivatedId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final selectedUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final smartspaceMediaData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public sortedMedia:Ljava/util/TreeMap;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v1, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-direct {v1, v0, v3, v2}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$onAnyMediaConfigurationChange$1;-><init>(Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->onAnyMediaConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_reactivatedId:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->reactivatedId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/16 v16, 0x1ff

    const/16 v17, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v17}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_smartspaceMediaData:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->smartspaceMediaData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_selectedUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->selectedUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_allUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->allUserEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$compareByDescending$1;

    invoke-direct {v1}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$compareByDescending$1;-><init>()V

    new-instance v2, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$1;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$2;

    invoke-direct {v1, v2}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$2;-><init>(Ljava/util/Comparator;)V

    new-instance v2, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$3;

    invoke-direct {v2, v1}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$3;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$4;

    invoke-direct {v1, v2}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$4;-><init>(Ljava/util/Comparator;)V

    new-instance v2, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$5;

    invoke-direct {v2, v1}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$5;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$6;

    invoke-direct {v1, v2}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$6;-><init>(Ljava/util/Comparator;)V

    new-instance v2, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$7;

    invoke-direct {v2, v1}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$7;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$8;

    invoke-direct {v1, v2}, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$8;-><init>(Ljava/util/Comparator;)V

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->comparator:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$8;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_currentMedia:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->currentMedia:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v2, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->sortedMedia:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->locale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final addMediaDataLoadingState(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->comparator:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$8;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v3, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->sortedMedia:Ljava/util/TreeMap;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel;

    instance-of v7, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;

    if-eqz v7, :cond_1

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;

    iget-object v6, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->mediaLoadedModel:Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    iget-object v6, v6, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_selectedUserEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/shared/model/MediaData;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v7, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_currentMedia:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz v3, :cond_b

    new-instance v14, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;

    iget-boolean v12, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    iget-wide v10, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->lastActive:J

    iget-object v8, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v8}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v17

    iget-object v15, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget v13, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->playbackLocation:I

    iget-boolean v9, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumption:Z

    iget-object v8, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->notificationKey:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v6, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->isPlaying:Ljava/lang/Boolean;

    move-object/from16 v19, v8

    move-object v8, v14

    move/from16 v20, v9

    move/from16 v9, v16

    move-wide/from16 v21, v10

    move-object v10, v6

    move v11, v13

    move/from16 v13, v20

    move-object v6, v14

    move-object/from16 v20, v15

    move-wide/from16 v14, v21

    move-object/from16 v16, v19

    move-object/from16 v19, v20

    invoke-direct/range {v8 .. v19}, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;-><init>(ZLjava/lang/Boolean;IZZJLjava/lang/String;JLcom/android/internal/logging/InstanceId;)V

    instance-of v8, v1, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    if-eqz v8, :cond_b

    new-instance v8, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    iget-object v10, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->isPlaying:Ljava/lang/Boolean;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    xor-int/2addr v11, v4

    goto :goto_1

    :cond_3
    iget-boolean v11, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->isClearable:Z

    :goto_1
    if-eqz v11, :cond_4

    iget-boolean v11, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    if-nez v11, :cond_4

    move v11, v4

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    iget-object v14, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_5

    iget-object v13, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->mediaFromRecPackageName:Ljava/lang/String;

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move v13, v4

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    invoke-direct {v8, v9, v11, v13}, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;ZZ)V

    invoke-virtual {v2, v6, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->mediaFromRecPackageName:Ljava/lang/String;

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iput-object v5, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->mediaFromRecPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v7, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v6

    invoke-virtual {v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v6, v9, :cond_7

    iget-boolean v3, v3, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v7, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_9

    check-cast v10, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel;

    instance-of v12, v10, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;

    if-eqz v12, :cond_8

    move-object v12, v10

    check-cast v12, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;

    iget-object v12, v12, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->mediaLoadedModel:Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    iget-object v12, v12, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->instanceId:Lcom/android/internal/logging/InstanceId;

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    iget-object v13, v13, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v3, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move v9, v11

    goto :goto_4

    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v5

    :cond_a
    invoke-virtual {v7, v5, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    iput-object v2, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->sortedMedia:Ljava/util/TreeMap;

    instance-of v0, v1, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Removed;

    if-eqz v0, :cond_10

    invoke-virtual {v7}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel;

    instance-of v8, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;

    if-eqz v8, :cond_e

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Removed;

    iget-object v8, v8, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Removed;->instanceId:Lcom/android/internal/logging/InstanceId;

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;

    iget-object v6, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaControl;->mediaLoadedModel:Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;

    iget-object v6, v6, Lcom/android/systemui/media/controls/shared/model/MediaDataLoadingModel$Loaded;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    move v6, v4

    :goto_8
    if-eqz v6, :cond_c

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    invoke-virtual {v7, v5, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public final setRecommendationsLoadingState(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel$Loaded;

    if-eqz v2, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel$Loaded;

    iget-boolean v3, v3, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel$Loaded;->isPrioritized:Z

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    new-instance v3, Ljava/util/TreeMap;

    iget-object v4, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->comparator:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository$special$$inlined$thenByDescending$8;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v4, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->sortedMedia:Ljava/util/TreeMap;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel;

    instance-of v8, v8, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    new-instance v15, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_smartspaceMediaData:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    iget-boolean v8, v4, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x1f4

    const/16 v18, 0x0

    move-object v4, v15

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    invoke-direct/range {v4 .. v17}, Lcom/android/systemui/media/controls/data/model/MediaSortKeyModel;-><init>(ZLjava/lang/Boolean;IZZJLjava/lang/String;JLcom/android/internal/logging/InstanceId;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->_currentMedia:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;

    invoke-direct {v2, v1}, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;-><init>(Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel;)V

    move-object/from16 v1, v19

    invoke-virtual {v3, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    instance-of v1, v1, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel$Removed;

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel;

    instance-of v6, v6, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v4, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->sortedMedia:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-le v1, v2, :cond_7

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :cond_7
    iput-object v3, v0, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->sortedMedia:Ljava/util/TreeMap;

    return-void
.end method
