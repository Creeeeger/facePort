.class public final Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

.field public final exportSessionTime:Ljava/lang/String;

.field public final extraBackupItem:Ljava/util/ArrayList;

.field public final intentAction:Ljava/lang/String;

.field public final savePath:Ljava/lang/String;

.field public final securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

.field public final sessionKey:Ljava/lang/String;

.field public final source:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    iput-object p4, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->sessionKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    iput-object p7, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->extraBackupItem:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;Ljava/util/ArrayList;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;

    iget-object v1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->sessionKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->sessionKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->extraBackupItem:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->extraBackupItem:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->sessionKey:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->extraBackupItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->extraBackupItem:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BNRRequest(intentAction="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->intentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", savePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->savePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->action:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sessionKey=, source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", securityLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->securityLevel:Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", extraBackupItem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", exportSessionTime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRRequest;->exportSessionTime:Ljava/lang/String;

    const-string v0, ")"

    invoke-static {v1, p0, v0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
