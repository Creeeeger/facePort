.class public final Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final getTypeIcon(ILcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;ZZZZ)Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_USA_VZW:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {v3, v0, p1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "DisabledDataIconResource"

    if-eqz v0, :cond_19

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isMobileDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isDataRoamingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isMobileDataEnabled()Z

    move-result p3

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileDisabledDataIconResource;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isDataRoamingEnabled()Z

    move-result p0

    const-string p4, "Use slash icon since data="

    const-string p5, " roaming="

    invoke-static {p4, p5, v2, p3, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_2
    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->UNKNOWN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p2, p2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto/16 :goto_2

    :cond_3
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->E_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p2, p2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_4

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_E_VZW:I

    goto/16 :goto_2

    :cond_4
    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_E_VZW:I

    goto/16 :goto_2

    :cond_5
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p2, p2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_6

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_3G_VZW:I

    goto/16 :goto_2

    :cond_6
    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_3G_VZW:I

    goto/16 :goto_2

    :cond_7
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->H_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p2, p2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_8

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_H_VZW:I

    goto/16 :goto_2

    :cond_8
    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_H_VZW:I

    goto/16 :goto_2

    :cond_9
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p2, p2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_a

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_H_PLUS_VZW:I

    goto/16 :goto_2

    :cond_a
    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_H_PLUS_VZW:I

    goto/16 :goto_2

    :cond_b
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p2, p2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_c

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_1X_VZW:I

    goto/16 :goto_2

    :cond_c
    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_1X_VZW:I

    goto/16 :goto_2

    :cond_d
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p2, p2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_e

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_4G_VZW:I

    goto/16 :goto_2

    :cond_e
    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_4G_VZW:I

    goto/16 :goto_2

    :cond_f
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p2, p2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_10

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_5G_VZW:I

    goto :goto_2

    :cond_10
    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_5G_VZW:I

    goto :goto_2

    :cond_11
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p2, p2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_12

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_5G_CONNECTED:I

    goto :goto_2

    :cond_12
    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_5G_CONNECTED:I

    goto :goto_2

    :cond_13
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_VZW_UWB:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p2, p2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_14

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_5G_VZW_UWB:I

    goto :goto_2

    :cond_14
    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_5G_VZW_UWB:I

    goto :goto_2

    :cond_15
    sget-object p2, Lcom/android/settingslib/mobile/TelephonyIcons;->G_VZW:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p2, p2, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_16

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_G_VZW:I

    goto :goto_2

    :cond_16
    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_G_VZW:I

    goto :goto_2

    :cond_17
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_18

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_SLASH_G_VZW:I

    goto :goto_2

    :cond_18
    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_G_VZW:I

    :goto_2
    new-instance p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    return-object p0

    :cond_19
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_LATIN_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {v3, p0, p1, v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_G:I

    goto/16 :goto_3

    :cond_1a
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->E:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_E:I

    goto/16 :goto_3

    :cond_1b
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_3G:I

    goto/16 :goto_3

    :cond_1c
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->H:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_H:I

    goto :goto_3

    :cond_1d
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_H_PLUS:I

    goto :goto_3

    :cond_1e
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_4G:I

    goto :goto_3

    :cond_1f
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_4G_PLUS:I

    goto :goto_3

    :cond_20
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_HALF_G:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_4_HALF_G:I

    goto :goto_3

    :cond_21
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_AVAILABLE:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_5G_AVAILABLE:I

    goto :goto_3

    :cond_22
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CONNECTED:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_5G_CONNECTED:I

    :cond_23
    :goto_3
    new-instance p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    return-object p0

    :cond_24
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_HKTW_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {v3, p0, p1, v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    new-instance p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getIconId()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    return-object p0

    :cond_25
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {v3, p0, p1, v0}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    if-eqz p3, :cond_35

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;->IS_CHINA_DISABLED_ICON:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-interface {v3, p0, p1, p3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    if-nez p4, :cond_31

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->ONE_X_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_1X:I

    goto/16 :goto_4

    :cond_26
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_G:I

    goto/16 :goto_4

    :cond_27
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->E_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_E:I

    goto/16 :goto_4

    :cond_28
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->TWO_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_2G:I

    goto/16 :goto_4

    :cond_29
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_3G:I

    goto/16 :goto_4

    :cond_2a
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->THREE_G_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_3G_PLUS:I

    goto/16 :goto_4

    :cond_2b
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->H_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_H:I

    goto/16 :goto_4

    :cond_2c
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->H_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_H_PLUS:I

    goto :goto_4

    :cond_2d
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_4G:I

    goto :goto_4

    :cond_2e
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->FOUR_G_PLUS_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_4G_PLUS:I

    goto :goto_4

    :cond_2f
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5G_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_5G:I

    goto :goto_4

    :cond_30
    sget-object p1, Lcom/android/settingslib/mobile/TelephonyIcons;->NR_5GA_CHN:Lcom/android/settingslib/SignalIcon$MobileIconGroup;

    iget-object p1, p1, Lcom/android/settingslib/SignalIcon$IconGroup;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->DISABLED_AT_SIGNAL_5GA:I

    goto :goto_4

    :cond_31
    sget-boolean p0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_SIGNAL_LIMITED_WHILE_OTHER_SLOT_CALL:Z

    if-eqz p0, :cond_32

    if-eqz p0, :cond_33

    if-nez p5, :cond_33

    :cond_32
    new-instance p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getIconId()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    return-object p0

    :cond_33
    :goto_4
    sget-boolean p0, Lcom/android/systemui/BasicRune;->STATUS_NETWORK_SIGNAL_LIMITED_WHILE_OTHER_SLOT_CALL:Z

    if-eqz p0, :cond_34

    if-eqz p5, :cond_34

    const-string p0, "Display limited icon? "

    invoke-static {p0, v2, p6}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p6, :cond_34

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/util/SamsungMobileIcons;->SIGNAL_LIMITED_WHILE_OTHER_SLOT_CALL:I

    :cond_34
    new-instance p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    sget-object p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->ROAMING_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;I)V

    return-object p0

    :cond_35
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModelKt;->EMPTY_DISABLED_DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    return-object p0
.end method
