.class public final Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$1$1$invokeSuspend$$inlined$collectIndexed$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public index:I

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$1$1$invokeSuspend$$inlined$collectIndexed$1;->this$0:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget p2, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$1$1$invokeSuspend$$inlined$collectIndexed$1;->index:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$1$1$invokeSuspend$$inlined$collectIndexed$1;->index:I

    if-ltz p2, :cond_3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter$1$1$invokeSuspend$$inlined$collectIndexed$1;->this$0:Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->qsHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileViewModelAdapter;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSHost;->removeTile(Ljava/lang/String;)V

    :cond_0
    if-lez p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Turning on tile is not supported now"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Index overflow has happened"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
