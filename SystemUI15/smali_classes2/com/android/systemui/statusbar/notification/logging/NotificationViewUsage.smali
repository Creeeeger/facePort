.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final customViews:I

.field public final largeIcon:I

.field public final smallIcon:I

.field public final softwareBitmapsPenalty:I

.field public final style:I

.field public final systemIcons:I

.field public final viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/logging/ViewType;IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->smallIcon:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->largeIcon:I

    iput p4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->systemIcons:I

    iput p5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->style:I

    iput p6, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->customViews:I

    iput p7, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->softwareBitmapsPenalty:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->smallIcon:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->smallIcon:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->largeIcon:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->largeIcon:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->systemIcons:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->systemIcons:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->style:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->style:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->customViews:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->customViews:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->softwareBitmapsPenalty:I

    iget p1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->softwareBitmapsPenalty:I

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->smallIcon:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->largeIcon:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->systemIcons:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->style:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->customViews:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->softwareBitmapsPenalty:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationViewUsage(viewType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->viewType:Lcom/android/systemui/statusbar/notification/logging/ViewType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", smallIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->smallIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", largeIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->largeIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", systemIcons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->systemIcons:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", customViews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->customViews:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", softwareBitmapsPenalty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationViewUsage;->softwareBitmapsPenalty:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
