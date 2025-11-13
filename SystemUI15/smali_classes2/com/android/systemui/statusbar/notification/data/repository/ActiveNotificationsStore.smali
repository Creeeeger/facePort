.class public final Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final groups:Ljava/util/Map;

.field public final individuals:Ljava/util/Map;

.field public final rankingsMap:Ljava/util/Map;

.field public final renderList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationGroupModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/shared/ActiveNotificationModel;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore$Key;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->groups:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->individuals:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->renderList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->rankingsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p4

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->groups:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->groups:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->individuals:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->individuals:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->renderList:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->renderList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->rankingsMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->rankingsMap:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->groups:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->individuals:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->renderList:Ljava/util/List;

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->rankingsMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->groups:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->individuals:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->renderList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationsStore;->rankingsMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ActiveNotificationsStore(groups="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", individuals="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", renderList="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rankingsMap="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
