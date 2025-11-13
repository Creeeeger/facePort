.class public abstract Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Throwable;)Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/samsung/android/settings/voiceinput/offline/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    .line 13
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Response<",
            "TT;>;)",
            "Lcom/samsung/android/settings/voiceinput/offline/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lretrofit2/Response;->code()I

    move-result p0

    const/16 v1, 0xcc

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 22
    :cond_1
    :goto_0
    new-instance p0, Lcom/samsung/android/settings/voiceinput/offline/ApiEmptyResponse;

    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/offline/ApiEmptyResponse;-><init>()V

    return-object p0

    :cond_2
    const/4 v0, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 31
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    :cond_3
    invoke-virtual {p0}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_4
    new-instance p0, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;

    if-nez v0, :cond_5

    const-string v0, "Unknown Error"

    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
