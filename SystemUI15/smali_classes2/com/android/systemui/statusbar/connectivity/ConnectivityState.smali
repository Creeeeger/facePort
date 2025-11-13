.class public Lcom/android/systemui/statusbar/connectivity/ConnectivityState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public connected:Z

.field public enabled:Z

.field public iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public inetCondition:I

.field public level:I

.field public rssi:I

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/connectivity/ConnectivityState;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    iget-object v0, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->rssi:I

    iput v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->rssi:I

    iget-wide v0, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->time:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->time:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    if-ne v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    if-ne v1, v2, :cond_2

    iget p1, p1, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->rssi:I

    iget p0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->rssi:I

    if-ne p1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->rssi:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v1, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public tableColumns()Ljava/util/List;
    .locals 9

    const-string/jumbo v7, "rssi"

    const-string/jumbo v8, "time"

    const-string v0, "connected"

    const-string v1, "enabled"

    const-string v2, "activityIn"

    const-string v3, "activityOut"

    const-string v4, "level"

    const-string v5, "iconGroup"

    const-string v6, "inetCondition"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public tableData()Ljava/util/List;
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->rssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityStateKt;->sSDF:Ljava/text/SimpleDateFormat;

    iget-wide v9, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->time:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->toString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Empty "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->connected:Z

    const-string v1, "connected="

    const-string v2, ","

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->enabled:Z

    const-string v1, "enabled="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->level:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "level="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->inetCondition:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "inetCondition="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "iconGroup="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    const-string v1, "activityIn="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    const-string v1, "activityOut="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->rssi:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rssi="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/systemui/statusbar/connectivity/ConnectivityStateKt;->sSDF:Ljava/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lastModified="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
