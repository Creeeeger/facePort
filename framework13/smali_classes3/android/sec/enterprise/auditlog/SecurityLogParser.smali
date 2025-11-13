.class public Landroid/sec/enterprise/auditlog/SecurityLogParser;
.super Ljava/lang/Object;
.source "SecurityLogParser.java"


# static fields
.field private static final blacklist AUDIT_LOG_GROUP_INVALID:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist logFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 64
    const-class v0, Landroid/sec/enterprise/auditlog/SecurityLogParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/auditlog/SecurityLogParser;->TAG:Ljava/lang/String;

    .line 68
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 69
    const v1, 0x33455

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_APP_PROCESS_START: process name = %s - start time = %d - uid = %d - pid = %d - SE info tag = %s - SHA256 hash = %s"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 71
    const v1, 0x33456

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_KEYGUARD_DISMISSED"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 72
    const v1, 0x33457

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_KEYGUARD_DISMISS_AUTH_ATTEMPT: result: %b - strong authentication: %b"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 74
    const v1, 0x33458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_KEYGUARD_SECURED"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 75
    const v1, 0x33459

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_OS_STARTUP: Verified Boot state: %s - dm-verity mode: %s"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 76
    const v1, 0x3345a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_OS_SHUTDOWN"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 77
    const v1, 0x3345b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_LOGGING_STARTED"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 78
    const v1, 0x3345c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_LOGGING_STOPPED"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 79
    const v1, 0x3345d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_MEDIA_MOUNT: mount point: %s - volume label: %s"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 80
    const v1, 0x3345e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_MEDIA_UNMOUNT: mount point: %s - volume label: %s"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 81
    const v1, 0x3345f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_LOG_BUFFER_SIZE_CRITICAL"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 82
    const v1, 0x33460

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_PASSWORD_EXPIRATION_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new timeout = %d"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 84
    const v1, 0x33461

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_PASSWORD_COMPLEXITY_SET: admin package name = %s - admin user ID = %d - target user ID = %d - minimum password length = %d - password quality constraint = %d - minimum of letters = %d - minimum of non-letters = %d - minimum of digits = %d - minimum of uppercase letters = %d - minimum of lowercase letters = %d - minimum of symbols = %d"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 90
    const v1, 0x33462

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_PASSWORD_HISTORY_LENGTH_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new password history length = %d"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 93
    const v1, 0x33463

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_MAX_SCREEN_LOCK_TIMEOUT_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new screen lock timeout = %d"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 96
    const v1, 0x33464

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_MAX_PASSWORD_ATTEMPTS_SET: admin package name = %s - admin user ID = %d - target user ID = %d - new maximum of failed attempts = %d"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 99
    const v1, 0x33465

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_KEYGUARD_DISABLED_FEATURES_SET: admin package name = %s - admin user ID = %d - target user ID = %d - disabled keyguard feature mask = %d"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 102
    const v1, 0x33466

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_REMOTE_LOCK: admin package name = %s - admin user ID = %d - target user ID = %d"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 104
    const v1, 0x33467

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_WIPE_FAILURE"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 105
    const v1, 0x3346d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_CERT_AUTHORITY_INSTALLED: result = %b - certificate subject = %s - user id = %d"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 107
    const v1, 0x3346e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_CERT_AUTHORITY_REMOVED: result = %b - certificate subject = %s - user id = %d"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 109
    const v1, 0x3346b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_USER_RESTRICTION_ADDED: admin package name = %s - user id = %d - user restriction = %s"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 111
    const v1, 0x3346c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_USER_RESTRICTION_REMOVED: admin package name = %s - user id = %d - user restriction = %s"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 113
    const v1, 0x3346f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_CRYPTO_SELF_TEST_COMPLETED: result = %b"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 114
    const v1, 0x33472

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_CAMERA_POLICY_SET: admin package name = %s - admin user ID = %d - target user ID = %d - camera is disabled = %b"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 116
    const v1, 0x33473

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_PASSWORD_COMPLEXITY_REQUIRED: admin package name = %s - admin user ID = %d - target user ID = %d - password complexity = %d"

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 119
    const v1, 0x33475

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_WIFI_CONNECTION: attempt of connection BSSID = %s - eventType = %s "

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 121
    const v1, 0x33476

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TAG_WIFI_DISCONNECTION: disconnected from BSSID = %s "

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 68
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/sec/enterprise/auditlog/SecurityLogParser;->logFormat:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs blacklist buildLogMessage(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "tag"    # I
    .param p1, "payloads"    # [Ljava/lang/Object;

    .line 309
    const-string v0, "- %s"

    const v1, 0x33475

    if-ne p0, v1, :cond_1

    .line 310
    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "failureReason":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/sec/enterprise/auditlog/SecurityLogParser;->logFormat:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 311
    .end local v1    # "failureReason":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 314
    :cond_1
    const v1, 0x33476

    if-ne p0, v1, :cond_2

    .line 315
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "reason":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/sec/enterprise/auditlog/SecurityLogParser;->logFormat:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 314
    .end local v1    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    nop

    .line 320
    :cond_3
    sget-object v0, Landroid/sec/enterprise/auditlog/SecurityLogParser;->logFormat:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getLogGroup(I)I
    .locals 1
    .param p0, "tag"    # I

    .line 196
    packed-switch p0, :pswitch_data_0

    .line 229
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 227
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 221
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 200
    :pswitch_3
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x33455
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static blacklist getLogSeverity(IZ)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "outcome"    # Z

    .line 158
    const/4 v0, 0x3

    const/4 v1, 0x5

    sparse-switch p0, :sswitch_data_0

    .line 191
    return v1

    .line 164
    :sswitch_0
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 167
    :sswitch_1
    return v0

    .line 161
    :sswitch_2
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x33457 -> :sswitch_2
        0x3345f -> :sswitch_1
        0x33467 -> :sswitch_1
        0x3346d -> :sswitch_2
        0x3346e -> :sswitch_0
        0x3346f -> :sswitch_0
    .end sparse-switch
.end method

.method private static varargs blacklist getOutcome(I[Ljava/lang/Object;)Z
    .locals 3
    .param p0, "tag"    # I
    .param p1, "payloads"    # [Ljava/lang/Object;

    .line 272
    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    .line 304
    return v0

    .line 279
    :sswitch_0
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 277
    :sswitch_1
    const/4 v1, 0x0

    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x33457 -> :sswitch_1
        0x3346d -> :sswitch_1
        0x3346e -> :sswitch_1
        0x3346f -> :sswitch_1
        0x33475 -> :sswitch_0
    .end sparse-switch
.end method

.method private static varargs blacklist getUserId(I[Ljava/lang/Object;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "payloads"    # [Ljava/lang/Object;

    .line 234
    const/4 v0, 0x2

    sparse-switch p0, :sswitch_data_0

    .line 267
    const/4 v0, -0x1

    return v0

    .line 251
    :sswitch_0
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 248
    :sswitch_1
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 236
    :sswitch_2
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x33455 -> :sswitch_2
        0x33460 -> :sswitch_1
        0x33461 -> :sswitch_1
        0x33462 -> :sswitch_1
        0x33463 -> :sswitch_1
        0x33464 -> :sswitch_1
        0x33465 -> :sswitch_1
        0x33466 -> :sswitch_1
        0x3346b -> :sswitch_0
        0x3346c -> :sswitch_0
        0x3346d -> :sswitch_1
        0x3346e -> :sswitch_1
        0x33472 -> :sswitch_1
        0x33473 -> :sswitch_1
    .end sparse-switch
.end method

.method public static blacklist parse(ILjava/lang/String;)V
    .locals 2
    .param p0, "tag"    # I
    .param p1, "str"    # Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "payloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/sec/enterprise/auditlog/SecurityLogParser;->parse(I[Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method public static varargs blacklist parse(I[Ljava/lang/Object;)V
    .locals 14
    .param p0, "tag"    # I
    .param p1, "payloads"    # [Ljava/lang/Object;

    .line 125
    invoke-static {p0}, Landroid/sec/enterprise/auditlog/SecurityLogParser;->getLogGroup(I)I

    move-result v7

    .line 127
    .local v7, "group":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 128
    sget-object v0, Landroid/sec/enterprise/auditlog/SecurityLogParser;->TAG:Ljava/lang/String;

    const-string v1, "Unimplemented SecurityLog tag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 132
    :cond_0
    const-string v8, "SecurityLog"

    .line 133
    .local v8, "swComponent":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 134
    .local v9, "uid":I
    invoke-static {p0, p1}, Landroid/sec/enterprise/auditlog/SecurityLogParser;->getOutcome(I[Ljava/lang/Object;)Z

    move-result v10

    .line 135
    .local v10, "outcome":Z
    invoke-static {p0, v10}, Landroid/sec/enterprise/auditlog/SecurityLogParser;->getLogSeverity(IZ)I

    move-result v11

    .line 136
    .local v11, "severity":I
    invoke-static {p0, p1}, Landroid/sec/enterprise/auditlog/SecurityLogParser;->getUserId(I[Ljava/lang/Object;)I

    move-result v12

    .line 137
    .local v12, "userId":I
    invoke-static {p0, p1}, Landroid/sec/enterprise/auditlog/SecurityLogParser;->buildLogMessage(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 139
    .local v13, "logMessage":Ljava/lang/String;
    const-string v4, "SecurityLog"

    move v0, v11

    move v1, v7

    move v2, v10

    move v3, v9

    move-object v5, v13

    move v6, v12

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 148
    return-void
.end method
