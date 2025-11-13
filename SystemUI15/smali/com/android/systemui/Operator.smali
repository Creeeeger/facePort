.class public final Lcom/android/systemui/Operator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final QUICK_IS_ACG_BRANDING:Z

.field public static final QUICK_IS_AIO_BRANDING:Z

.field public static final QUICK_IS_APP_BRANDING:Z

.field public static final QUICK_IS_ATT_BRANDING:Z

.field public static final QUICK_IS_BRI_BRANDING:Z

.field public static final QUICK_IS_BST_BRANDING:Z

.field public static final QUICK_IS_CCT_BRANDING:Z

.field public static final QUICK_IS_CHA_BRANDING:Z

.field public static final QUICK_IS_CHC_BRANDING:Z

.field public static final QUICK_IS_CHM_BRANDING:Z

.field public static final QUICK_IS_CHU_BRANDING:Z

.field public static final QUICK_IS_CSP_BRANDING:Z

.field public static final QUICK_IS_CTC_BRANDING:Z

.field public static final QUICK_IS_DCM_BRANDING:Z

.field public static final QUICK_IS_FKR_BRANDING:Z

.field public static final QUICK_IS_KDI_BRANDING:Z

.field public static final QUICK_IS_KOO_BRANDING:Z

.field public static final QUICK_IS_KTT_BRANDING:Z

.field public static final QUICK_IS_LDU_BRANDING:Z

.field public static final QUICK_IS_LGT_BRANDING:Z

.field public static final QUICK_IS_LRA_BRANDING:Z

.field public static final QUICK_IS_MTR_BRANDING:Z

.field public static final QUICK_IS_OJT_BRANDING:Z

.field public static final QUICK_IS_RKT_BRANDING:Z

.field public static final QUICK_IS_SBM_BRANDING:Z

.field public static final QUICK_IS_SKT_BRANDING:Z

.field public static final QUICK_IS_SPR_BRANDING:Z

.field public static final QUICK_IS_TFN_BRANDING:Z

.field public static final QUICK_IS_TFV_BRANDING:Z

.field public static final QUICK_IS_TGY_BRANDING:Z

.field public static final QUICK_IS_TMB_BRANDING:Z

.field public static final QUICK_IS_USC_BRANDING:Z

.field public static final QUICK_IS_VMU_BRANDING:Z

.field public static final QUICK_IS_VPP_BRANDING:Z

.field public static final QUICK_IS_VZW_BRANDING:Z

.field public static final QUICK_IS_XAA_BRANDING:Z

.field public static final QUICK_IS_XAR_BRANDING:Z

.field public static final QUICK_IS_XAS_BRANDING:Z

.field public static final QUICK_IS_XJP_BRANDING:Z

.field public static final QUICK_IS_XNX_BRANDING:Z

.field public static final smartManagerPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SystemUI_ConfigQuickSettingPopup"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    const-string v1, "AIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_AIO_BRANDING:Z

    const-string v1, "APP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_APP_BRANDING:Z

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_TMB_BRANDING:Z

    const-string v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_MTR_BRANDING:Z

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_SPR_BRANDING:Z

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_VMU_BRANDING:Z

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_BST_BRANDING:Z

    const-string v1, "XAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XAS_BRANDING:Z

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_USC_BRANDING:Z

    const-string v1, "LRA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_LRA_BRANDING:Z

    const-string v1, "TFN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_TFN_BRANDING:Z

    const-string v1, "CCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CCT_BRANDING:Z

    const-string v1, "CHA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHA_BRANDING:Z

    const-string v1, "ACG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_ACG_BRANDING:Z

    const-string v1, "CSP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CSP_BRANDING:Z

    const-string v1, "XAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XAR_BRANDING:Z

    const-string v1, "XAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XAA_BRANDING:Z

    const-string v1, "XNX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XNX_BRANDING:Z

    const-string v1, "TFV"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_TFV_BRANDING:Z

    const-string v1, "FKR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_FKR_BRANDING:Z

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_VPP_BRANDING:Z

    const-string v1, "OJT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_OJT_BRANDING:Z

    const-string v1, "PAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_LDU_BRANDING:Z

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHM_BRANDING:Z

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CTC_BRANDING:Z

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHC_BRANDING:Z

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_CHU_BRANDING:Z

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_BRI_BRANDING:Z

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_TGY_BRANDING:Z

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_SKT_BRANDING:Z

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_KOO_BRANDING:Z

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_DCM_BRANDING:Z

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_KDI_BRANDING:Z

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_SBM_BRANDING:Z

    const-string v1, "XJP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/Operator;->QUICK_IS_XJP_BRANDING:Z

    const-string v1, "RKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_RKT_BRANDING:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v3, "com.samsung.android.sm"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/Operator;->smartManagerPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigPco"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessageIdForMobileDataOnOffPopup(Z)I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    if-eqz p0, :cond_3

    if-eqz v0, :cond_0

    const p0, 0x7f130c27

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMmsSupport()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f130c26

    goto :goto_0

    :cond_1
    const p0, 0x7f130c25

    goto :goto_0

    :cond_2
    const p0, 0x7f130c24

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const p0, 0x7f130c2f

    goto :goto_0

    :cond_4
    const p0, 0x7f130c2d

    :goto_0
    return p0
.end method

.method public static isChinaQsTileBranding()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHM_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CTC_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHC_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHU_BRANDING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isKoreaQsTileBranding()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_SKT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_KTT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LGT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_KOO_BRANDING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static shouldSupportMobileDataNotDisableVolteCall()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VPP_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CCT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHA_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TFV_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_FKR_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TFN_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_AIO_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_APP_BRANDING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static shouldSupportMobileDataOffDontShowPopup()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VZW_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_ATT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_AIO_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_APP_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TMB_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_MTR_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_SPR_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_VMU_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_BST_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XAS_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_USC_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_LRA_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_TFN_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CCT_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CHA_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_ACG_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_CSP_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XAR_BRANDING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/Operator;->QUICK_IS_XAA_BRANDING:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
