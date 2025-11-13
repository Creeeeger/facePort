.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$Companion;

.field public static final SEMANTIC_ACTIONS_ALL:Ljava/util/List;

.field public static final SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;

.field public static final SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;

.field public isAnyButtonClicked:Z

.field public isPlaying:Z

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public final player:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x7f0a0062

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0a0063

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a0061

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;

    const v3, 0x7f0a0059

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0a005a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->SEMANTIC_ACTIONS_ALL:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->backgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;

    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    new-instance p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$special$$inlined$flatMapLatest$1;

    const/4 p3, 0x0

    invoke-direct {p1, p3, p0}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;)V

    iget-object p0, p4, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->onAnyMediaConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final access$toViewModel(Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;

    iget v4, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;->label:I

    const-string v6, "MediaControlViewModel"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v8, :cond_1

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    iget-object v1, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->token:Landroid/media/session/MediaSession$Token;

    if-eqz v2, :cond_3

    new-instance v5, Landroid/media/session/MediaController;

    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->applicationContext:Landroid/content/Context;

    invoke-direct {v5, v9, v2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    goto :goto_1

    :cond_3
    move-object v5, v7

    :goto_1
    sget-object v2, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;->INSTANCE:Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;

    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->applicationContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artwork:Landroid/graphics/drawable/Icon;

    iput-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;->L$2:Ljava/lang/Object;

    iput v8, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$1;->label:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v9, v2, v10, v6, v3}, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;->getWallpaperColor(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/graphics/drawable/Icon;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    goto/16 :goto_2b

    :cond_4
    move-object v3, v0

    :goto_2
    check-cast v2, Landroid/app/WallpaperColors;

    if-eqz v2, :cond_6

    new-instance v0, Lcom/android/systemui/monet/ColorScheme;

    sget-object v4, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    invoke-direct {v0, v2, v8, v4}, Lcom/android/systemui/monet/ColorScheme;-><init>(Landroid/app/WallpaperColors;ZLcom/android/systemui/monet/Style;)V

    :cond_5
    move-object v4, v0

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;->INSTANCE:Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;

    iget-object v4, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->applicationContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v9, v6, v10}, Lcom/android/systemui/media/controls/ui/util/MediaArtworkHelper;->getColorScheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/monet/Style;)Lcom/android/systemui/monet/ColorScheme;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v4, v7

    goto/16 :goto_2b

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;

    iget-boolean v0, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isDismissible:Z

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->applicationContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appName:Ljava/lang/String;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const v10, 0x7f13044c

    invoke-virtual {v0, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v10, v0

    goto :goto_5

    :cond_7
    iget-object v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->applicationContext:Landroid/content/Context;

    const v9, 0x7f130446

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :goto_5
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/android/systemui/monet/ColorScheme;->mNeutral1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v0}, Lcom/android/systemui/monet/TonalPalette;->getS50()I

    move-result v11

    iget-object v0, v4, Lcom/android/systemui/monet/ColorScheme;->mAccent1:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v0}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result v12

    iget-object v0, v4, Lcom/android/systemui/monet/ColorScheme;->mAccent2:Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v0}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v13

    new-instance v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toGutsViewModel$1;

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toGutsViewModel$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;)V

    iget-boolean v9, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isDismissible:Z

    if-eqz v9, :cond_8

    iget-object v9, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->applicationContext:Landroid/content/Context;

    const v14, 0x7f080e20

    invoke-virtual {v9, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_6
    move-object/from16 v16, v9

    goto :goto_7

    :cond_8
    iget-object v9, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->applicationContext:Landroid/content/Context;

    const v14, 0x7f080e27

    invoke-virtual {v9, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_6

    :goto_7
    new-instance v14, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toGutsViewModel$2;

    invoke-direct {v14, v3, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toGutsViewModel$2;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;)V

    iget-boolean v9, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isDismissible:Z

    move/from16 v17, v9

    move-object v9, v15

    move-object/from16 v18, v14

    move/from16 v14, v17

    move-object v8, v15

    move-object v15, v0

    move-object/from16 v17, v18

    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;-><init>(Ljava/lang/CharSequence;IIIZLkotlin/jvm/functions/Function0;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V

    iget-boolean v9, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->isPlaying:Z

    const/4 v10, 0x0

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v11, 0x3

    if-ne v0, v11, :cond_9

    const/4 v0, 0x1

    goto :goto_8

    :cond_9
    move v0, v10

    :goto_8
    iput-boolean v0, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->isPlaying:Z

    iget-boolean v11, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->isAnyButtonClicked:Z

    iput-boolean v10, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->isAnyButtonClicked:Z

    new-instance v30, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;

    new-instance v15, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$3;

    invoke-direct {v15, v8, v3, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$3;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;)V

    iget-object v14, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artwork:Landroid/graphics/drawable/Icon;

    iget-object v13, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appIcon:Landroid/graphics/drawable/Icon;

    iget-object v12, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v10, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v0, v10, v7}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v7, "Cannot find icon for package "

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    const v6, 0x7f080a5c

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    :goto_9
    iget-object v6, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->appIcon:Landroid/graphics/drawable/Icon;

    iget-boolean v7, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isResume:Z

    if-eqz v6, :cond_b

    if-eqz v7, :cond_a

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v6, 0x1

    :goto_b
    iget-object v10, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->artistName:Ljava/lang/CharSequence;

    const-string v12, ""

    if-nez v10, :cond_c

    move-object/from16 v18, v12

    goto :goto_c

    :cond_c
    move-object/from16 v18, v10

    :goto_c
    iget-object v10, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->songName:Ljava/lang/CharSequence;

    if-nez v10, :cond_d

    move-object/from16 v19, v12

    goto :goto_d

    :cond_d
    move-object/from16 v19, v10

    :goto_d
    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    iget-object v10, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->semanticActionButtons:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    if-eqz v10, :cond_f

    sget-object v12, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    move-object/from16 v17, v13

    new-instance v13, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$canShowScrubbingTimeViews$1$1;

    invoke-direct {v13, v10}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$canShowScrubbingTimeViews$1$1;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaButton;)V

    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v12

    move/from16 v20, v12

    goto :goto_f

    :cond_f
    move-object/from16 v17, v13

    const/16 v20, 0x0

    :goto_f
    iget-boolean v12, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->isPlaying:Z

    if-eqz v12, :cond_10

    if-nez v9, :cond_10

    if-eqz v11, :cond_10

    const/16 v21, 0x1

    goto :goto_10

    :cond_10
    const/16 v21, 0x0

    :goto_10
    if-eqz v10, :cond_11

    const/16 v22, 0x1

    goto :goto_11

    :cond_11
    const/16 v22, 0x0

    :goto_11
    const/16 v9, 0xa

    if-eqz v10, :cond_1d

    sget-object v11, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$canShowScrubbingTimeViews$1$1;

    invoke-direct {v12, v10}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$canShowScrubbingTimeViews$1$1;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaButton;)V

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v11

    sget-object v12, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->SEMANTIC_ACTIONS_ALL:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v23, v14

    invoke-static {v12, v9}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    invoke-virtual {v10, v14}, Lcom/android/systemui/media/controls/shared/model/MediaButton;->getActionById(I)Lcom/android/systemui/media/controls/shared/model/MediaAction;

    move-result-object v9

    move-object/from16 v24, v12

    sget-object v12, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->SEMANTIC_ACTIONS_COMPACT:Ljava/util/List;

    move-object/from16 v25, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    sget-object v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->SEMANTIC_ACTIONS_HIDE_WHEN_SCRUBBING:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v11, :cond_12

    if-eqz v8, :cond_12

    const/4 v8, 0x1

    goto :goto_13

    :cond_12
    const/4 v8, 0x0

    :goto_13
    new-instance v12, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;

    move/from16 v26, v11

    if-eqz v9, :cond_13

    iget-object v11, v9, Lcom/android/systemui/media/controls/shared/model/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v11

    goto :goto_14

    :cond_13
    const/16 v32, 0x0

    :goto_14
    if-eqz v9, :cond_14

    iget-object v11, v9, Lcom/android/systemui/media/controls/shared/model/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v33, v11

    goto :goto_15

    :cond_14
    const/16 v33, 0x0

    :goto_15
    if-eqz v9, :cond_15

    iget-object v11, v9, Lcom/android/systemui/media/controls/shared/model/MediaAction;->background:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v11

    const/4 v11, 0x1

    goto :goto_16

    :cond_15
    const/4 v11, 0x1

    const/16 v34, 0x0

    :goto_16
    xor-int/lit8 v35, v8, 0x1

    const v8, 0x7f0a0063

    if-ne v14, v8, :cond_16

    iget-boolean v8, v10, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reservePrev:Z

    if-nez v8, :cond_17

    :cond_16
    const v8, 0x7f0a0061

    if-ne v14, v8, :cond_18

    iget-boolean v8, v10, Lcom/android/systemui/media/controls/shared/model/MediaButton;->reserveNext:Z

    if-eqz v8, :cond_18

    :cond_17
    const/4 v8, 0x4

    :goto_17
    move/from16 v36, v8

    goto :goto_18

    :cond_18
    const/16 v8, 0x8

    goto :goto_17

    :goto_18
    if-eqz v9, :cond_19

    iget-object v8, v9, Lcom/android/systemui/media/controls/shared/model/MediaAction;->rebindId:Ljava/lang/Integer;

    move-object/from16 v38, v8

    goto :goto_19

    :cond_19
    const/16 v38, 0x0

    :goto_19
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    if-eqz v9, :cond_1a

    iget-object v8, v9, Lcom/android/systemui/media/controls/shared/model/MediaAction;->action:Ljava/lang/Runnable;

    goto :goto_1a

    :cond_1a
    const/4 v8, 0x0

    :goto_1a
    if-eqz v8, :cond_1b

    move/from16 v40, v11

    goto :goto_1b

    :cond_1b
    const/16 v40, 0x0

    :goto_1b
    new-instance v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toSemanticActionViewModel$1;

    invoke-direct {v8, v9, v3, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toSemanticActionViewModel$1;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;)V

    move-object/from16 v31, v12

    move-object/from16 v41, v8

    invoke-direct/range {v31 .. v41}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZIZLjava/lang/Integer;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v24

    move-object/from16 v8, v25

    move/from16 v11, v26

    const/16 v9, 0xa

    goto/16 :goto_12

    :cond_1c
    move-object/from16 v25, v8

    const/4 v11, 0x1

    goto :goto_1c

    :cond_1d
    move-object/from16 v25, v8

    move-object/from16 v23, v14

    const/4 v11, 0x1

    const/4 v13, 0x0

    :goto_1c
    iget-object v8, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->notificationActionButtons:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v14, v10, 0x1

    if-ltz v10, :cond_1f

    check-cast v12, Lcom/android/systemui/media/controls/shared/model/MediaAction;

    new-instance v11, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;

    move-object/from16 p1, v8

    iget-object v8, v12, Lcom/android/systemui/media/controls/shared/model/MediaAction;->icon:Landroid/graphics/drawable/Drawable;

    move/from16 v24, v14

    iget-object v14, v12, Lcom/android/systemui/media/controls/shared/model/MediaAction;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v44, v4

    iget-object v4, v12, Lcom/android/systemui/media/controls/shared/model/MediaAction;->background:Landroid/graphics/drawable/Drawable;

    move/from16 v45, v2

    iget-object v2, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->actionsToShowInCollapsed:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v37

    iget-object v2, v12, Lcom/android/systemui/media/controls/shared/model/MediaAction;->action:Ljava/lang/Runnable;

    if-eqz v2, :cond_1e

    const/16 v40, 0x1

    goto :goto_1e

    :cond_1e
    const/16 v40, 0x0

    :goto_1e
    new-instance v2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toNotifActionViewModel$1;

    invoke-direct {v2, v12, v3, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toNotifActionViewModel$1;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;)V

    const/16 v42, 0x98

    const/16 v43, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    iget-object v10, v12, Lcom/android/systemui/media/controls/shared/model/MediaAction;->rebindId:Ljava/lang/Integer;

    const/16 v39, 0x0

    move-object/from16 v31, v11

    move-object/from16 v32, v8

    move-object/from16 v33, v14

    move-object/from16 v34, v4

    move-object/from16 v38, v10

    move-object/from16 v41, v2

    invoke-direct/range {v31 .. v43}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaActionViewModel;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZIZLjava/lang/Integer;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p1

    move/from16 v10, v24

    move-object/from16 v4, v44

    move/from16 v2, v45

    const/4 v11, 0x1

    goto :goto_1d

    :cond_1f
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v1, 0x0

    throw v1

    :cond_20
    move/from16 v45, v2

    move-object/from16 v44, v4

    if-nez v13, :cond_21

    move-object v2, v9

    goto :goto_1f

    :cond_21
    move-object v2, v13

    :goto_1f
    invoke-static {}, Lcom/android/settingslib/flags/Flags;->legacyLeAudioSharing()V

    iget-object v14, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->deviceData:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    if-eqz v14, :cond_22

    iget-object v4, v14, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    if-eqz v4, :cond_22

    iget-object v8, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->applicationContext:Landroid/content/Context;

    const v9, 0x7f13030b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    move/from16 v35, v4

    goto :goto_20

    :cond_22
    const/16 v35, 0x0

    :goto_20
    if-eqz v14, :cond_23

    iget-boolean v4, v14, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->enabled:Z

    if-nez v4, :cond_23

    goto :goto_21

    :cond_23
    if-eqz v7, :cond_24

    :goto_21
    const/4 v4, 0x1

    goto :goto_22

    :cond_24
    const/4 v4, 0x0

    :goto_22
    if-eqz v14, :cond_26

    iget-object v7, v14, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    if-nez v7, :cond_25

    goto :goto_24

    :cond_25
    :goto_23
    move-object/from16 v33, v7

    goto :goto_25

    :cond_26
    :goto_24
    iget-object v7, v3, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->applicationContext:Landroid/content/Context;

    const v8, 0x7f130bf6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_23

    :goto_25
    xor-int/lit8 v32, v4, 0x1

    if-eqz v14, :cond_27

    iget-object v7, v14, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_27

    new-instance v8, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v9}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    move-object/from16 v34, v8

    goto :goto_26

    :cond_27
    const/4 v9, 0x0

    new-instance v7, Lcom/android/systemui/common/shared/model/Icon$Resource;

    const v8, 0x7f08099e

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    move-object/from16 v34, v7

    :goto_26
    if-eqz v14, :cond_28

    iget-object v7, v14, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->intent:Landroid/app/PendingIntent;

    goto :goto_27

    :cond_28
    move-object v7, v9

    :goto_27
    if-eqz v7, :cond_29

    const/16 v36, 0x1

    goto :goto_28

    :cond_29
    const/16 v36, 0x0

    :goto_28
    if-eqz v4, :cond_2a

    const v4, 0x3ec28f5c    # 0.38f

    :goto_29
    move/from16 v37, v4

    goto :goto_2a

    :cond_2a
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_29

    :goto_2a
    new-instance v39, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;

    const/16 v38, 0x0

    move-object/from16 v9, v39

    move/from16 v10, v38

    move/from16 v11, v35

    move-object v12, v3

    move-object/from16 v4, v17

    move-object v13, v1

    move-object/from16 v7, v23

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toOutputSwitcherViewModel$2;-><init>(ZZLcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;)V

    new-instance v24, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;

    move-object/from16 v31, v24

    invoke-direct/range {v31 .. v39}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;-><init>(ZLjava/lang/CharSequence;Lcom/android/systemui/common/shared/model/Icon;ZZFZLkotlin/jvm/functions/Function1;)V

    new-instance v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$4;

    move-object/from16 v26, v8

    invoke-direct {v8, v1, v3}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$4;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaControlModel;Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;)V

    new-instance v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$5;

    move-object/from16 v27, v8

    invoke-direct {v8, v3, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$5;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;)V

    new-instance v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$6;

    move-object/from16 v28, v8

    invoke-direct {v8, v3, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$6;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;)V

    new-instance v8, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$7;

    move-object/from16 v29, v8

    invoke-direct {v8, v1, v3, v5}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$7;-><init>(Lcom/android/systemui/media/controls/shared/model/MediaControlModel;Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Landroid/media/session/MediaController;)V

    iget-boolean v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->showExplicit:Z

    move/from16 v17, v1

    move-object/from16 v9, v30

    move-object v10, v15

    move-object v11, v7

    move-object v12, v4

    move-object v13, v0

    move v14, v6

    move-object/from16 v15, v18

    move-object/from16 v16, v19

    move/from16 v18, v45

    move-object/from16 v19, v44

    move-object/from16 v23, v2

    invoke-direct/range {v9 .. v29}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;-><init>(Lkotlin/jvm/functions/Function1;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Lcom/android/systemui/common/shared/model/Icon;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;ZZLcom/android/systemui/monet/ColorScheme;ZZZLjava/util/List;Lcom/android/systemui/media/controls/ui/viewmodel/MediaOutputSwitcherViewModel;Lcom/android/systemui/media/controls/ui/viewmodel/GutsViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v4, v30

    :goto_2b
    return-object v4
.end method
