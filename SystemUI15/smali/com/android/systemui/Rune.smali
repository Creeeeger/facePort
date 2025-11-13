.class public Lcom/android/systemui/Rune;
.super Lcom/android/systemui/BaseRune;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SYSUI_APPLOCK:Z

.field public static final SYSUI_BINDER_CALL_MONITOR:Z

.field public static final SYSUI_CHINA_FEATURE:Z

.field public static final SYSUI_MULTI_SIM:Z

.field public static final SYSUI_MULTI_USER:Z

.field public static final SYSUI_TEST_FOR_PLANK:Z

.field public static final SYSUI_UI_THREAD_MONITOR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_SIM:Z

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_MULTI_USER:Z

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_TEST_FOR_PLANK:Z

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v3, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-eq v0, v3, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v0

    sget v3, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_HIGH:I

    if-eq v0, v3, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_UI_THREAD_MONITOR:Z

    sget-boolean v3, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->STRICT_MODE_ENABLED:Z

    if-nez v3, :cond_4

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getRpCount()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :cond_5
    :goto_4
    sput-boolean v1, Lcom/android/systemui/Rune;->SYSUI_BINDER_CALL_MONITOR:Z

    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_APPLOCK:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportRealTimeNetworkSpeed"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Rune;->SYSUI_CHINA_FEATURE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BaseRune;-><init>()V

    return-void
.end method

.method public static runIf(ILjava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static runIf(Ljava/lang/Runnable;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
