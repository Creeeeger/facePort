.class public final Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    return-void
.end method


# virtual methods
.method public final generateHeaderMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/language/service/AuthHeader;->appInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->apiKey:Ljava/lang/String;

    const-string v2, "api-key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->signingKey:Ljava/lang/String;

    const-string v2, "package-signing-key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->appId:Ljava/lang/String;

    const-string v2, "ssp-app-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->accessToken:Ljava/lang/String;

    const-string v2, "ssp-access-token"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->userId:Ljava/lang/String;

    const-string v2, "ssp-user-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->serverUrl:Ljava/lang/String;

    const-string v2, "ssp-server-url"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "request-type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->enableStreaming:Z

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "streaming-mode"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p0, "package-name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AuthHeader"

    const-string p1, "SCS SDK VERSION: 3.1.24"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
