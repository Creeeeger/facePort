.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;
.super Ljava/lang/Object;
.source "DisplayAdjustmentManager.java"


# static fields
.field private static final COLOR_INVERSION_RESTORE_DELAY:J = 0x32L

.field private static final DB_DIRECT_ACCESS_COLOR_ADJUSTMENT:Ljava/lang/String; = "direct_color_adjustment"

.field private static final DB_DIRECT_ACCESS_COLOR_LENS:Ljava/lang/String; = "direct_color_lens"

.field private static final DB_DIRECT_ACCESS_NEGATIVE:Ljava/lang/String; = "direct_negative"

.field public static final FEATURE_MDNIE_MODE:I

.field private static final FEATURE_SUPPORT_ADAPTIVE_BLF:Z

.field public static final FEATURE_SUPPORT_COLOR_ADJUSTMENT:Z

.field public static final FEATURE_SUPPORT_COLOR_LENS:Z

.field public static final FEATURE_SUPPORT_COLOR_NEGATIVE:Z

.field private static final MSG_DISABLE_ALL:I = 0x3e9

.field private static final MSG_DISABLE_BLF:I = 0x1

.field private static final MSG_DISABLE_COLOR_INVERSION:I = 0x65

.field private static final MSG_RESTORE_ALL:I = 0x3ea

.field private static final MSG_RESTORE_BLF:I = 0x2

.field private static final MSG_RESTORE_COLOR_INVERSION:I = 0x66

.field private static final TAG:Ljava/lang/String; = "BSS_DisplayAdjustmentManager"

.field private static sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;


# instance fields
.field private ismNeedToRestoreColorNegativeOrGrayScale:Z

.field private mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBgHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mDbAdaptiveBlueLightFilter:I

.field private mDbAdaptiveBlueLightFilterOpacity:I

.field private mDbBlueLightFilter:I

.field private mDbBlueLightFilterOpacity:I

.field private mDbColorAdjustment:I

.field private mDbColorAdjustmentType:I

.field private mDbColorAdjustmentUseParameter:F

.field private mDbColorGrayScale:I

.field private mDbColorLens:I

.field private mDbColorLensFilterOpacity:I

.field private mDbColorLensFilterType:I

.field private mDbColorNegative:I

.field private mDbColourCorrection:I

.field private mDbDirectAccessColorAdjustment:I

.field private mDbDirectAccessColorLens:I

.field private mDbDirectAccessColorNegative:I

.field private mIsBlueLightFilterDisabled:Z

.field private mIsColorInversionDisabled:Z

.field private mIsDisabled:Z

.field private mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mNeedToRestoreColorAdjustment:Z

.field private mNeedToRestoreColorLens:Z

.field private mNeedToRestoreColourCorrection:Z

.field private mNeedToRestoreColourInversion:Z

.field private mNeedToRestoreDirectAccessColorAdjustment:Z

.field private mNeedToRestoreDirectAccessColorLens:Z

