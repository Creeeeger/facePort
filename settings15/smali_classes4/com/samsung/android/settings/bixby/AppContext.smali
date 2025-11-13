.class public final Lcom/samsung/android/settings/bixby/AppContext;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppContext:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bixby/AppContext$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/AppContext;->mAppContext:Lorg/json/JSONObject;

    :try_start_0
    const-string p0, "llmContext"

    iget-object p1, p1, Lcom/samsung/android/settings/bixby/AppContext$Builder;->mLLMContext:Lorg/json/JSONArray;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "llmCapsuleId"

    const-string/jumbo p1, "samsung.settingsApp"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
