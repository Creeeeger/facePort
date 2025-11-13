.class public final Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final cardId:I

.field public final cardState:I

.field public final isActive:Z

.field public final isEuicc:Z

.field public final isMultipleEnabledProfilesSupported:Z

.field public final isRemovable:Z

.field public final logicalSlotIndex:I

.field public final physicalSlotIndex:Ljava/lang/String;

.field public final portIndex:I

.field public final subId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZZIZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->subId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->physicalSlotIndex:Ljava/lang/String;

    iput p3, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->logicalSlotIndex:I

    iput p4, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardId:I

    iput-boolean p5, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isEuicc:Z

    iput-boolean p6, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isMultipleEnabledProfilesSupported:Z

    iput p7, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardState:I

    iput-boolean p8, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isRemovable:Z

    iput-boolean p9, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isActive:Z

    iput p10, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->portIndex:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;

    iget-object v1, p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->subId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->physicalSlotIndex:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->physicalSlotIndex:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->logicalSlotIndex:I

    iget v3, p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->logicalSlotIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardId:I

    iget v3, p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardId:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isEuicc:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isEuicc:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isMultipleEnabledProfilesSupported:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isMultipleEnabledProfilesSupported:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardState:I

    iget v3, p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardState:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isRemovable:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isRemovable:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isActive:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isActive:Z

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->portIndex:I

    iget p1, p1, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->portIndex:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->subId:Ljava/lang/String;

    const/16 v1, 0x20f

    const/16 v2, 0x1f

    invoke-static {v1, v2, v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->physicalSlotIndex:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->logicalSlotIndex:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardId:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isEuicc:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isMultipleEnabledProfilesSupported:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardState:I

    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isRemovable:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isActive:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget p0, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->portIndex:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " {UiccInfoEntity(subId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->subId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logicalSlotIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->physicalSlotIndex:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->logicalSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEuicc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMultipleEnabledProfilesSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isMultipleEnabledProfilesSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cardState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->cardState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRemovable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", portIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;->portIndex:I

    const-string v1, ")}"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
