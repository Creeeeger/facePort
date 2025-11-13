.class public final Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;
.super Ljava/lang/Object;
.source "DeviceProtectionUtils.java"


# static fields
.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final DEVICE_PROTECTION_DEEPLINK_URI:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$_CmhC199oAb4m0lhW4CdpNXfSfY(Landroid/content/Context;Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->lambda$getLastScanTimeAsync$0(Landroid/content/Context;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mMUC-YVtXClD-Y4Br_U0faLmRWY(Landroidx/core/util/Consumer;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->lambda$getDeviceProtectionSecurityInfoAsync$1(Landroidx/core/util/Consumer;Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "devicecare://dc.app_security/security_dashboard"

    .line 21
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->DEVICE_PROTECTION_DEEPLINK_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.dcapi"

    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public static checkIfDurationElapsed(JI)Z
    .locals 8

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 52
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    int-to-long v4, p2

    const-wide/16 v6, 0x18

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    cmp-long p0, p0, v2

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static getDeviceProtectionSecurityInfo(Landroid/content/Context;)I
    .locals 6

    const-string v0, "DeviceProtectionUtils"

    const/4 v1, 0x3

    .line 63
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "dc_security_threat_found"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "result"

    .line 65
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "key_threat_found"

    .line 66
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 67
    invoke-static {p0, v2}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->saveDeviceProtectionThreatCount(Landroid/content/Context;I)V

    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceProtectionSecurityInfo returned threatCount = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-lez v2, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "error_id"

    .line 75
    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceProtectionSecurityInfo returned errorId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3ee

    if-ne p0, v2, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/16 v2, 0x3e9

    :cond_3
    move p0, v1

    .line 84
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceProtectionSecurityInfo returned statusCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Unknown authority OR threat_found method not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getDeviceProtectionSecurityInfoAsync(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ExecutorService;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda0;-><init>(Landroidx/core/util/Consumer;Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getLastScanTimeAsync(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ExecutorService;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroidx/core/util/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getStatusForDeviceProtectionMenu(IZ)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 2

    .line 93
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 95
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_3

    .line 99
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_1

    .line 97
    :cond_2
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 101
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getStatusForDeviceProtectionMenu returned status = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceProtectionUtils"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getSummaryTextForDP(Landroid/content/Context;ZJI)Ljava/lang/String;
    .locals 3

    .line 126
    invoke-static {p2, p3, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getDate(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->security_dashboard_summary_status_off:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_3

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-eqz p1, :cond_3

    const-string p1, ""

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getSavedDeviceProtectionThreatCount(Landroid/content/Context;)I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p1, :cond_2

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->security_dashboard_summary_status_app_scanned:I

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, p2

    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lcom/android/settings/R$plurals;->security_dashboard_malware_apps_detected:I

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p2

    invoke-virtual {p0, p4, p1, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->security_dashboard_summary_status_scan_for_malware:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDeviceProtectionSupported(Landroid/content/Context;)Z
    .locals 1

    .line 106
    invoke-static {p0}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->getDeviceProtectionSecurityInfo(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getDeviceProtectionSecurityInfoAsync$1(Landroidx/core/util/Consumer;Landroid/content/Context;)V
    .locals 0

    .line 142
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->getDeviceProtectionSecurityInfo(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getLastScanTimeAsync$0(Landroid/content/Context;Landroidx/core/util/Consumer;)V
    .locals 4

    const-string v0, ""

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "dc_security_last_scan_time"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "result"

    .line 113
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key_last_scan_time"

    .line 114
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Unknown authority or Last Scan Method not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DeviceProtectionUtils"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
