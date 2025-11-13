.class public final Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final AppId:Ljava/lang/String;

.field public final accessToken:Ljava/lang/String;

.field public apiKey:Ljava/lang/String;

.field public enableStreaming:Z

.field public requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

.field public final serverUrl:Ljava/lang/String;

.field public signingKey:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->apiKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->signingKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->AppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->accessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->serverUrl:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->requestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->enableStreaming:Z

    return-void
.end method
