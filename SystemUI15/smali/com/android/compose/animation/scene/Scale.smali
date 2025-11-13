.class public final Lcom/android/compose/animation/scene/Scale;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/compose/animation/scene/Scale$Companion;

.field public static final Default:Lcom/android/compose/animation/scene/Scale;

.field public static final Unspecified:Lcom/android/compose/animation/scene/Scale;

.field public static final Zero:Lcom/android/compose/animation/scene/Scale;


# instance fields
.field public final pivot:J

.field public final scaleX:F

.field public final scaleY:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/compose/animation/scene/Scale$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/compose/animation/scene/Scale$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/animation/scene/Scale;->Companion:Lcom/android/compose/animation/scene/Scale$Companion;

    new-instance v0, Lcom/android/compose/animation/scene/Scale;

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v8, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    const/4 v7, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v2, v0

    move-wide v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/compose/animation/scene/Scale;-><init>(FFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/animation/scene/Scale;->Default:Lcom/android/compose/animation/scene/Scale;

    new-instance v0, Lcom/android/compose/animation/scene/Scale;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/android/compose/animation/scene/Scale;-><init>(FFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/animation/scene/Scale;->Zero:Lcom/android/compose/animation/scene/Scale;

    new-instance v0, Lcom/android/compose/animation/scene/Scale;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move-object v2, v0

    move-wide v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/compose/animation/scene/Scale;-><init>(FFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/animation/scene/Scale;->Unspecified:Lcom/android/compose/animation/scene/Scale;

    return-void
.end method

.method private constructor <init>(FFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    iput p2, p0, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    iput-wide p3, p0, Lcom/android/compose/animation/scene/Scale;->pivot:J

    return-void
.end method

.method public constructor <init>(FFJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    sget-object p3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide p3, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    :cond_0
    move-wide v3, p3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/compose/animation/scene/Scale;-><init>(FFJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(FFJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/compose/animation/scene/Scale;-><init>(FFJ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/compose/animation/scene/Scale;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/compose/animation/scene/Scale;

    iget v1, p1, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    iget v3, p0, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    iget v3, p1, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/compose/animation/scene/Scale;->pivot:J

    iget-wide p0, p1, Lcom/android/compose/animation/scene/Scale;->pivot:J

    invoke-static {v3, v4, p0, p1}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    iget-wide v1, p0, Lcom/android/compose/animation/scene/Scale;->pivot:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/android/compose/animation/scene/Scale;->pivot:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scale(scaleX="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/compose/animation/scene/Scale;->scaleX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", scaleY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/compose/animation/scene/Scale;->scaleY:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", pivot="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
