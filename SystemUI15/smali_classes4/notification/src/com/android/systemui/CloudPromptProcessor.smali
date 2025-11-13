.class public final Lnotification/src/com/android/systemui/CloudPromptProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lnotification/src/com/android/systemui/BasePromptProcessor;


# instance fields
.field public final apkSigningKey:Ljava/lang/String;

.field public final appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

.field public final context:Landroid/content/Context;

.field public notificationKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnotification/src/com/android/systemui/CloudPromptProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "CloudPromptProcessor"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/high16 v4, 0x8000000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object p1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v3, "getApkSigningKey: "

    invoke-static {v3, p1, v0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->apkSigningKey:Ljava/lang/String;

    :try_start_1
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const-string v3, "74NEkgeVa8SprJ7p"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    move v4, v1

    :goto_1
    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    invoke-virtual {p1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    const-string v3, "Exception getLongHash: "

    invoke-static {v3, p1, v0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_3
    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-boolean v1, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->enableStreaming:Z

    iput-object v2, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->apiKey:Ljava/lang/String;

    iget-object v0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->apkSigningKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->signingKey:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;I)V

    iput-object v0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    return-void
.end method

.method public static final access$getErrorMessage(Lnotification/src/com/android/systemui/CloudPromptProcessor;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->context:Landroid/content/Context;

    const p1, 0x7f131306

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->context:Landroid/content/Context;

    const p1, 0x7f131308

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->context:Landroid/content/Context;

    const p1, 0x7f13130b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final access$parseOutput(Lnotification/src/com/android/systemui/CloudPromptProcessor;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;

    invoke-virtual {p0, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_0
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnotification/src/com/android/systemui/CloudPromptProcessor$Output;->getResponse()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final getNotificationKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->notificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public final releaseSmartReply()V
    .locals 0

    return-void
.end method

.method public final releaseSummarizer()V
    .locals 0

    return-void
.end method

.method public final setNotificationKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->notificationKey:Ljava/lang/String;

    return-void
.end method

.method public final summary(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/SummarizeController$1;)V
    .locals 0

    return-void
.end method

.method public final textPrompting(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;)V
    .locals 2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "feature_type"

    const-string v1, "systemui_notification"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->context:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lnotification/src/com/android/systemui/CloudPromptProcessor;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {v1, v0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->smartReply(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    move-result-object p1

    new-instance p2, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;

    invoke-direct {p2, p0, p3}, Lnotification/src/com/android/systemui/CloudPromptProcessor$textPrompting$1;-><init>(Lnotification/src/com/android/systemui/CloudPromptProcessor;Lnotification/src/com/android/systemui/PromptCallback;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    return-void
.end method
