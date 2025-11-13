.class public final Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;
.super Lcom/android/systemui/controls/management/model/SecElementWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final displayName:Ljava/lang/CharSequence;

.field public favorite:Z

.field public final needStructureName:Z

.field public final structureName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/management/model/SecElementWrapper;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->favorite:Z

    iput-object p3, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->needStructureName:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    move-object p3, p1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;-><init>(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;

    iget-object v1, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->favorite:Z

    iget-boolean v3, p1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->favorite:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->needStructureName:Z

    iget-boolean p1, p1, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->needStructureName:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->favorite:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->needStructureName:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->structureName:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->favorite:Z

    iget-object v2, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->displayName:Ljava/lang/CharSequence;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SecStructureNameWrapper(structureName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", favorite="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", displayName="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", needStructureName="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/SecStructureNameWrapper;->needStructureName:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
