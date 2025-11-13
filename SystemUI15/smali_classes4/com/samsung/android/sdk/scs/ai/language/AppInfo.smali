.class public final Lcom/samsung/android/sdk/scs/ai/language/AppInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final accessToken:Ljava/lang/String;

.field public final apiKey:Ljava/lang/String;

.field public final appId:Ljava/lang/String;

.field public final enableStreaming:Z

.field public final requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

.field public final serverUrl:Ljava/lang/String;

.field public final signingKey:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->apiKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->apiKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->serverUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->serverUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->AppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->appId:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->signingKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->signingKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->accessToken:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->userId:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iget-boolean p1, p1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->enableStreaming:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->enableStreaming:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;)V

    return-void
.end method
