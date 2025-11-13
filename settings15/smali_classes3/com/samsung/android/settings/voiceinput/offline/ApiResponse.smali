.class public abstract Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@VoiceIn: ApiResponse"


# direct methods
.method public static create(Ljava/lang/Throwable;)Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "Unknown Error"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Lretrofit2/Response;)Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;
    .locals 2

    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lretrofit2/Response;->body:Ljava/lang/Object;

    if-eqz p0, :cond_1

    iget v0, v0, Lokhttp3/Response;->code:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p0, Lcom/samsung/android/settings/voiceinput/offline/ApiEmptyResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_2
    :try_start_0
    iget-object p0, p0, Lretrofit2/Response;->errorBody:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object p0, v0, Lokhttp3/Response;->message:Ljava/lang/String;

    :cond_4
    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;

    if-nez p0, :cond_5

    const-string p0, "Unknown Error"

    :cond_5
    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
