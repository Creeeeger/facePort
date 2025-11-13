.class public final Lcom/android/systemui/controls/management/model/ControlWrapper;
.super Lcom/android/systemui/controls/management/model/StructureElementWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;

.field public final displayName:Ljava/lang/CharSequence;

.field public final needChunk:Z

.field public final structureName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/model/StructureElementWrapper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;

    iput-object p3, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->displayName:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->needChunk:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    move-object p3, p1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/management/model/ControlWrapper;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/management/model/ControlWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/management/model/ControlWrapper;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/ControlWrapper;->controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->displayName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/ControlWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->needChunk:Z

    iget-boolean p1, p1, Lcom/android/systemui/controls/management/model/ControlWrapper;->needChunk:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-static {v2, v1, v0}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->needChunk:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->structureName:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->displayName:Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ControlWrapper(structureName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", controlsModel="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->controlsModel:Lcom/android/systemui/controls/management/model/AllControlsModel;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", displayName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", needChunk="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/ControlWrapper;->needChunk:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
