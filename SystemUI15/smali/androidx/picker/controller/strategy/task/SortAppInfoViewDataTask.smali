.class public final Landroidx/picker/controller/strategy/task/SortAppInfoViewDataTask;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/picker/controller/strategy/task/SortAppInfoViewDataTask;-><init>(Ljava/util/Comparator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/controller/strategy/task/SortAppInfoViewDataTask;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Comparator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/picker/controller/strategy/task/SortAppInfoViewDataTask;-><init>(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/util/List;)Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Landroidx/picker/controller/strategy/task/SortAppInfoViewDataTask;->comparator:Ljava/util/Comparator;

    if-eqz p0, :cond_0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-object v0
.end method
