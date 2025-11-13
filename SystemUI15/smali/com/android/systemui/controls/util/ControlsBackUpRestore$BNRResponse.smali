.class public final Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

.field public final exportSessionTime:Ljava/lang/String;

.field public final extraErrCode:Ljava/util/HashMap;

.field public final intentAction:Ljava/lang/String;

.field public final reqSize:I

.field public final result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

.field public final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;",
            "Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    iput-object p3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    iput p4, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    iput-object p5, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    iput-object p7, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;-><init>(Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;

    iget-object v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    iget v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->extraErrCode:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BNRResponse(intentAction="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->intentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->result:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", errCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->errCode:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRErrCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reqSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->reqSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extraErrCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", exportSessionTime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRResponse;->exportSessionTime:Ljava/lang/String;

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
