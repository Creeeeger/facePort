.class public final Landroidx/compose/runtime/livedata/LiveDataAdapterKt$observeAsState$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $observer$inlined:Landroidx/lifecycle/Observer;

.field public final synthetic $this_observeAsState$inlined:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/livedata/LiveDataAdapterKt$observeAsState$1$invoke$$inlined$onDispose$1;->$this_observeAsState$inlined:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Landroidx/compose/runtime/livedata/LiveDataAdapterKt$observeAsState$1$invoke$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/livedata/LiveDataAdapterKt$observeAsState$1$invoke$$inlined$onDispose$1;->$this_observeAsState$inlined:Landroidx/lifecycle/LiveData;

    iget-object p0, p0, Landroidx/compose/runtime/livedata/LiveDataAdapterKt$observeAsState$1$invoke$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
