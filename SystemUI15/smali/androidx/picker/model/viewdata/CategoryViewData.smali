.class public final Landroidx/picker/model/viewdata/CategoryViewData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/picker/model/viewdata/SearchableViewData;
.implements Landroidx/picker/model/Selectable;
.implements Landroidx/picker/model/viewdata/AppSideViewData;


# instance fields
.field public final appData:Landroidx/picker/model/appdata/CategoryAppData;

.field public final invisibleChildren:Ljava/util/List;

.field public final searchable:Ljava/util/List;

.field public final selectableItem:Landroidx/picker/loader/select/SelectableItem;


# direct methods
.method public constructor <init>(Landroidx/picker/model/appdata/CategoryAppData;Landroidx/picker/loader/select/SelectableItem;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/model/appdata/CategoryAppData;",
            "Landroidx/picker/loader/select/SelectableItem;",
            "Ljava/util/List<",
            "Landroidx/picker/model/viewdata/ViewData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    iput-object p2, p0, Landroidx/picker/model/viewdata/CategoryViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    iput-object p3, p0, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->label:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/model/viewdata/CategoryViewData;->searchable:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/picker/model/viewdata/CategoryViewData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/picker/model/viewdata/CategoryViewData;

    iget-object v1, p1, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    iget-object v3, p0, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/picker/model/viewdata/CategoryViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    iget-object v3, p1, Landroidx/picker/model/viewdata/CategoryViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    iget-object p1, p1, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAppData()Landroidx/picker/model/AppData;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    return-object p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    iget-object p0, p0, Landroidx/picker/model/appdata/CategoryAppData;->appInfo:Landroidx/picker/model/AppInfo;

    return-object p0
.end method

.method public final getSearchable()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/CategoryViewData;->searchable:Ljava/util/List;

    return-object p0
.end method

.method public final getSelectableItem()Landroidx/picker/loader/select/SelectableItem;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/CategoryViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/picker/model/viewdata/CategoryViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CategoryViewData(appData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectableItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/picker/model/viewdata/CategoryViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", invisibleChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker/model/viewdata/CategoryViewData;->invisibleChildren:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
