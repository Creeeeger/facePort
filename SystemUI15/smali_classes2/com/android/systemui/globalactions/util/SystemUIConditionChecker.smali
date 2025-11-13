.class public final Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/util/ConditionChecker;


# instance fields
.field public final mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    iput-object p2, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p3, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public final isEnabled(Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-class v2, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    :goto_0
    xor-int/2addr p1, v3

    goto :goto_2

    :cond_0
    :goto_1
    move p1, v4

    :goto_2
    move v3, v4

    goto/16 :goto_4

    :cond_1
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v5, 0x10

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    if-ne v1, v5, :cond_0

    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_OPEN_COVER:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result p1

    if-eq p1, v5, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_COVER"

    invoke-virtual {p1, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, "mini_open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CELLULAR_DATA_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-class v2, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    if-eqz v1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v3, v4

    :cond_9
    :goto_3
    move p1, v3

    goto/16 :goto_2

    :cond_a
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SETTINGS_CHANGES_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result p1

    goto/16 :goto_2

    :cond_b
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_POWER_OFF_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result p1

    goto/16 :goto_2

    :cond_c
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_SAFE_MODE_ALLOWED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result p1

    goto/16 :goto_2

    :cond_d
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object p1, p1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result p1

    goto/16 :goto_2

    :cond_e
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-class v2, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    if-eqz v1, :cond_f

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItemsState()Z

    move-result p1

    goto/16 :goto_2

    :cond_f
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {p1}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerMenuLockedState()Z

    move-result p1

    goto/16 :goto_2

    :cond_10
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    iget-object p1, p1, Lcom/android/systemui/globalactions/util/KioskModeWrapper;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {p1}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result p1

    goto/16 :goto_2

    :cond_11
    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_FUNCTION_KEY_SETTING_HIDE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object p1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;

    iget-object p1, p1, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;->mSemEnterpriseDeviceManager:Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    const-string v1, "com.android.settings"

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "function_key_setting"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "hide"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "grayout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto/16 :goto_3

    :cond_13
    move v3, v4

    goto/16 :goto_3

    :cond_14
    iget-object v1, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mDefaultSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-interface {v1, p1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p1

    :goto_4
    if-nez v3, :cond_15

    iget-object p0, p0, Lcom/android/systemui/globalactions/util/SystemUIConditionChecker;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIConditionChecker"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return p1
.end method
