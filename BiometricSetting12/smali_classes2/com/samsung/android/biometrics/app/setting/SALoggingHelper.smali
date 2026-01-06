.class public Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;
.super Ljava/lang/Object;
.source "SALoggingHelper.java"


# static fields
.field public static final DETAIL_ID_FINGER_ENROLL_DIRTY:I = 0x5

.field public static final DETAIL_ID_FINGER_ENROLL_LIFT_OFF:I = 0x6

.field public static final DETAIL_ID_FINGER_ENROLL_OK:I = 0x1

.field public static final DETAIL_ID_FINGER_ENROLL_PARTIAL:I = 0x4

.field public static final DETAIL_ID_FINGER_ENROLL_PRESS_HARDER:I = 0x7

.field public static final DETAIL_ID_FINGER_ENROLL_TOO_SHORT:I = 0x3

.field public static final DETAIL_ID_FINGER_ENROLL_UP_AND_DOWN:I = 0x2

.field public static final EVENT_ID_FINGER_REGISTER_ADD_ANOTHER:I = 0x202b

.field public static final EVENT_ID_FINGER_REGISTER_CANCEL:I = 0x202d

.field public static final EVENT_ID_FINGER_REGISTER_COMPLETE:I = 0x2046

.field public static final EVENT_ID_FINGER_REGISTER_DONE:I = 0x202c

.field public static final EVENT_ID_FINGER_REGISTER_RESULT:I = 0x2040

.field private static final IGNORE_VALUE:J = -0x270fL

.field public static final SCREEN_ID_FINGER_REGISTER_ADD_DONE:I = 0x202a

.field public static final SCREEN_ID_FINGER_REGISTER_FLOW:I = 0x203f

.field private static final TAG:Ljava/lang/String; = "BSS_SALoggingHelper"

.field private static final TRACKING_ID:Ljava/lang/String; = "759-399-5199102"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUiVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->isSemAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v2, 0x138e4

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    div-int/lit16 v1, v1, 0x2710

    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    rem-int/lit16 v2, v2, 0x2710

    div-int/lit8 v2, v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static insertEventLogging(II)V
    .locals 5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, -0x270f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertEventLogging(III)V
    .locals 5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x270f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertEventLogging(IIIJ)V
    .locals 3

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p3, p4}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertFlowLogging(I)V
    .locals 4

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x270f

    invoke-static {v0, v1, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    const-wide/16 v1, -0x270f

    const-string v3, "BSS_SALoggingHelper"

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertLog screen:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, " flow logging"

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    if-eqz p2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " detail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v5, p3, v1

    if-eqz v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "det"

    invoke-interface {v0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_6

    :try_start_0
    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v4, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    invoke-virtual {v4, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    if-eqz p2, :cond_4

    invoke-virtual {v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setDimension(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    :cond_4
    cmp-long v1, p3, v1

    if-eqz v1, :cond_5

    invoke-virtual {v4, p3, p4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventValue(J)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    :cond_5
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v1

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    nop

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "Exception occurred while SA logging"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public static final isSemAvailable(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSemAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_SALoggingHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static setConfiguration(Landroid/app/Application;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string v1, "759-399-5199102"

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/SALoggingHelper;->getUiVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    :try_end_0
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BSS_SALoggingHelper"

    const-string v2, "Exception occurred while SA logging setConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
