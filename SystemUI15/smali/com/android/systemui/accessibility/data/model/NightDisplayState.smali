.class public final Lcom/android/systemui/accessibility/data/model/NightDisplayState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final autoMode:I

.field public final endTime:Ljava/time/LocalTime;

.field public final isActivated:Z

.field public final locationEnabled:Z

.field public final shouldForceAutoMode:Z

.field public final startTime:Ljava/time/LocalTime;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/accessibility/data/model/NightDisplayState;-><init>(IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->autoMode:I

    iput-boolean p2, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->isActivated:Z

    iput-object p3, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->startTime:Ljava/time/LocalTime;

    iput-object p4, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->endTime:Ljava/time/LocalTime;

    iput-boolean p5, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->shouldForceAutoMode:Z

    iput-boolean p6, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->locationEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    const/4 p2, 0x1

    :cond_1
    and-int/lit8 p8, p7, 0x4

    const/4 v1, 0x0

    if-eqz p8, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v1

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/accessibility/data/model/NightDisplayState;-><init>(IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZ)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/accessibility/data/model/NightDisplayState;IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZI)Lcom/android/systemui/accessibility/data/model/NightDisplayState;
    .locals 7

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->autoMode:I

    :cond_0
    move v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->isActivated:Z

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->startTime:Ljava/time/LocalTime;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p4, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->endTime:Ljava/time/LocalTime;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-boolean p5, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->shouldForceAutoMode:Z

    :cond_4
    move v5, p5

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    iget-boolean p6, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->locationEnabled:Z

    :cond_5
    move v6, p6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/accessibility/data/model/NightDisplayState;-><init>(IZLjava/time/LocalTime;Ljava/time/LocalTime;ZZ)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/accessibility/data/model/NightDisplayState;

    iget v1, p1, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->autoMode:I

    iget v3, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->autoMode:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->isActivated:Z

    iget-boolean v3, p1, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->isActivated:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->startTime:Ljava/time/LocalTime;

    iget-object v3, p1, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->startTime:Ljava/time/LocalTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->endTime:Ljava/time/LocalTime;

    iget-object v3, p1, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->endTime:Ljava/time/LocalTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->shouldForceAutoMode:Z

    iget-boolean v3, p1, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->shouldForceAutoMode:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->locationEnabled:Z

    iget-boolean p1, p1, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->locationEnabled:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->autoMode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->isActivated:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->startTime:Ljava/time/LocalTime;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/time/LocalTime;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->endTime:Ljava/time/LocalTime;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/time/LocalTime;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->shouldForceAutoMode:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->locationEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->startTime:Ljava/time/LocalTime;

    iget-object v1, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->endTime:Ljava/time/LocalTime;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NightDisplayState(autoMode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->autoMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isActivated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->isActivated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", startTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endTime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shouldForceAutoMode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->shouldForceAutoMode:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", locationEnabled="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/accessibility/data/model/NightDisplayState;->locationEnabled:Z

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
