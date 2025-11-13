.class public final Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final ID_CDMA_SETTINGS:I = 0x7f0a02e2

.field static final ID_GSM_SETTINGS:I = 0x7f0a06f8

.field static final ID_IMEI_SV_VALUE:I = 0x7f0a07dc

.field static final ID_IMEI_VALUE:I = 0x7f0a07de

.field static final ID_MEID_NUMBER_VALUE:I = 0x7f0a0952

.field static final ID_MIN_NUMBER_VALUE:I = 0x7f0a0979

.field static final ID_PRL_VERSION_VALUE:I = 0x7f0a0bc2


# instance fields
.field public final mSlotId:I

.field public final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->isValidSlotIndex(ILandroid/telephony/TelephonyManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :goto_0
    return-void
.end method

.method private isValidSlotIndex(ILandroid/telephony/TelephonyManager;)Z
    .locals 0

    if-ltz p1, :cond_0

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCdmaLteEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result p0

    return p0
.end method
