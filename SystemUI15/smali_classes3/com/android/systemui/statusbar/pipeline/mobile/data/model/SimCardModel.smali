.class public final Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;


# instance fields
.field public final simState:Ljava/lang/String;

.field public final simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    iget-object v1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simState:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simState:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simState:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;

    iget-object v0, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "simType"

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simState:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simState:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "simState"

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimCardModel(simType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simType:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", simState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimCardModel;->simState:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
