.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;


# instance fields
.field public final activityIcons:[I

.field public final contentDescription:I

.field public final iconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

.field public final iconId:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/SignalIcon$MobileIconGroup;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconId:I

    iget p2, p1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->contentDescription:I

    iget-object p2, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->activityIcons:[I

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->activityIcons:[I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;

    iget-object v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconId:I

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconId:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getActivityIcons()[I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->activityIcons:[I

    return-object p0
.end method

.method public final getContentDescription()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->contentDescription:I

    return p0
.end method

.method public final getIconId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconId:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    instance-of v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->getIconId()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconId:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->getActivityIcons()[I

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->activityIcons:[I

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Ovrd("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "networkTypeIcon"

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OverriddenIcon(iconGroup="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$OverriddenIcon;->iconId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
