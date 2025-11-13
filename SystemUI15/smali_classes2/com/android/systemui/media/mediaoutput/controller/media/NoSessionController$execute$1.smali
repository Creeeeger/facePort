.class final Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;
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
.field final synthetic $action:J

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;


# direct methods
.method public constructor <init>(JLcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->$action:J

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;

    iget-wide v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->$action:J

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;-><init>(JLcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->$action:J

    const-wide/16 v5, 0x4

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    iget-object v3, p1, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->buffering:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v9, 0x77

    invoke-static/range {v3 .. v9}, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->update(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->audioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x7e

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->label:I

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->play:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v2, -0x4

    const/16 v6, 0x1e

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/MediaAction;JZFI)Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v6, 0x77

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->update(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;)V

    goto :goto_1

    :cond_3
    const-wide/16 v0, -0x4

    cmp-long p1, v3, v0

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController$execute$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->mediaInfoCache:Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->Companion:Lcom/android/systemui/media/mediaoutput/entity/MediaAction$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/media/mediaoutput/entity/MediaAction;->play:Lcom/android/systemui/media/mediaoutput/entity/MediaAction;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v6, 0x77

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;->copy$default(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/List;Landroidx/compose/ui/graphics/painter/Painter;Lcom/android/systemui/monet/ColorScheme;I)Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/media/NoSessionController;->update(Lcom/android/systemui/media/mediaoutput/entity/NoMediaSessionInfo;)V

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
