.class public final Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2$1;

    iget v3, v2, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/Map;

    iget-object v4, v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;

    iget-object v6, v4, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/shared/model/MediaData;

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget-object v9, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v10, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->token:Landroid/media/session/MediaSession$Token;

    iget-object v11, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    iget-object v12, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->clickIntent:Landroid/app/PendingIntent;

    iget-object v14, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->song:Ljava/lang/CharSequence;

    iget-object v15, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->artist:Ljava/lang/CharSequence;

    iget-object v6, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    iget-object v13, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->actions:Ljava/util/List;

    iget-object v8, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->actionsToShowInCompact:Ljava/util/List;

    iget-object v7, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->semanticActions:Lcom/android/systemui/media/controls/shared/model/MediaButton;

    move-object/from16 v19, v7

    iget-boolean v7, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->isClearable:Z

    move/from16 v22, v7

    iget v7, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->appUid:I

    iget-object v5, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    move-object/from16 v21, v8

    move-object v8, v5

    iget-object v5, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->app:Ljava/lang/String;

    move-object/from16 v20, v13

    move-object v13, v5

    iget-boolean v5, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->isExplicit:Z

    move/from16 v16, v5

    iget-object v5, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->device:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    move-object/from16 v18, v5

    iget-boolean v5, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumption:Z

    move/from16 v23, v5

    iget-object v1, v1, Lcom/android/systemui/media/controls/shared/model/MediaData;->resumeProgress:Ljava/lang/Double;

    move-object/from16 v24, v1

    move-object v1, v6

    move-object v6, v4

    move-object/from16 v17, v1

    invoke-direct/range {v6 .. v24}, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;-><init>(ILjava/lang/String;Lcom/android/internal/logging/InstanceId;Landroid/media/session/MediaSession$Token;Landroid/graphics/drawable/Icon;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Icon;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/util/List;Ljava/util/List;ZZLjava/lang/Double;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :goto_2
    iput v1, v2, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2$1;->label:I

    iget-object v0, v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v4, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
