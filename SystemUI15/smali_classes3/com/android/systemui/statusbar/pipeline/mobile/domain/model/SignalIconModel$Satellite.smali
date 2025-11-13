.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;


# instance fields
.field public final icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

.field public final level:I


# direct methods
.method public constructor <init>(ILcom/android/systemui/common/shared/model/Icon$Resource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->level:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;

    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->level:I

    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->level:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLevel()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->level:I

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->level:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    invoke-virtual {p0}, Lcom/android/systemui/common/shared/model/Icon$Resource;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final logFully(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    const-string v0, "numLevels"

    const-string v1, "3"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "s"

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "level"

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->level:I

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    return-void
.end method

.method public final logPartial(Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->logFully(Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->level:I

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->level:I

    if-eq p1, p0, :cond_1

    const-string p1, "level"

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Satellite(level="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Satellite;->icon:Lcom/android/systemui/common/shared/model/Icon$Resource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
