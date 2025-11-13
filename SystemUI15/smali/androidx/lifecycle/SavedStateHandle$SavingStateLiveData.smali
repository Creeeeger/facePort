.class public final Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public handle:Landroidx/lifecycle/SavedStateHandle;

.field public final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->key:Ljava/lang/String;

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->handle:Landroidx/lifecycle/SavedStateHandle;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/SavedStateHandle;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->key:Ljava/lang/String;

    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->handle:Landroidx/lifecycle/SavedStateHandle;

    return-void
.end method


# virtual methods
.method public final setValue(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->handle:Landroidx/lifecycle/SavedStateHandle;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/lifecycle/SavedStateHandle;->regular:Ljava/util/Map;

    iget-object v2, p0, Landroidx/lifecycle/SavedStateHandle$SavingStateLiveData;->key:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Landroidx/lifecycle/SavedStateHandle;->flows:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
