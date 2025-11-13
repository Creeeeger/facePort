.class public final Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$defaultDataListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/CarrierConfigTracker$DefaultDataSubscriptionChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$defaultDataListener$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDefaultSubscriptionChanged(I)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$defaultDataListener$1;->this$0:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p1

    iput p1, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->defaultSubscriptionSlotId:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->featureName:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    invoke-interface {v2, v3, p1, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->featureEnabled:Z

    iget v0, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->defaultSubscriptionSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Default data subscription is changed to slot"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarrierLogoVisibilityManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->updateCarrierLogoVisibility()V

    return-void
.end method
