.class public final Lcom/samsung/android/settings/security/SecIccLockManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mContext:Landroid/content/Context;

.field public mErrorMessage:Ljava/lang/String;

.field public mIccLockMode:I

.field public mIccToState:Z

.field public mMenuController:Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;

.field public mNewPin:Ljava/lang/String;

.field public mOldPin:Ljava/lang/String;

.field public mPin:Ljava/lang/String;

.field public mSemTelephony:Lcom/android/internal/telephony/ISemTelephony;

.field public mSlotIndex:I

.field public mSubscriptionId:I

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/security/SecIccLockSettings;

    return-void
.end method


# virtual methods
.method public final iccMenuEnabled()Z
    .locals 10

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    const/4 v1, 0x0

    const-string v2, "SecIccLockSettings.SecIccLockManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Airplane Mode"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const-string p0, "INVALID_SUB_ID"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    const-string v7, "isSimLockedByAdmin"

    invoke-static {v5, v6, v7, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isLockedByAdmin : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v4, :cond_2

    const-string p0, "Utils.EDM_TRUE"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UNKNOWN"

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    :goto_0
    move-object v5, v6

    goto :goto_1

    :cond_6
    if-ne v0, v3, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    add-int/lit8 v7, v0, 0x1

    if-ge v5, v7, :cond_8

    goto :goto_0

    :cond_8
    aget-object v5, v3, v0

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_0

    :cond_9
    aget-object v5, v3, v0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    if-nez v3, :cond_a

    const-string/jumbo v3, "phone1_on"

    goto :goto_2

    :cond_a
    const-string/jumbo v3, "phone2_on"

    :goto_2
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_b

    move v0, v4

    goto :goto_3

    :cond_b
    move v0, v1

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ril.ICC_TYPE"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v7, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    const-string v8, "0"

    invoke-static {v7, v3, v8}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "slot ID :"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "phone mode :"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "sim type :"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "state prop :"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "PUK_REQUIRED"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    const-string p0, "PIN_REQUIRED"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    const-string p0, "PERM_DISABLED"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    const-string p0, "ABSENT"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    const-string p0, "NOT_READY"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    return v4

    :cond_d
    :goto_4
    return v1
.end method

.method public final isCTCSlot1()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    if-nez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEuicc()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "isEuicc() :"

    const-string v3, "SecIccLockSettings.SecIccLockManager"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccCardInfo;

    invoke-virtual {v1}, Landroid/telephony/UiccCardInfo;->getPorts()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v5}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    const-string v1, " : true"

    invoke-static {v0, p0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    const-string v1, " : false"

    invoke-static {v0, p0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final resetIccLockData()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccToState:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mErrorMessage:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    iput-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mOldPin:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mNewPin:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mPin:Ljava/lang/String;

    const-string p0, "SecIccLockSettings.SecIccLockManager"

    const-string/jumbo v0, "resetIccLockData()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setIccLockMode(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ICC MODE : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mIccLockMode:I

    const-string v0, "SecIccLockSettings.SecIccLockManager"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final setSimInformation(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    iget-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "set SIM Info : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSlotIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sub Id : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mSubscriptionId:I

    const-string v0, "SecIccLockSettings.SecIccLockManager"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final updateMenu()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockManager;->mMenuController:Lcom/samsung/android/settings/security/SecIccLockManager$MenuControllerInterface;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    :cond_0
    return-void
.end method
