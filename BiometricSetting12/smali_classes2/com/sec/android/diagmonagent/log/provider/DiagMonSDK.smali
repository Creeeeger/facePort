.class public Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
.super Ljava/lang/Object;
.source "DiagMonSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK$DiagMonHelper;
    }
.end annotation


# static fields
.field private static MIN_WAITING_TIME:J = 0x0L

.field private static PREF_DIAGMON_CHECK:Ljava/lang/String; = null

.field private static PREF_DIAGMON_NAME:Ljava/lang/String; = null

.field private static PREF_DIAGMON_TIMESTAMP:Ljava/lang/String; = null

.field private static final SDK_TYPE_VALUE:Ljava/lang/String; = "S"

.field private static elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

.field private static instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

.field private static isEnableDefaultConfig:Z

.field private static isEnableUncaughtExceptionLogging:Z

.field private static mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

.field private static originUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static srObj:Landroid/os/Bundle;

.field private static final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.sec.android.log.diagmonagent/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableUncaughtExceptionLogging:Z

    sput-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    const-string v0, "diagmon_pref"

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->PREF_DIAGMON_NAME:Ljava/lang/String;

    const-string v0, "diagmon_timestamp"

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->PREF_DIAGMON_TIMESTAMP:Ljava/lang/String;

    const-string v0, "diagmon_check"

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->PREF_DIAGMON_CHECK:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->MIN_WAITING_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 0

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
    .locals 0

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    return-object p0
.end method

