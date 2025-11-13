.class public final Landroidx/picker/model/viewdata/AppInfoViewData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/picker/model/viewdata/SearchableViewData;
.implements Landroidx/picker/model/AppInfoData;
.implements Landroidx/picker/model/viewdata/AppSideViewData;
.implements Landroidx/picker/model/SpanData;
.implements Landroidx/picker/model/Selectable;


# instance fields
.field public final appInfoData:Landroidx/picker/model/AppInfoData;

.field public final dimmedItem:Landroidx/picker/features/observable/UpdateObservableProperty;

.field public final highlightText:Landroidx/picker/features/observable/ObservableProperty;

.field public final iconFlow:Landroidx/picker/loader/AppIconFlow;

.field public final onActionClick:Lkotlin/jvm/functions/Function1;

.field public final selectableItem:Landroidx/picker/loader/select/SelectableItem;

.field public final spanCount:I


# direct methods
.method public constructor <init>(Landroidx/picker/model/AppInfoData;Landroidx/picker/loader/AppIconFlow;Landroidx/picker/loader/select/SelectableItem;ILkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/model/AppInfoData;",
            "Landroidx/picker/loader/AppIconFlow;",
            "Landroidx/picker/loader/select/SelectableItem;",
            "I",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    iput-object p2, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    iput-object p3, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    iput p4, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->spanCount:I

    iput-object p5, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->onActionClick:Lkotlin/jvm/functions/Function1;

    new-instance p2, Landroidx/picker/features/observable/UpdateObservableProperty;

    new-instance p3, Landroidx/picker/model/viewdata/AppInfoViewData$dimmedItem$1;

    invoke-direct {p3, p1}, Landroidx/picker/model/viewdata/AppInfoViewData$dimmedItem$1;-><init>(Landroidx/picker/model/AppInfoData;)V

    const/4 p1, 0x0

    const/4 p4, 0x2

    invoke-direct {p2, p3, p1, p4, p1}, Landroidx/picker/features/observable/UpdateObservableProperty;-><init>(Landroidx/picker/features/observable/UpdateMutableState;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->dimmedItem:Landroidx/picker/features/observable/UpdateObservableProperty;

    new-instance p2, Landroidx/picker/features/observable/ObservableProperty;

    new-instance p3, Landroidx/picker/features/observable/StringState;

    const-string p5, ""

    invoke-direct {p3, p5}, Landroidx/picker/features/observable/StringState;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3, p1, p4, p1}, Landroidx/picker/features/observable/ObservableProperty;-><init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->highlightText:Landroidx/picker/features/observable/ObservableProperty;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/picker/model/AppInfoData;Landroidx/picker/loader/AppIconFlow;Landroidx/picker/loader/select/SelectableItem;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v5, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/picker/model/viewdata/AppInfoViewData;-><init>(Landroidx/picker/model/AppInfoData;Landroidx/picker/loader/AppIconFlow;Landroidx/picker/loader/select/SelectableItem;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    iget-object v3, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    iget-object v3, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    iget-object v3, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->spanCount:I

    iget v3, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->spanCount:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->onActionClick:Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->onActionClick:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getActionIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getAppData()Landroidx/picker/model/AppData;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    return-object p0
.end method

.method public final getAppInfo()Landroidx/picker/model/AppInfo;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getDimmed()Z
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getDimmed()Z

    move-result p0

    return p0
.end method

.method public final getExtraLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getExtraLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getItemType()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getItemType()I

    move-result p0

    return p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSearchable()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectableItem()Landroidx/picker/loader/select/SelectableItem;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    return-object p0
.end method

.method public final getSelected()Z
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getSelected()Z

    move-result p0

    return p0
.end method

.method public final getSpanCount()I
    .locals 0

    iget p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->spanCount:I

    return p0
.end method

.method public final getSubIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getSubIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getSubLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->getSubLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->spanCount:I

    invoke-static {v3, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v1

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->onActionClick:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final isValueInSubLabel()Z
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0}, Landroidx/picker/model/AppInfoData;->isValueInSubLabel()Z

    move-result p0

    return p0
.end method

.method public final setDimmed(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0, p1}, Landroidx/picker/model/AppInfoData;->setDimmed(Z)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0, p1}, Landroidx/picker/model/AppInfoData;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0, p1}, Landroidx/picker/model/AppInfoData;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public final setSelected(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {p0, p1}, Landroidx/picker/model/AppInfoData;->setSelected(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppInfoViewData(appInfoData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectableItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spanCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->spanCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onActionClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker/model/viewdata/AppInfoViewData;->onActionClick:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
