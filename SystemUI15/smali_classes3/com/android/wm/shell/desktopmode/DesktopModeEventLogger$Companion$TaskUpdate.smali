.class public final Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final instanceId:I

.field public final taskHeight:I

.field public final taskWidth:I

.field public final taskX:I

.field public final taskY:I

.field public final uid:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->instanceId:I

    iput p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->uid:I

    iput p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskHeight:I

    iput p4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskWidth:I

    iput p5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskX:I

    iput p6, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskY:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move v8, v1

    goto :goto_3

    :cond_3
    move v8, p6

    :goto_3
    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;

    iget v1, p1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->instanceId:I

    iget v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->instanceId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->uid:I

    iget v3, p1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->uid:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskHeight:I

    iget v3, p1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskHeight:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskWidth:I

    iget v3, p1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskWidth:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskX:I

    iget v3, p1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskX:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskY:I

    iget p1, p1, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskY:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->instanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->uid:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskHeight:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskWidth:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskX:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskY:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaskUpdate(instanceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->instanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeEventLogger$Companion$TaskUpdate;->taskY:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
