.class final Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableIntState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mobileDataSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableIntState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $nonDdsRemember:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableIntState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $textsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/runtime/MutableIntState;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/android/settings/spa/network/NetworkCellularGroupProvider;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/spa/network/NetworkCellularGroupProvider;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$callsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->this$0:Lcom/android/settings/spa/network/NetworkCellularGroupProvider;

    iput-object p3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$textsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$mobileDataSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$nonDdsRemember:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;

    iget-object v1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$callsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->this$0:Lcom/android/settings/spa/network/NetworkCellularGroupProvider;

    iget-object v3, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$textsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$mobileDataSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$nonDdsRemember:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/spa/network/NetworkCellularGroupProvider;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$callsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/MutableIntState;

    iget-object v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->this$0:Lcom/android/settings/spa/network/NetworkCellularGroupProvider;

    iget v0, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->defaultVoiceSubId:I

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$textsSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/MutableIntState;

    iget-object v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->this$0:Lcom/android/settings/spa/network/NetworkCellularGroupProvider;

    iget v0, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->defaultSmsSubId:I

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$mobileDataSelectedId:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/MutableIntState;

    iget-object v0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->this$0:Lcom/android/settings/spa/network/NetworkCellularGroupProvider;

    iget v0, v0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->defaultDataSubId:I

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    iget-object p1, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->$nonDdsRemember:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/MutableIntState;

    iget-object p0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider$Page$2;->this$0:Lcom/android/settings/spa/network/NetworkCellularGroupProvider;

    iget p0, p0, Lcom/android/settings/spa/network/NetworkCellularGroupProvider;->nonDds:I

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->setIntValue(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
