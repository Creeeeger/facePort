.class final Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $appIcon:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Lcom/android/systemui/monet/ColorScheme;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $newMetadata:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/media/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $newPlaybackState:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/media/session/PlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $thumbnail:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/graphics/ImageBitmap;",
            "Lcom/android/systemui/monet/ColorScheme;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/Pair;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/media/MediaMetadata;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/media/session/PlaybackState;",
            ">;",
            "Lkotlin/Pair<",
            "+",
            "Landroidx/compose/ui/graphics/ImageBitmap;",
            "+",
            "Lcom/android/systemui/monet/ColorScheme;",
            ">;",
            "Lkotlin/Pair<",
            "+",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "+",
            "Lcom/android/systemui/monet/ColorScheme;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$newMetadata:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$newPlaybackState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$thumbnail:Lkotlin/Pair;

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$appIcon:Lkotlin/Pair;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v7, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$newMetadata:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$newPlaybackState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$thumbnail:Lkotlin/Pair;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$appIcon:Lkotlin/Pair;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;-><init>(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/Pair;Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->label:I

    if-nez v1, :cond_6

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;

    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$newMetadata:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$newPlaybackState:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$thumbnail:Lkotlin/Pair;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$update$8;->$appIcon:Lkotlin/Pair;

    :try_start_0
    sget v5, Lkotlin/Result;->$r8$clinit:I

    iget-object v5, v1, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/media/MediaMetadata;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v5, v2}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->access$update(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;Landroid/media/MediaMetadata;)Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    move-result-object v5

    :goto_0
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/media/session/PlaybackState;

    if-nez v2, :cond_1

    :goto_1
    move-object v6, v5

    goto :goto_2

    :cond_1
    invoke-static {v1, v5, v2}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->access$update(Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;Landroid/media/session/PlaybackState;)Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    move-result-object v5

    goto :goto_1

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/graphics/ImageBitmap;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/android/systemui/monet/ColorScheme;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0xfbf

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-static/range {v6 .. v23}, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    move-result-object v6

    :cond_2
    move-object v7, v6

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :goto_3
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/systemui/monet/ColorScheme;

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x13ff

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    invoke-static/range {v7 .. v24}, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;JJLandroidx/compose/ui/graphics/ImageBitmap;IJLjava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    move-result-object v7

    :cond_3
    iput-object v7, v1, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    invoke-virtual {v1, v7}, Lcom/android/systemui/media/mediaoutput/controller/media/SessionController;->update(Lcom/android/systemui/media/mediaoutput/entity/MediaInfo;)V

    iget-object v0, v1, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->progressRunner:Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;

    iget-object v1, v1, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;

    iget v1, v1, Lcom/android/systemui/media/mediaoutput/entity/MediaSessionInfo;->playbackState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/media/MediaSessionController$ProgressRunner;->state(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget v1, Lkotlin/Result;->$r8$clinit:I

    new-instance v7, Lkotlin/Result$Failure;

    invoke-direct {v7, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    invoke-static {v7}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
