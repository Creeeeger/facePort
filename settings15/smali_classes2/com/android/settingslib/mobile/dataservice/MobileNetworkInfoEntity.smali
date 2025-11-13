.class public final Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final activeNetworkIsCellular:Z

.field public final isCdmaOptions:Z

.field public final isContactDiscoveryEnabled:Z

.field public final isContactDiscoveryVisible:Z

.field public final isDataRoamingEnabled:Z

.field public final isGsmOptions:Z

.field public final isMobileDataEnabled:Z

.field public final isTdscdmaSupported:Z

.field public final isWorldMode:Z

.field public final shouldDisplayNetworkSelectOptions:Z

.field public final showToggleForPhysicalSim:Z

.field public final subId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZZZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->subId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryEnabled:Z

    iput-boolean p3, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryVisible:Z

    iput-boolean p4, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isMobileDataEnabled:Z

    iput-boolean p5, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isCdmaOptions:Z

    iput-boolean p6, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isGsmOptions:Z

    iput-boolean p7, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isWorldMode:Z

    iput-boolean p8, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->shouldDisplayNetworkSelectOptions:Z

    iput-boolean p9, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isTdscdmaSupported:Z

    iput-boolean p10, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->activeNetworkIsCellular:Z

    iput-boolean p11, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->showToggleForPhysicalSim:Z

    iput-boolean p12, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isDataRoamingEnabled:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    iget-object v1, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->subId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryEnabled:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryEnabled:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryVisible:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryVisible:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isMobileDataEnabled:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isMobileDataEnabled:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isCdmaOptions:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isCdmaOptions:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isGsmOptions:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isGsmOptions:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isWorldMode:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isWorldMode:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->shouldDisplayNetworkSelectOptions:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->shouldDisplayNetworkSelectOptions:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isTdscdmaSupported:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isTdscdmaSupported:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->activeNetworkIsCellular:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->activeNetworkIsCellular:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->showToggleForPhysicalSim:Z

    iget-boolean v3, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->showToggleForPhysicalSim:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isDataRoamingEnabled:Z

    iget-boolean p1, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isDataRoamingEnabled:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->subId:Ljava/lang/String;

    const/16 v1, 0x20f

    const/16 v2, 0x1f

    invoke-static {v1, v2, v0}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleNode$TextSubstitutionValue$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryEnabled:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryVisible:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isMobileDataEnabled:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isCdmaOptions:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isGsmOptions:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isWorldMode:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->shouldDisplayNetworkSelectOptions:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isTdscdmaSupported:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->activeNetworkIsCellular:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->showToggleForPhysicalSim:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isDataRoamingEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " {MobileNetworkInfoEntity(subId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->subId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isContactDiscoveryEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isContactDiscoveryVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isContactDiscoveryVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMobileDataEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isMobileDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCdmaOptions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isCdmaOptions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isGsmOptions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isGsmOptions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWorldMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isWorldMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDisplayNetworkSelectOptions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->shouldDisplayNetworkSelectOptions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTdscdmaSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isTdscdmaSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", activeNetworkIsCellular = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->activeNetworkIsCellular:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showToggleForPhysicalSim = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->showToggleForPhysicalSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDataRoamingEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isDataRoamingEnabled:Z

    const-string v1, ")}"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
