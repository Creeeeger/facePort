.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public final mediaRecsCard:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    new-instance p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$special$$inlined$flatMapLatest$1;

    const/4 p4, 0x0

    invoke-direct {p1, p4, p0}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;)V

    iget-object p0, p3, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->onAnyMediaConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final access$onClicked(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/logging/InstanceId;I)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    if-ne p5, v1, :cond_1

    iget-object p5, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_CARD_TAP:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {p5, v1, v0, p3, p4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_ITEM_TAP:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    const/4 v4, 0x0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;

    iget-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->repository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iput-object p3, p4, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->mediaFromRecPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_3

    const-string p4, "com.google.android.apps.gsa.smartspace.extra.SMARTSPACE_INTENT"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p4, 0x1

    :try_start_0
    invoke-static {p3, p4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p4

    const-string p5, "KEY_OPEN_IN_FOREGROUND"

    invoke-virtual {p4, p5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p4

    const-string p5, "Failed to create intent from URI: "

    invoke-virtual {p5, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "MediaRecommendationsInteractor"

    invoke-static {p5, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_3
    :goto_1
    move p3, v0

    :goto_2
    if-eqz p3, :cond_4

    const/16 p3, 0x1f

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/android/systemui/animation/Expandable;->activityTransitionController(Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p2, v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_5
    :goto_3
    const-string p0, "MediaRecommendationsViewModel"

    const-string p1, "No tap action can be set up"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public static final access$toRecsViewModel(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;

    iget v4, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->label:I

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$8:I

    iget v1, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$7:I

    iget v5, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$6:I

    iget v8, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$5:I

    iget v9, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$4:I

    iget v10, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$3:I

    iget v11, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$2:I

    iget v12, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$1:I

    iget v13, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$0:I

    iget-object v14, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$12:Ljava/lang/Object;

    check-cast v14, Ljava/util/Collection;

    iget-object v15, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$11:Ljava/lang/Object;

    check-cast v15, Ljava/lang/CharSequence;

    iget-object v6, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$10:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    iget-object v7, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$9:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    move/from16 p0, v0

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;

    move-object/from16 p1, v0

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$7:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    move-object/from16 v17, v0

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$6:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$5:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v19, v0

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v20, v0

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$3:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/monet/ColorScheme;

    move-object/from16 v22, v0

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;

    move-object/from16 v23, v0

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move/from16 v30, p0

    move/from16 v32, v1

    move/from16 v33, v5

    move-object/from16 v29, v6

    move-object/from16 v31, v7

    move/from16 v34, v8

    move v8, v11

    move v6, v13

    move-object/from16 v28, v15

    move-object/from16 v13, v17

    move-object/from16 v11, v20

    move-object/from16 v5, v22

    move-object/from16 v1, v23

    move-object/from16 v15, p1

    move-object v7, v4

    move/from16 v38, v10

    move v10, v9

    move/from16 v9, v38

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->areRecommendationsValid:Z

    const-string v5, "MediaRecommendationsViewModel"

    if-nez v2, :cond_3

    const-string v0, "Received an invalid recommendation list"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_c

    :cond_3
    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->appName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_13

    const/4 v2, -0x1

    iget v6, v1, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->uid:I

    if-ne v6, v2, :cond_4

    goto/16 :goto_b

    :cond_4
    sget-object v2, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;->INSTANCE:Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;

    iget-object v6, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    sget-object v7, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->packageName:Ljava/lang/String;

    invoke-static {v6, v2, v5, v7}, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;->getColorScheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/monet/Style;)Lcom/android/systemui/monet/ColorScheme;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    iget-object v6, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070dfd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070df7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v8, v5, Lcom/android/systemui/monet/ColorScheme;->mNeutral1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v8}, Lcom/android/systemui/monet/TonalPalette;->getS50()I

    move-result v8

    iget-object v9, v5, Lcom/android/systemui/monet/ColorScheme;->mNeutral2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v9}, Lcom/android/systemui/monet/TonalPalette;->getS200()I

    move-result v9

    iget-object v10, v5, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v10}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v10

    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v13, v1, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->mediaRecs:Ljava/util/List;

    check-cast v13, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const/16 v17, 0x0

    if-eqz v15, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;

    move-object/from16 v23, v4

    iget-boolean v4, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v4, :cond_7

    iget-object v4, v15, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    move/from16 v4, v17

    goto :goto_3

    :cond_7
    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-boolean v4, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v4, :cond_9

    iget-object v4, v15, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;->subtitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    move/from16 v4, v17

    goto :goto_4

    :cond_9
    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v4, v15, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;->extras:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/android/systemui/media/controls/util/MediaDataUtils;->getDescriptionProgress(Landroid/os/Bundle;)Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_a

    const-wide/16 v17, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    :goto_5
    iget-object v4, v1, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v24, v10

    iget-object v10, v15, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;->extras:Landroid/os/Bundle;

    move/from16 v25, v9

    const-string v9, ""

    move/from16 v26, v8

    if-eqz v10, :cond_b

    const-string v8, "artist_name"

    invoke-virtual {v10, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_d

    :cond_c
    move-object/from16 p0, v9

    goto :goto_7

    :cond_d
    iget-object v10, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    move-object/from16 p0, v9

    iget-object v9, v15, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;->title:Ljava/lang/CharSequence;

    filled-new-array {v9, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    const v8, 0x7f130455

    invoke-virtual {v10, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_8

    :goto_7
    iget-object v8, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    iget-object v9, v15, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;->title:Ljava/lang/CharSequence;

    filled-new-array {v9, v4}, [Ljava/lang/Object;

    move-result-object v4

    const v9, 0x7f130456

    invoke-virtual {v8, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_8
    iget-object v8, v15, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;->title:Ljava/lang/CharSequence;

    if-nez v8, :cond_e

    move-object/from16 v8, p0

    :cond_e
    iget-object v9, v15, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;->subtitle:Ljava/lang/CharSequence;

    if-nez v9, :cond_f

    move-object/from16 v9, p0

    :cond_f
    const/16 v10, 0x64

    move/from16 p1, v6

    move/from16 p0, v7

    int-to-double v6, v10

    mul-double v6, v6, v17

    double-to-int v6, v6

    iget-object v7, v15, Lcom/android/systemui/media/controls/shared/model/MediaRecModel;->icon:Landroid/graphics/drawable/Icon;

    iput-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$3:Ljava/lang/Object;

    iput-object v11, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$4:Ljava/lang/Object;

    iput-object v12, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$5:Ljava/lang/Object;

    iput-object v14, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$6:Ljava/lang/Object;

    iput-object v13, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$7:Ljava/lang/Object;

    iput-object v15, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$8:Ljava/lang/Object;

    iput-object v9, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$9:Ljava/lang/Object;

    iput-object v8, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$10:Ljava/lang/Object;

    iput-object v4, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$11:Ljava/lang/Object;

    iput-object v14, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->L$12:Ljava/lang/Object;

    move/from16 v10, p1

    iput v10, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$0:I

    move-object/from16 p1, v2

    move/from16 v2, p0

    iput v2, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$1:I

    move-object/from16 p0, v4

    move/from16 v4, v26

    iput v4, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$2:I

    move-object/from16 v26, v8

    move/from16 v8, v25

    iput v8, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$3:I

    move-object/from16 v25, v9

    move/from16 v9, v24

    iput v9, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$4:I

    iput v4, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$5:I

    iput v6, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$6:I

    iput v8, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$7:I

    iput v4, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->I$8:I

    move/from16 v24, v6

    const/4 v6, 0x1

    iput v6, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$1;->label:I

    new-instance v6, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;

    const/16 v22, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v0

    move-object/from16 v19, v7

    move/from16 v20, v10

    move/from16 v21, v2

    invoke-direct/range {v17 .. v22}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$getRecCoverBackground$2;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Landroid/graphics/drawable/Icon;IILkotlin/coroutines/Continuation;)V

    iget-object v7, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v7, v6, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v7, v23

    if-ne v6, v7, :cond_10

    move-object v4, v7

    goto/16 :goto_c

    :cond_10
    move-object/from16 v28, p0

    move-object/from16 v21, p1

    move/from16 v30, v4

    move/from16 v34, v30

    move/from16 v32, v8

    move-object/from16 v19, v12

    move-object/from16 v18, v14

    move/from16 v33, v24

    move-object/from16 v31, v25

    move-object/from16 v29, v26

    move v12, v2

    move-object v2, v6

    move v6, v10

    move v10, v9

    move/from16 v9, v32

    move/from16 v8, v34

    :goto_9
    move-object/from16 v35, v2

    check-cast v35, Landroid/graphics/drawable/Drawable;

    new-instance v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$mediaRecs$1$1;

    invoke-direct {v2, v0, v15, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$mediaRecs$1$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lcom/android/systemui/media/controls/shared/model/MediaRecModel;Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;)V

    new-instance v4, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;

    move-object/from16 v27, v4

    move-object/from16 v36, v21

    move-object/from16 v37, v2

    invoke-direct/range {v27 .. v37}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecViewModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v14, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v4, v7

    move v7, v12

    move-object/from16 v14, v18

    move-object/from16 v12, v19

    move-object/from16 v2, v21

    goto/16 :goto_2

    :cond_11
    move v4, v8

    move v9, v10

    move-object/from16 v23, v14

    check-cast v23, Ljava/util/List;

    iget-boolean v2, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_12

    iget-boolean v2, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_12

    const/4 v7, 0x1

    goto :goto_a

    :cond_12
    move/from16 v7, v17

    :goto_a
    iput-boolean v7, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;

    new-instance v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$2;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$2;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;)V

    new-instance v6, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$3;

    invoke-direct {v6, v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$3;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;)V

    new-instance v7, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$4;

    invoke-direct {v7, v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toRecsViewModel$4;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;)V

    iget-boolean v8, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-boolean v10, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v26, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    iget-object v11, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->appName:Ljava/lang/CharSequence;

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const v13, 0x7f13044c

    invoke-virtual {v11, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v11, v5, Lcom/android/systemui/monet/ColorScheme;->mNeutral1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/TonalPalette;->getS50()I

    move-result v13

    iget-object v11, v5, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result v14

    iget-object v5, v5, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v5}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v15

    new-instance v5, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toGutsViewModel$1;

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toGutsViewModel$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;)V

    iget-object v11, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->applicationContext:Landroid/content/Context;

    move/from16 v25, v10

    const v10, 0x7f080e20

    invoke-virtual {v11, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    new-instance v10, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toGutsViewModel$2;

    invoke-direct {v10, v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toGutsViewModel$2;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;)V

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, v26

    move-object/from16 v17, v5

    move-object/from16 v19, v10

    invoke-direct/range {v11 .. v21}, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;-><init>(Ljava/lang/CharSequence;IIIZLkotlin/jvm/functions/Function0;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v9

    move/from16 v20, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v24, v8

    invoke-direct/range {v17 .. v26}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecsCardViewModel;-><init>(Lkotlin/jvm/functions/Function1;IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/util/List;ZZLcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;)V

    move-object v4, v2

    goto :goto_c

    :cond_13
    :goto_b
    const-string v0, "Fail to get media recommendation\'s app info"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :goto_c
    return-object v4
.end method
