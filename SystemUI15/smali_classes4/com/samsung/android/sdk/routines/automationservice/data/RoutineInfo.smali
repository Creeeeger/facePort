.class public final Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo$Companion;


# instance fields
.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final type:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->type:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;

    iget-object v1, p1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->name:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->type:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    iget-object p1, p1, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->type:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->type:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoutineInfo(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/data/RoutineInfo;->type:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
