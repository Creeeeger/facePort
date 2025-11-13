.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    return-void
.end method


# virtual methods
.method public final getMobileSignalIconGroup(IIZ)[I
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_SPRINT:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->MOBILE_SIGNAL_STRENGTH_ICONS_SPR:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->MOBILE_SIGNAL_STRENGTH_ICONS_CHN_DISABLED:[I

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->MOBILE_SIGNAL_STRENGTH_ICONS_CHN:[I

    goto :goto_0

    :cond_2
    const/4 p0, 0x5

    if-ne p2, p0, :cond_3

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->MOBILE_SIGNAL_STRENGTH_5LEVEL_ICONS:[I

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->MOBILE_SIGNAL_STRENGTH_ICONS:[I

    :goto_0
    return-object p0
.end method

.method public final getNoServiceIcon(I)I
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_TMOBILE:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/MobileSignalIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->NO_SERVICE_ICON_TMOBILE:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->NO_SERVICE_ICON_VZW:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_SPRINT:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->NO_SERVICE_ICON_SPR:I

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->NO_SERVICE_ICON:I

    :goto_0
    return p0
.end method
