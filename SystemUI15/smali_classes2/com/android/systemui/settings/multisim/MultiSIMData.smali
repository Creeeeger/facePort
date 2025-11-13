.class public final Lcom/android/systemui/settings/multisim/MultiSIMData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public airplaneMode:Z

.field public carrierName:[Ljava/lang/String;

.field public changingDataInternally:Z

.field public changingNetMode:Z

.field public defaultDataSimId:I

.field public defaultSmsSimId:I

.field public defaultVoiceSimId:I

.field public isCalling:Z

.field public isDataEnabled:Z

.field public isESimSlot:[Z

.field public isMultiSimReady:Z

.field public isRestrictionsForMmsUse:Z

.field public isSRoaming:Z

.field public isSatelliteMode:Z

.field public isSecondaryUser:Z

.field public phoneNumber:[Ljava/lang/String;

.field public simImageIdx:[I

.field public simName:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    const-string v1, "SIM 1"

    const-string v2, "SIM 2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    const/4 v1, 0x2

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSatelliteMode:Z

    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V
    .locals 2

    iget v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    iget v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    iget v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSatelliteMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSatelliteMode:Z

    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    iget v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    iget v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    iget v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSatelliteMode:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSatelliteMode:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiSIMData{mDefaultVoiceSimId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultSmsSimId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultDataSimId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SimImageIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SimName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAirplaneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChangNetModeDelaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChangingDataInternally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsESimSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrierName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRestrictionsForMmsUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiSimReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCalling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSecondaryUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSecondaryUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSatelliteMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSatelliteMode:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/ChangeSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