.field private mNeedToRestoreDirectAccessColorNegative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->FEATURE_SUPPORT_ADAPTIVE_BLF:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_MODE"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->FEATURE_MDNIE_MODE:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_COLOR_LENS"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->FEATURE_SUPPORT_COLOR_LENS:Z

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    sput-boolean v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->FEATURE_SUPPORT_COLOR_NEGATIVE:Z

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    sput-boolean v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->FEATURE_SUPPORT_COLOR_ADJUSTMENT:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager$1;

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-nez v0, :cond_0

    const-class v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->handleDisableBlueLightFilter()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->handleRestoreBlueLightFilter()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->handleDisableColorInversion()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->handleRestoreColorInversion()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->handleDisableAll()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->handleRestoreAll()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;
    .locals 2

    const-class v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handleDisableAll()V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsDisabled:Z

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->handleDisableBlueLightFilter()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->handleDisableColorInversion()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->updateA11ySettingDB()V

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorAdjustment:I

    const-string v2, "handleDisableAll: "

    const-string v3, "BSS_DisplayAdjustmentManager"

    const/4 v4, 0x0

    if-ne v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColorAdjustment:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorAdjustmentUseParameter:F

    invoke-virtual {v1, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorLens:I

    if-ne v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColorLens:Z

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->semDisableMdnieColorFilter()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorNegative:I

    if-eq v1, v0, :cond_3

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorGrayScale:I

    if-ne v1, v0, :cond_4

    :cond_3
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->ismNeedToRestoreColorNegativeOrGrayScale:Z

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0, v4}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColourCorrection:I

    if-ne v1, v0, :cond_5

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColourCorrection:Z

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v5, "accessibility_display_daltonizer_enabled"

    invoke-static {v1, v5, v0, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    :cond_5
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbDirectAccessColorNegative:I

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v5, "direct_negative"

    invoke-static {v1, v5, v4, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreDirectAccessColorNegative:Z

    :cond_6
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbDirectAccessColorAdjustment:I

    if-ne v1, v0, :cond_7

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v5, "direct_color_adjustment"

    invoke-static {v1, v5, v4, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreDirectAccessColorAdjustment:Z

    :cond_7
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbDirectAccessColorLens:I

    if-ne v1, v0, :cond_8

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v5, "direct_color_lens"

    invoke-static {v1, v5, v4, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreDirectAccessColorLens:Z

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorAdjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorLens:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorNegative:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorGrayScale:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColourCorrection:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbDirectAccessColorNegative:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbDirectAccessColorAdjustment:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbDirectAccessColorLens:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleDisableBlueLightFilter()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsBlueLightFilterDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsBlueLightFilterDisabled:Z

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->updateBlueLightFilterValue()V

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilter:I

    const-string v2, "BSS_DisplayAdjustmentManager"

    if-ne v1, v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeBlock(Z)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->disableNightMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableBlueLightFilter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeBlock(Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BLF: disable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilterOpacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleDisableColorInversion()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsColorInversionDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsColorInversionDisabled:Z

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v1

    if-ne v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColourInversion:Z

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v0, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableColorInversion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BSS_DisplayAdjustmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleRestoreAll()V
    .locals 8

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsDisabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->handleRestoreBlueLightFilter()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->handleRestoreColorInversion()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->updateA11ySettingDB()V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColorAdjustment:Z

    const-string v1, "handleRestoreAll: "

    const-string v2, "BSS_DisplayAdjustmentManager"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColorAdjustment:Z

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorAdjustment:I

    if-ne v0, v4, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorAdjustmentUseParameter:F

    invoke-virtual {v0, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColorLens:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColorLens:Z

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorLens:I

    if-ne v0, v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRestoreAll: COLOR LENS, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorLensFilterType:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorLensFilterOpacity:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorLensFilterType:I

    iget v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorLensFilterOpacity:I

    invoke-virtual {v0, v5, v6}, Landroid/view/accessibility/AccessibilityManager;->semEnableMdnieColorFilter(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->ismNeedToRestoreColorNegativeOrGrayScale:Z

    if-eqz v0, :cond_7

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->ismNeedToRestoreColorNegativeOrGrayScale:Z

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorGrayScale:I

    if-ne v0, v4, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorNegative:I

    if-ne v5, v4, :cond_4

    move v5, v4

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v4}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    goto :goto_6

    :cond_5
    if-eqz v0, :cond_6

    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v4}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    goto :goto_6

    :cond_6
    if-eqz v5, :cond_7

    :try_start_4
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6, v4, v4}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColourInversion:Z

    if-eqz v0, :cond_8

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColourInversion:Z

    const-string v0, "handleRestoreAll: COLOR Inversion"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v0, v1, v4, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColourCorrection:Z

    if-eqz v0, :cond_9

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColourCorrection:Z

    const-string v0, "handleRestoreAll: COLOR Correction"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v1, v4, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreDirectAccessColorNegative:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v1, "direct_negative"

    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreDirectAccessColorNegative:Z

    :cond_a
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreDirectAccessColorAdjustment:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v1, "direct_color_adjustment"

    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreDirectAccessColorAdjustment:Z

    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreDirectAccessColorLens:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v1, "direct_color_lens"

    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreDirectAccessColorLens:Z

    :cond_c
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsDisabled:Z

    return-void
.end method

.method private handleRestoreBlueLightFilter()V
    .locals 6

    const-string v0, ", "

    const-string v1, "restoreBlueLightFilter: "

    const-string v2, "BSS_DisplayAdjustmentManager"

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsBlueLightFilterDisabled:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->updateBlueLightFilterValue()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->updateScheduledBlfValue()V

    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->FEATURE_SUPPORT_ADAPTIVE_BLF:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->updateAdaptiveBlfValue()V

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeBlock(Z)Z

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilter:I

    if-ne v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilterOpacity:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbAdaptiveBlueLightFilter:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbAdaptiveBlueLightFilterOpacity:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbAdaptiveBlueLightFilter:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbAdaptiveBlueLightFilterOpacity:I

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilterOpacity:I

    :goto_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/display/SemMdnieManager;->enableNightMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsBlueLightFilterDisabled:Z

    return-void
.end method

.method private handleRestoreColorInversion()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsColorInversionDisabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColourInversion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColourInversion:Z

    const-string v0, "BSS_DisplayAdjustmentManager"

    const-string v2, "restoreColorInversion"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mIsColorInversionDisabled:Z

    return-void
.end method

.method private updateA11ySettingDB()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->FEATURE_SUPPORT_COLOR_ADJUSTMENT:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    const-string v4, "color_blind"

    invoke-static {v0, v4, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorAdjustment:I

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorAdjustmentType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v3, "color_adjustment_type"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorAdjustmentType:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "color_blind_user_parameter"

    invoke-static {v0, v4, v1, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getFloatDb(Landroid/content/Context;Ljava/lang/String;ZF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorAdjustmentUseParameter:F

    :cond_0
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorAdjustment:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorAdjustmentType:I

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorGrayScale:I

    :cond_2
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->FEATURE_SUPPORT_COLOR_LENS:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v3, "color_lens_switch"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorLens:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v3, "color_lens_type"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorLensFilterType:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v3, "color_lens_opacity"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorLensFilterOpacity:I

    :cond_3
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->FEATURE_SUPPORT_COLOR_NEGATIVE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v3, "high_contrast"

    invoke-static {v0, v3, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColorNegative:I

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v3, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbColourCorrection:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v1, "direct_negative"

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbDirectAccessColorNegative:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v1, "direct_color_adjustment"

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbDirectAccessColorAdjustment:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v1, "direct_color_lens"

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbDirectAccessColorLens:I

    return-void
.end method

.method private updateAdaptiveBlfValue()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v1, "blue_light_filter_adaptive_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbAdaptiveBlueLightFilter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->getNightModeStep()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbAdaptiveBlueLightFilterOpacity:I

    :cond_0
    return-void
.end method

.method private updateBlueLightFilterValue()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v1, "blue_light_filter_opacity"

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilterOpacity:I

    :cond_0
    return-void
.end method

.method private updateScheduledBlfValue()V
    .locals 13

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilter:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v2, "blue_light_filter_scheduled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v4, "blue_light_filter_type"

    invoke-static {v2, v4, v3, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v2

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1a4

    const-wide/16 v10, 0x474

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v12, "blue_light_filter_on_time"

    invoke-static {v1, v12, v3, v10, v11}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLongDb(Landroid/content/Context;Ljava/lang/String;ZJ)J

    move-result-wide v4

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v10, "blue_light_filter_off_time"

    invoke-static {v1, v10, v3, v8, v9}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLongDb(Landroid/content/Context;Ljava/lang/String;ZJ)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v12, "blue_light_filter_automatic_on_time"

    invoke-static {v1, v12, v3, v10, v11}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLongDb(Landroid/content/Context;Ljava/lang/String;ZJ)J

    move-result-wide v4

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mContext:Landroid/content/Context;

    const-string v10, "blue_light_filter_automatic_off_time"

    invoke-static {v1, v10, v3, v8, v9}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLongDb(Landroid/content/Context;Ljava/lang/String;ZJ)J

    move-result-wide v6

    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v10, 0xb

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v10, v11

    cmp-long v11, v4, v6

    if-gez v11, :cond_5

    int-to-long v11, v10

    cmp-long v11, v11, v4

    if-ltz v11, :cond_4

    int-to-long v11, v10

    cmp-long v11, v11, v6

    if-ltz v11, :cond_6

    :cond_4
    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilter:I

    goto :goto_2

    :cond_5
    int-to-long v11, v10

    cmp-long v11, v11, v6

    if-ltz v11, :cond_6

    int-to-long v11, v10

    cmp-long v11, v11, v4

    if-gez v11, :cond_6

    iput v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilter:I

    :cond_6
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheduled BLF: "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mDbBlueLightFilter:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "BSS_DisplayAdjustmentManager"

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method


# virtual methods
.method public disableAllFunctions()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public disableBlueLightFilter()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public disableColorInversion()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public restoreAllFunctions(J)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mNeedToRestoreColourInversion:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x32

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/16 p1, 0x32

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public restoreBlueLightFilter()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public restoreColorInversion(J)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->mBgHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
