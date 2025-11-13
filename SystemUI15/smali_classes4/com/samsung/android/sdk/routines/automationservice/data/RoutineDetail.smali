.class public final Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final actions:Ljava/util/List;

.field public final conditions:Ljava/util/List;

.field public final info:Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/routines/automationservice/data/ConditionStatus;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/routines/automationservice/data/ActionStatus;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->info:Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->conditions:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->actions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;

    iget-object v1, p1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->info:Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;

    iget-object v3, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->info:Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->conditions:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->conditions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->actions:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->actions:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->info:Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->conditions:Ljava/util/List;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->actions:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoutineDetail(info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->info:Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", conditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->conditions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineDetail;->actions:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
