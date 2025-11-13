.class public final Lcom/android/systemui/statusbar/connectivity/WifiState;
.super Lcom/android/systemui/statusbar/connectivity/ConnectivityState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public isCarrierMerged:Z

.field public isDefault:Z

.field public isDefaultConnectionValidated:Z

.field public isTransient:Z

.field public ssid:Ljava/lang/String;

.field public statusLabel:Ljava/lang/String;

.field public subId:I


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/connectivity/WifiState;-><init>(Ljava/lang/String;ZZLjava/lang/String;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;ZZI)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefaultConnectionValidated:Z

    iput p7, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZLjava/lang/String;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    const/4 v1, 0x0

    if-eqz p9, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move p3, v1

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move p5, v1

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move p6, v1

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    move p7, v1

    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/connectivity/WifiState;-><init>(Ljava/lang/String;ZZLjava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/android/systemui/statusbar/connectivity/ConnectivityState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->copyFrom(Lcom/android/systemui/statusbar/connectivity/ConnectivityState;)V

    check-cast p1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefaultConnectionValidated:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefaultConnectionValidated:Z

    iget p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/android/systemui/statusbar/connectivity/WifiState;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefaultConnectionValidated:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefaultConnectionValidated:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    iget p1, p1, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefaultConnectionValidated:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final tableColumns()Ljava/util/List;
    .locals 7

    const-string/jumbo v3, "statusLabel"

    const-string v4, "isCarrierMerged"

    const-string/jumbo v0, "ssid"

    const-string v1, "isTransient"

    const-string v2, "isDefault"

    const-string v5, "isDefaultConnectionValidated"

    const-string/jumbo v6, "subId"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-super {p0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->tableColumns()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final tableData()Ljava/util/List;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefaultConnectionValidated:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->tableData()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->toString(Ljava/lang/StringBuilder;)V

    const-string v0, ",ssid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isTransient="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isTransient:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isDefault="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefault:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",statusLabel="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->statusLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isCarrierMerged="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isCarrierMerged:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isDefaultConnectionValidated="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->isDefaultConnectionValidated:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",subId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/WifiState;->subId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
