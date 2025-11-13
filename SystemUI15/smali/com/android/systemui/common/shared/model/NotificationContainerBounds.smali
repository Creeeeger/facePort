.class public final Lcom/android/systemui/common/shared/model/NotificationContainerBounds;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bottom:F

.field public final isAnimated:Z

.field public final top:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;-><init>(FFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->top:F

    iput p2, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->bottom:F

    iput-boolean p3, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->isAnimated:Z

    return-void
.end method

.method public synthetic constructor <init>(FFZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;-><init>(FFZ)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/common/shared/model/NotificationContainerBounds;FZI)Lcom/android/systemui/common/shared/model/NotificationContainerBounds;
    .locals 1

    iget v0, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->bottom:F

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    iget-boolean p2, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->isAnimated:Z

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;-><init>(FFZ)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;

    iget v1, p1, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->top:F

    iget v3, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->top:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->bottom:F

    iget v3, p1, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->bottom:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->isAnimated:Z

    iget-boolean p1, p1, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->isAnimated:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->top:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->bottom:F

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(FII)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->isAnimated:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationContainerBounds(top="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isAnimated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/common/shared/model/NotificationContainerBounds;->isAnimated:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
