.class public final Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Lnotification/src/com/android/systemui/PromptCallback;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $response:Lokhttp3/Response;

.field public final synthetic $responseBody:Ljava/lang/String;

.field public final synthetic this$0:Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;


# direct methods
.method public constructor <init>(Lokhttp3/Response;Ljava/lang/String;Lnotification/src/com/android/systemui/PromptCallback;Ljava/lang/String;Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;)V
    .locals 0

    iput-object p1, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->$response:Lokhttp3/Response;

    iput-object p2, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->$responseBody:Ljava/lang/String;

    iput-object p3, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    iput-object p4, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->$key:Ljava/lang/String;

    iput-object p5, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->this$0:Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->$response:Lokhttp3/Response;

    iget v0, v0, Lokhttp3/Response;->code:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12b

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->$responseBody:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->$responseBody:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    iget-object v3, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->$key:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "summary"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Lnotification/src/com/android/systemui/PromptCallback;->onComplete(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    iget-object v1, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->$responseBody:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnotification/src/com/android/systemui/PromptCallback;->onFailure(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;->this$0:Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;

    iput-boolean v2, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;->isSummarizing:Z

    return-void
.end method