.method static synthetic access$200()Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;)Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
    .locals 0

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$302(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$400(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->eventReportViaBR(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    return v0
.end method

.method static synthetic access$600(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->eventReportViaCP(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    move-result v0

    return v0
.end method

.method private static checkAuthority(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "request_deviceid"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "serviceId"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://com.sec.android.log.diagmonagent/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v0, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    return v4

    :catch_0
    move-exception v0

    return v1

    :catch_1
    move-exception v0

    return v1

    :cond_0
    return v4

    :catch_2
    move-exception v0

    return v1

    :catch_3
    move-exception v0

    return v1
.end method

.method public static customEventReport(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 5

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Request CustomEventReport"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "CustomEventReport is aborted"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v4, "You first have to create DiagMonConfiguration"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    sget-boolean v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "You can\'t use customEventReport with enableDefaultConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->getLogPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->getLogPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->isValidLogPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v1, p1, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->mIsCalledNetworkMode:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isEnabledDefaultNetwork()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "NetworkMode is applied as DefaultNetwork"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getDefaultNetworkMode()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->setNetworkMode(Z)Lcom/sec/android/diagmonagent/log/provider/EventBuilder;

    :cond_3
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->eventReportViaCP(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    move-result v3

    move v0, v3

    goto :goto_1

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->eventReportViaBR(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    move-result v3

    move v0, v3

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v4, "Not installed DMA"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_0
    const-string v4, "Exceptional case"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v4, "SetConfiguration is aborted"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v0, :cond_4

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    goto :goto_3

    :cond_5
    :goto_2
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "You have to properly set LogPath"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    move-exception v1

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to customEventReport"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static disableDefaultConfiguration()V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->toggleConfigurationStatus(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static disableUncaughtExceptionLogging()V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->toggleConfigurationStatus(Z)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->originUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public static enableUncaughtExceptionLogging(Landroid/content/Context;)V
    .locals 9

    :try_start_0
    const-string v0, ""

    const/4 v1, 0x1

    sget-boolean v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableUncaughtExceptionLogging:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "UncaughtExceptionLogging is already enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "UncaughtExceptionLogging Can\'t be enabled because Configuration is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfiguration()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "UncaughtException Logging and SetConfiguration can\'t be used at the same time"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "D"

    if-eqz v2, :cond_3

    :try_start_1
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getDefaultNetworkMode()Z

    move-result v2

    move v1, v2

    move-object v0, v3

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfiguration()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isEnabledDefaultNetwork()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getDefaultNetworkMode()Z

    move-result v2

    move v1, v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getAgreeAsString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v4, "value for uncaughtException will be default"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move-object v0, v3

    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableUncaughtExceptionLogging:Z

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    sput-object v4, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->originUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v8, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;

    sget-object v5, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-object v2, v8

    move-object v3, p0

    move v6, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/diagmonagent/log/provider/DiagMonLogger;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;ZLjava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to enableUncaughtExceptionLogging"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private static eventReportViaBR(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateLegacyConfig(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Invalid DiagMonConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->isValidLegacyEventBuilder(Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Invalid EventBuilder"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Valid EventBuilder"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {p0, v1, p1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->makeEventobjAsIntent(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Report your logs"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    return v0

    :catch_1
    move-exception v1

    return v0
.end method

.method private static eventReportViaCP(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {p0, v2, p1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->makeEventObjAsBundle(Landroid/content/Context;Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;Lcom/sec/android/diagmonagent/log/provider/EventBuilder;)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    if-nez v1, :cond_0

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "No EventObject"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "No Configuration"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "You have to set DiagMonConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateSrObj(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "Invalid SR object"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    invoke-static {v2, v1, v3}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateErObj(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "Invalid ER object"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "Valid SR, ER object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "Report your logs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->getNetworkMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->uri:Landroid/net/Uri;

    const-string v4, "event_report"

    const-string v5, "eventReport"

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->printResultfromDMA(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/sec/android/diagmonagent/log/provider/EventBuilder;->getZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->removeZipFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    return v0

    :catch_1
    move-exception v1

    return v0
.end method

.method public static getConfiguration()Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    return-object v0

    :catch_1
    move-exception v1

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "result"

    const-string v1, "request_deviceid"

    invoke-static {p0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->checkDMA(Landroid/content/Context;)I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "serviceId"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://com.sec.android.log.diagmonagent/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v1, v1, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t find deviceId from DMA"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->printResultfromDMA(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v3

    :catch_1
    move-exception v0

    return-object v3

    :cond_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "It is not supported because DiagMonAgent is an old version"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static getElp()Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->elp:Lcom/sec/android/diagmonagent/log/provider/DiagMonProvider;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    return-object v0

    :catch_1
    move-exception v1

    return-object v0
.end method

.method private static getPrefDiagmonCheckSR(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->PREF_DIAGMON_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->PREF_DIAGMON_CHECK:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static getPrefDiagmonTimestamp(Landroid/content/Context;)J
    .locals 4

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->PREF_DIAGMON_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->PREF_DIAGMON_TIMESTAMP:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const v1, 0x93b57

    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    return-object v0

    :catch_1
    move-exception v1

    return-object v0
.end method

.method public static getSDKtype()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v0, "S"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    return-object v0

    :catch_1
    move-exception v1

    return-object v0
.end method

.method public static initDB(Landroid/content/Context;)V
    .locals 4

    const-string v0, "init_db"

    :try_start_0
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v0, v0, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->printResultfromDMA(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "You can use this API on ENG"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public static isEnableDefaultConfiguration()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0

    :catch_1
    move-exception v1

    return v0
.end method

.method public static sendSRObj(Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/sec/android/diagmonagent/log/provider/utils/Validator;->validateSrObj(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Invalid SR object"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return v0

    :cond_0
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Valid SR object"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "Request Service Registration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->uri:Landroid/net/Uri;

    const-string v3, "register_service"

    const-string v4, "registration"

    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->printResultfromDMA(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    return v0

    :catch_1
    move-exception v1

    return v0
.end method

.method private static setConfig(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V
    .locals 0

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    return-void
.end method

.method public static setConfiguration(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;
    .locals 10

    :try_start_0
    const-class v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v2, "SetConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "DiagMonConfiguration is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->generateSRobj(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)Landroid/os/Bundle;

    move-result-object v2

    sput-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->setSRObj(Landroid/os/Bundle;)V

    sget-boolean v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v3, "You can\'t use setConfiguration with enableDefaultConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v1

    :cond_1
    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getPrefDiagmonCheckSR(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->getPrefDiagmonTimestamp(Landroid/content/Context;)J

    move-result-wide v5

    sget-wide v7, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->MIN_WAITING_TIME:J

    add-long/2addr v7, v5

    cmp-long v1, v3, v7

    if-lez v1, :cond_4

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v7, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v7}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getServiceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->checkAuthority(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->setPrefDiagmonTimestamp(Landroid/content/Context;J)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v7, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;

    sget-object v8, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-direct {v7, v8}, Lcom/sec/android/diagmonagent/log/provider/ThreadExecutor;-><init>(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V

    invoke-interface {v1, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v8, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-virtual {v8}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->setPrefDiagmonCheckSR(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v7, "Authority check got failed"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v7, "it is not time to request for SR"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to setConfiguration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->instance:Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;

    return-object v0
.end method

.method public static setDefaultConfiguration(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->isCustomConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "setDefaultConfiguration can\'t be used because CustomLogging is using"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "setDefaultConfiguration is already set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-direct {v0, p0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setServiceId(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setAgree(Ljava/lang/String;)Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    move-result-object v0

    sput-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->toggleConfigurationStatus(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    nop

    :goto_2
    return-void
.end method

.method private static setPrefDiagmonCheckSR(Landroid/content/Context;Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->PREF_DIAGMON_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->PREF_DIAGMON_CHECK:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static setPrefDiagmonTimestamp(Landroid/content/Context;J)V
    .locals 3

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->PREF_DIAGMON_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->PREF_DIAGMON_TIMESTAMP:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected static setSRObj(Landroid/os/Bundle;)V
    .locals 0

    sput-object p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->srObj:Landroid/os/Bundle;

    return-void
.end method

.method protected static toggleConfigurationStatus(Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->mConfig:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "can\'t handle toggleConfigurationStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    sput-boolean v1, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    invoke-virtual {v0, v2}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setCustomConfigStatus(Z)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Status is chaged to CustomLogging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableDefaultConfig:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;->setCustomConfigStatus(Z)V

    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v1, "Status is chaged to UncaughtException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public isEnableUncaughtExceptionLogging()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/diagmonagent/log/provider/DiagMonSDK;->isEnableUncaughtExceptionLogging:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0

    :catch_1
    move-exception v1

    return v0
.end method
