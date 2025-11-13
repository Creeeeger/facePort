.class public final Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final active:Z

.field public final applicationName:Ljava/lang/CharSequence;

.field public final attributionLabel:Ljava/lang/CharSequence;

.field public final attributionTag:Ljava/lang/CharSequence;

.field public final builder:Ljava/lang/StringBuilder;

.field public final enterprise:Z

.field public final isSystem:Z

.field public final lastActiveTimestamp:J

.field public final navigationIntent:Landroid/content/Intent;

.field public final packageName:Ljava/lang/String;

.field public final permGroupName:Ljava/lang/CharSequence;

.field public final phoneCall:Z

.field public final proxyLabel:Ljava/lang/CharSequence;

.field public final type:Lcom/android/systemui/privacy/PrivacyType;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyType;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZZZLjava/lang/CharSequence;Landroid/content/Intent;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move/from16 v14, p15

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v15, p1

    iput-object v15, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    iput-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    iput v2, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    iput-object v3, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    iput-object v4, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionTag:Ljava/lang/CharSequence;

    iput-object v5, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    iput-object v6, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    iput-wide v7, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    iput-boolean v9, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    iput-boolean v10, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->enterprise:Z

    iput-boolean v11, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    iput-object v12, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->permGroupName:Ljava/lang/CharSequence;

    iput-object v13, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    iput-boolean v14, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->isSystem:Z

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v14, "PrivacyElement("

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v15, v0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->builder:Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/privacy/PrivacyType;->getLogName()Ljava/lang/String;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "type="

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, ", packageName="

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", appName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", attributionTag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", attributionLabel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", proxyLabel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", lastActive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_3

    const-string v0, ", active"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v10, :cond_4

    const-string v0, ", enterprise"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v11, :cond_5

    const-string v0, ", phoneCall"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", permGroupName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p14

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", navigationIntent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", isSystem="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v1, p15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    iget-object v1, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    iget-object v3, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    iget v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionTag:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionTag:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    iget-wide v5, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    iget-boolean v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->enterprise:Z

    iget-boolean v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->enterprise:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    iget-boolean v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->permGroupName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->permGroupName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->isSystem:Z

    iget-boolean p1, p1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->isSystem:Z

    if-eq p0, p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->type:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->userId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->applicationName:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionTag:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->attributionLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->proxyLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v4, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->lastActiveTimestamp:J

    invoke-static {v0, v1, v4, v5}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->active:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->enterprise:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->phoneCall:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->permGroupName:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->navigationIntent:Landroid/content/Intent;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroid/content/Intent;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->isSystem:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
