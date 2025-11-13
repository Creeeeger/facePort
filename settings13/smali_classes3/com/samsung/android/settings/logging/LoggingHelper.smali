.class public Lcom/samsung/android/settings/logging/LoggingHelper;
.super Ljava/lang/Object;
.source "LoggingHelper.java"


# static fields
.field private static sSaInstance:Lcom/samsung/android/settings/logging/SALogging;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static getSEPVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 55
    sget p0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    div-int/lit16 v0, p0, 0x2710

    .line 56
    rem-int/lit16 p0, p0, 0x2710

    div-int/lit8 p0, p0, 0x64

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2

    const-string v0, "Settings_SA"

    const-string v1, "Settings LoggingHelper init"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string v1, "759-399-5199102"

    .line 44
    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->getSEPVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 42
    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 47
    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/logging/SALogging;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/logging/LoggingHelper;->sSaInstance:Lcom/samsung/android/settings/logging/SALogging;

    .line 48
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/logging/SALogging;->gettingData(Landroid/content/Context;)V

    return-void
.end method

.method public static insertEventLogging(II)V
    .locals 0

    .line 63
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(IIJ)V
    .locals 0

    .line 71
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertEventLogging(IILjava/lang/String;)V
    .locals 0

    .line 95
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(IILjava/lang/String;J)V
    .locals 0

    .line 115
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertEventLogging(IIZ)V
    .locals 0

    .line 111
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "1000"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(ILjava/lang/String;)V
    .locals 0

    .line 67
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;I)V
    .locals 0

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;IJ)V
    .locals 0

    .line 99
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;IZ)V
    .locals 0

    .line 107
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "1000"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static insertFlowLogging(I)V
    .locals 0

    .line 127
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public static insertFlowLogging(Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method
