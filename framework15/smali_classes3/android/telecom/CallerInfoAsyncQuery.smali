.class public Landroid/telecom/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;,
        Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;,
        Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist ENABLE_UNKNOWN_NUMBER_GEO_DESCRIPTION:Z = true

.field private static final blacklist EVENT_ADD_LISTENER:I = 0x2

.field private static final blacklist EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final blacklist EVENT_END_OF_QUEUE:I = 0x3

.field private static final blacklist EVENT_GET_GEO_DESCRIPTION:I = 0x6

.field private static final blacklist EVENT_NEW_QUERY:I = 0x1

.field private static final blacklist EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CallerInfoAsyncQuery"


# instance fields
.field private blacklist mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mrelease(Landroid/telecom/CallerInfoAsyncQuery;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/telecom/CallerInfoAsyncQuery;->sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Landroid/telecom/CallerInfoAsyncQuery;Landroid/content/Context;Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler-IA;)V

    iput-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, p2}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmQueryUri(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)V

    return-void

    :cond_0
    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getCurrentProfileContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    .locals 6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getProcessUserId()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p0, v3, v2, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v3

    const-string v4, "Can\'t find self package"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "CallerInfoAsyncQuery"

    invoke-static {v5, v3, v4, v2}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    return-object v2
.end method

.method private greylist release()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmContext(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)V

    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmQueryUri(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)V

    iget-object v0, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->-$$Nest$fputmCallerInfo(Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/telecom/CallerInfo;)V

    iput-object v1, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    return-void
.end method

.method private static blacklist sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist startQuery(ILandroid/content/Context;Landroid/net/Uri;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Landroid/telecom/CallerInfoAsyncQuery;
    .locals 11

    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery;

    invoke-direct {v0}, Landroid/telecom/CallerInfoAsyncQuery;-><init>()V

    invoke-direct {v0, p1, p2}, Landroid/telecom/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper-IA;)V

    iput-object p3, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-object p4, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v1, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    iget-object v3, v0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v4, p0

    move-object v5, v1

    move-object v6, p2

    invoke-virtual/range {v3 .. v10}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist startQuery(ILandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Landroid/telecom/CallerInfoAsyncQuery;
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v3

    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery;

    invoke-direct {v0}, Landroid/telecom/CallerInfoAsyncQuery;-><init>()V

    move-object v4, v0

    move-object/from16 v13, p2

    invoke-direct {v4, v1, v13}, Landroid/telecom/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper-IA;)V

    move-object v14, v0

    move-object/from16 v15, p4

    iput-object v15, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v12, p5

    iput-object v12, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iput-object v2, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iput v3, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/telephony/TelephonyManager;

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v11, v2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v0

    :goto_0
    move/from16 v16, v5

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startQuery - isEmergencyNumber is fail. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "CallerInfoAsyncQuery"

    invoke-static {v8, v6, v7}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v16, v5

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    :goto_1
    :try_start_1
    invoke-static {v1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    const/4 v5, 0x0

    move v0, v5

    :goto_2
    if-eqz v16, :cond_0

    const/4 v5, 0x4

    iput v5, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_1

    const/4 v5, 0x5

    iput v5, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_3

    :cond_1
    const/4 v5, 0x1

    iput v5, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    :goto_3
    iget-object v5, v4, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v6, p0

    move-object v7, v14

    move-object/from16 v8, p2

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    invoke-virtual/range {v5 .. v12}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static blacklist startQuery(ILandroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Landroid/telecom/CallerInfoAsyncQuery;
    .locals 7

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v6

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/telecom/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Landroid/telecom/CallerInfoAsyncQuery;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist startQuery(ILandroid/content/Context;Ljava/lang/String;Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Landroid/telecom/CallerInfoAsyncQuery;
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sip"

    invoke-virtual {v0, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery;

    invoke-direct {v0}, Landroid/telecom/CallerInfoAsyncQuery;-><init>()V

    move-object v13, v0

    invoke-direct {v13, v1, v12}, Landroid/telecom/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper-IA;)V

    move-object v14, v0

    move-object/from16 v15, p3

    iput-object v15, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v11, p4

    iput-object v11, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iput-object v2, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iput v3, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->subId:I

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v10, v2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    :goto_0
    move/from16 v16, v4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startQuery - isEmergencyNumber is fail. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "CallerInfoAsyncQuery"

    invoke-static {v7, v5, v6}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v16, v4

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    :goto_1
    :try_start_1
    invoke-static {v1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    const/4 v4, 0x0

    move v0, v4

    :goto_2
    if-eqz v16, :cond_0

    const/4 v4, 0x4

    iput v4, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_1

    const/4 v4, 0x5

    iput v4, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_3

    :cond_1
    const/4 v4, 0x1

    iput v4, v14, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    :goto_3
    iget-object v4, v13, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v5, p0

    move-object v6, v14

    move-object v7, v12

    move-object/from16 v19, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-virtual/range {v4 .. v11}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v13
.end method


# virtual methods
.method public blacklist addQueryListener(ILandroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 10

    new-instance v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;-><init>(Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper-IA;)V

    iput-object p2, v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->listener:Landroid/telecom/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput-object p3, v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v0, Landroid/telecom/CallerInfoAsyncQuery$CookieWrapper;->event:I

    iget-object v2, p0, Landroid/telecom/CallerInfoAsyncQuery;->mHandler:Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move-object v4, v0

    invoke-virtual/range {v2 .. v9}, Landroid/telecom/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
