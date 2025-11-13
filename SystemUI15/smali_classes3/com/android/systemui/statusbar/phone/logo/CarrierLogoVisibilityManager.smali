.class public final Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public defaultSubscriptionSlotId:I

.field public featureEnabled:Z

.field public final featureName:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

.field public matchedSim:Z

.field public networkCondition:Z

.field public quickStarEnabled:Z

.field public final serviceStateHash:Ljava/util/HashMap;

.field public settingEnabled:Z

.field public final simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

.field public simTypes:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;Landroid/telephony/TelephonyManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->featureName:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p3

    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->defaultSubscriptionSlotId:I

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->serviceStateHash:Ljava/util/HashMap;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->settingEnabled:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->quickStarEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->simTypes:Ljava/util/ArrayList;

    invoke-virtual {p4}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p4

    if-nez p4, :cond_0

    move p4, p3

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->networkCondition:Z

    iget p4, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->defaultSubscriptionSlotId:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, p4, v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->featureEnabled:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->matchedSim:Z

    return-void
.end method


# virtual methods
.method public final getVisible()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->featureEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->networkCondition:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->settingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->matchedSim:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->quickStarEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->getVisible()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "visibility="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->networkCondition:Z

    const-string v3, "networkCondition="

    invoke-static {v3, v2, v1, v0}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->settingEnabled:Z

    const-string/jumbo v3, "settingEnabled="

    invoke-static {v3, v2, v1, v0}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->matchedSim:Z

    const-string v3, "matchedSim="

    const-string v4, " ("

    invoke-static {v3, v2, v4, v0}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->simTypes:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->quickStarEnabled:Z

    const-string v3, ") quickStarEnabled="

    invoke-static {v3, v2, v1, v0}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->defaultSubscriptionSlotId:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "default subscription id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->serviceStateHash:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "service sate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
