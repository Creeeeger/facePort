.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;
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
.method public constructor <init>(Lcom/android/settingslib/SignalIcon$MobileIconGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->iconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget v0, p1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    iput v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->contentDescription:I

    iget v0, p1, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    iput v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->iconId:I

    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->activityIcons:[I

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->activityIcons:[I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->iconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->iconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getActivityIcons()[I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->activityIcons:[I

    return-object p0
.end method

.method public final getContentDescription()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->contentDescription:I

    return p0
.end method

.method public final getIconId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->iconId:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->iconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    instance-of v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "networkTypeIcon"

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DefaultIcon(iconGroup="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel$DefaultIcon;->iconGroup:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
