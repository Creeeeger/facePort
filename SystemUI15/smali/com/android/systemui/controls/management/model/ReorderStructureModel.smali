.class public final Lcom/android/systemui/controls/management/model/ReorderStructureModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/management/model/StructureModel;


# instance fields
.field public adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public dragPos:I

.field public final elements:Ljava/util/List;

.field public isDragging:Z

.field public final itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/model/ReorderStructureModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->dragPos:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    invoke-direct {v2, v1}, Lcom/android/systemui/controls/management/model/ReorderWrapper;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->elements:Ljava/util/List;

    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;-><init>(Lcom/android/systemui/controls/management/model/ReorderStructureModel;)V

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method


# virtual methods
.method public final getElements()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->elements:Ljava/util/List;

    return-object p0
.end method
