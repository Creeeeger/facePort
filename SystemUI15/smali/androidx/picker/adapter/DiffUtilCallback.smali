.class public final Landroidx/picker/adapter/DiffUtilCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mNewList:Ljava/util/List;

.field public final mOldList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    iput-object p1, p0, Landroidx/picker/adapter/DiffUtilCallback;->mOldList:Ljava/util/List;

    iput-object p2, p0, Landroidx/picker/adapter/DiffUtilCallback;->mNewList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Landroidx/picker/adapter/DiffUtilCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/model/viewdata/ViewData;

    iget-object p0, p0, Landroidx/picker/adapter/DiffUtilCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/viewdata/ViewData;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p2, 0x1

    :cond_1
    :goto_0
    return p2
.end method

.method public final areItemsTheSame(II)Z
    .locals 1

    iget-object v0, p0, Landroidx/picker/adapter/DiffUtilCallback;->mOldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/model/viewdata/ViewData;

    iget-object p0, p0, Landroidx/picker/adapter/DiffUtilCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/viewdata/ViewData;

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/picker/model/viewdata/ViewData;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Landroidx/picker/model/viewdata/ViewData;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getChangePayload(II)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget-object v1, p0, Landroidx/picker/adapter/DiffUtilCallback;->mOldList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    if-ltz p2, :cond_1

    iget-object v1, p0, Landroidx/picker/adapter/DiffUtilCallback;->mNewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/picker/adapter/DiffUtilCallback;->mOldList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/picker/model/viewdata/ViewData;

    iget-object p0, p0, Landroidx/picker/adapter/DiffUtilCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/viewdata/ViewData;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final getNewListSize()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/DiffUtilCallback;->mNewList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/DiffUtilCallback;->mOldList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
