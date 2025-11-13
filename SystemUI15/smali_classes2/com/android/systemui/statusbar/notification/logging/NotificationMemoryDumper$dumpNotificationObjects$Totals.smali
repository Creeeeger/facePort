.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public bigPicture:I

.field public extender:I

.field public extras:I

.field public largeIcon:I

.field public smallIcon:I

.field public styleIcon:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    iput p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    iput p4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    iput p5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    iput p6, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    iget p1, p1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->smallIcon:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->largeIcon:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->styleIcon:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->bigPicture:I

    iget v4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extender:I

    iget p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryDumper$dumpNotificationObjects$Totals;->extras:I

    const-string v5, "Totals(smallIcon="

    const-string v6, ", largeIcon="

    const-string v7, ", styleIcon="

    invoke-static {v0, v1, v5, v6, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bigPicture="

    const-string v5, ", extender="

    invoke-static {v0, v2, v1, v3, v5}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
