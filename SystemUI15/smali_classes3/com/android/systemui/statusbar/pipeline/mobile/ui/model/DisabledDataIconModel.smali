.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;


# instance fields
.field public final iconId:I

.field public final iconLocation:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconLocation:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    iget-object v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconLocation:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconLocation:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconId:I

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconId:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconLocation:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    iget-object v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconLocation:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    const-string v1, "DisabledDataIcon"

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconLocation:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    if-eq v0, v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconId:I

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconId:I

    if-eq p1, p0, :cond_1

    invoke-virtual {p2, p0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisabledDataIconModel(iconLocation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconLocation:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
