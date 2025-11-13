.class public final Lnotification/src/com/android/systemui/SrPromptProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lnotification/src/com/android/systemui/BasePromptProcessor;


# instance fields
.field public final API_KEY:Ljava/lang/String;

.field public final apkSigningKey:Ljava/lang/String;

.field public final appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

.field public final context:Landroid/content/Context;

.field public isSummarizing:Z

.field public mMemManager:Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

.field public notificationKey:Ljava/lang/String;

.field public smartreplyer:Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

.field public summarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnotification/src/com/android/systemui/SrPromptProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnotification/src/com/android/systemui/SrPromptProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "SrPromptProcessor"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->context:Landroid/content/Context;

    const-string v1, "74NEkgeVa8SprJ7p"

    iput-object v1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->API_KEY:Ljava/lang/String;

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

    invoke-static {v3, p1, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->apkSigningKey:Ljava/lang/String;

    :try_start_1
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v3, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->API_KEY:Ljava/lang/String;

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

    invoke-static {v3, p1, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_3
    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-object v2, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->apiKey:Ljava/lang/String;

    iget-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->apkSigningKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->signingKey:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;I)V

    iput-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-object v2, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->apiKey:Ljava/lang/String;

    iget-object p0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->apkSigningKey:Ljava/lang/String;

    iput-object p0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->signingKey:Ljava/lang/String;

    new-instance p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;I)V

    return-void
.end method


# virtual methods
.method public final getNotificationKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->notificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public final releaseSmartReply()V
    .locals 3

    const-string v0, "SrPromptProcessor"

    const-string v1, "call releaseSmartReply"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->smartreplyer:Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SmartReplyServiceExecutor;

    iget-object v2, v0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->isServiceConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartReplyer"

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->smartreplyer:Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    return-void
.end method

.method public final releaseSummarizer()V
    .locals 4

    iget-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->summarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;

    iget-object v3, v2, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->mConnectionManager:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->isServiceConnected()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Summarizer"

    invoke-static {v3, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->onDeviceServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/OnDeviceServiceExecutor;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->deInit()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->summarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    iput-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->mMemManager:Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

    return-void
.end method

.method public final setNotificationKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->notificationKey:Ljava/lang/String;

    return-void
.end method

.method public final summary(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/SummarizeController$1;)V
    .locals 8

    const-string v0, "SrPromptProcessor"

    const-string v1, "summary async"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->isSummarizing:Z

    if-eqz v1, :cond_0

    const-string p0, "isSummarizing true"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->summarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->context:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->summarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    iget-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

    move-result-object v0

    iput-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->mMemManager:Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

    :cond_1
    iget-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->mMemManager:Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;->prepare()V

    :cond_2
    iget-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->mMemManager:Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    new-instance v2, Lcom/samsung/android/chimera/genie/SemMemRequest;

    const/high16 v3, 0x280000

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/chimera/genie/SemMemRequest;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/chimera/genie/SemSmartMemoryManager;->request(Lcom/samsung/android/chimera/genie/SemMemRequest;)V

    :cond_3
    iget-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->summarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    if-nez v0, :cond_4

    const/4 p2, 0x0

    goto/16 :goto_1

    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "count_of_summary_lines"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "count_of_keyword_lines"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Lcom/android/systemui/NotiRune;->NOTI_SUPPORT_NOTIFICATION_SUMMARIZE_FOR_CHINA:Z

    if-eqz v3, :cond_5

    const-string v3, "feature_type"

    const-string v4, "notification_summary"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-boolean v1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->isSummarizing:Z

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->MORE_BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->DIALOGUE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    new-instance v4, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;

    iget-object v5, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    iget-boolean v6, v5, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->enableStreaming:Z

    if-eqz v6, :cond_6

    new-instance v6, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingCompletionSource;

    invoke-direct {v6}, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingCompletionSource;-><init>()V

    goto :goto_0

    :cond_6
    new-instance v6, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-direct {v6}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;-><init>()V

    :goto_0
    iget-object v0, v0, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;

    invoke-direct {v4, v0, v6}, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;-><init>(Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "created: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Summarizer"

    invoke-static {v7, v6}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;

    invoke-direct {v6, v5}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    iget-object v5, v4, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;

    iget-object v5, v5, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationServiceExecutor;->context:Landroid/content/Context;

    invoke-virtual {v6, v5}, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->authHeader:Ljava/util/Map;

    iput-object p2, v4, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->inputText:Ljava/lang/String;

    if-nez v1, :cond_7

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->summarizeLevel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->summarizeSubTask:Ljava/lang/String;

    iget-object p2, v4, Lcom/samsung/android/sdk/scs/ai/language/service/SummarizationRunnable2;->extraPrompt:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "executed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, v4, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    iget-object p2, p2, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->task:Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    :goto_1
    if-eqz p2, :cond_8

    new-instance v0, Lnotification/src/com/android/systemui/SrPromptProcessor$summary$1;

    invoke-direct {v0, p0, p3, p1}, Lnotification/src/com/android/systemui/SrPromptProcessor$summary$1;-><init>(Lnotification/src/com/android/systemui/SrPromptProcessor;Lnotification/src/com/android/systemui/PromptCallback;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    :cond_8
    return-void
.end method

.method public final textPrompting(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;)V
    .locals 2

    const-string v0, "SrPromptProcessor"

    const-string v1, "textPrompting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    iget-object v1, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->smartreplyer:Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "target_language"

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->smartreplyer:Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lnotification/src/com/android/systemui/SrPromptProcessor;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {p2, p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/language/SmartReplyer;->smartReply(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lnotification/src/com/android/systemui/SrPromptProcessor$textPrompting$1;

    invoke-direct {p1, p3}, Lnotification/src/com/android/systemui/SrPromptProcessor$textPrompting$1;-><init>(Lnotification/src/com/android/systemui/PromptCallback;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    :cond_0
    return-void
.end method
