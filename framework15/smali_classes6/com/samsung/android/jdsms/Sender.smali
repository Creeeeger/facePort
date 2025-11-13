.class public final Lcom/samsung/android/jdsms/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field private static final blacklist ACTION_USE_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final blacklist COMMERCIALIZED_DEVICE_KEY:Ljava/lang/String; = "C"

.field private static final blacklist DETAIL_KEY:Ljava/lang/String; = "det"

.field private static final blacklist DIAGMONDAGENT_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final blacklist DIMENSION_KEY:Ljava/lang/String; = "dimension"

.field private static final blacklist DSMS_DENY:I = -0x1

.field private static final blacklist DSMS_NOT_SUPPORTED:I = -0x13

.field private static final blacklist DSMS_PACKAGE:Ljava/lang/String; = "com.samsung.android.dsms"

.field private static final blacklist DSMS_SUCCESS:I = 0x0

.field private static final blacklist EV:Ljava/lang/String; = "ev"

.field private static final blacklist FEATURE_KEY:Ljava/lang/String; = "feature"

.field private static final blacklist PACKAGE_NAME_KEY:Ljava/lang/String; = "pkg_name"

.field private static final blacklist SERVICE_SOURCE:Ljava/lang/String; = "S"

.field private static final blacklist SOURCE_KEY:Ljava/lang/String; = "S"

.field private static final blacklist SUBTAG:Ljava/lang/String; = "Sender"

.field private static final blacklist TRACKING_ID:Ljava/lang/String; = "4D6-399-555452"

.field private static final blacklist TRACKING_ID_KEY:Ljava/lang/String; = "tracking_id"

.field private static final blacklist TYPE_KEY:Ljava/lang/String; = "type"

.field private static final blacklist VALUE_KEY:Ljava/lang/String; = "value"


# instance fields
.field private final blacklist DSMS_DISABLED:Z

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msendMessage(Lcom/samsung/android/jdsms/Sender;Lcom/samsung/android/jdsms/DsmsMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/jdsms/Sender;->sendMessage(Lcom/samsung/android/jdsms/DsmsMessage;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created. context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sender"

    invoke-static {v1, v0}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context.packageName=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/jdsms/Sender;->mContext:Landroid/content/Context;

    nop

    const-string v0, "ro.factory.factory_binary"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "factory"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DSMS disabled"

    invoke-static {v1, v0}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/Sender;->DSMS_DISABLED:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/Sender;->DSMS_DISABLED:Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DSMS-FRAMEWORK Null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist sendMessage(Lcom/samsung/android/jdsms/DsmsMessage;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tracking_id"

    const-string v2, "4D6-399-555452"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->getFeatureCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pkg_name"

    const-string v2, "com.samsung.android.dsms"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "ev"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->getValue()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->getDetail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "det"

    invoke-virtual {p1}, Lcom/samsung/android/jdsms/DsmsMessage;->getDetail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "S"

    invoke-virtual {v1, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/jdsms/DsmsInfoCache;->getInstance()Lcom/samsung/android/jdsms/DsmsInfoCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/jdsms/DsmsInfoCache;->isCommercializedDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    goto :goto_0

    :cond_1
    const-string v2, "0"

    :goto_0
    const-string v3, "C"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dimension"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.sec.android.diagmonagent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/jdsms/Sender;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v3, "Sender"

    const-string v4, "Message sent"

    invoke-static {v3, v4}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist sendToDsms(Lcom/samsung/android/jdsms/DsmsMessage;)I
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/jdsms/Sender;->DSMS_DISABLED:Z

    const-string v1, "Sender"

    if-eqz v0, :cond_0

    const-string v0, "DSMS not supported"

    invoke-static {v1, v0}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x13

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/jdsms/PolicyEnforcer;->isAValidCaller()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Unauthorized caller"

    invoke-static {v1, v0}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->getInstance()Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/jdsms/Sender$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/jdsms/Sender$1;-><init>(Lcom/samsung/android/jdsms/Sender;Lcom/samsung/android/jdsms/DsmsMessage;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist send(Ljava/lang/String;)I
    .locals 1

    new-instance v0, Lcom/samsung/android/jdsms/DsmsMessage;

    invoke-direct {v0, p1}, Lcom/samsung/android/jdsms/DsmsMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/jdsms/Sender;->sendToDsms(Lcom/samsung/android/jdsms/DsmsMessage;)I

    move-result v0

    return v0
.end method

.method public blacklist send(Ljava/lang/String;J)I
    .locals 2

    new-instance v0, Lcom/samsung/android/jdsms/DsmsMessage;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/jdsms/DsmsMessage;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/jdsms/Sender;->sendToDsms(Lcom/samsung/android/jdsms/DsmsMessage;)I

    move-result v0

    return v0
.end method

.method public blacklist send(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    new-instance v0, Lcom/samsung/android/jdsms/DsmsMessage;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/jdsms/DsmsMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/jdsms/Sender;->sendToDsms(Lcom/samsung/android/jdsms/DsmsMessage;)I

    move-result v0

    return v0
.end method

.method public blacklist send(Ljava/lang/String;Ljava/lang/String;J)I
    .locals 2

    new-instance v0, Lcom/samsung/android/jdsms/DsmsMessage;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/jdsms/DsmsMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/jdsms/Sender;->sendToDsms(Lcom/samsung/android/jdsms/DsmsMessage;)I

    move-result v0

    return v0
.end method
