.class public Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "Lcom/samsung/android/settings/voiceinput/offline/ApiResponse<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private mDelegate:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lretrofit2/Call;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;->mDelegate:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;->clone()Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Lretrofit2/Call;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;->mDelegate:Lretrofit2/Call;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;-><init>(Lretrofit2/Call;)V

    return-object v0
.end method

.method public final enqueue(Lretrofit2/Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;->mDelegate:Lretrofit2/Call;

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;-><init>(Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;Lretrofit2/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final execute()Lretrofit2/Response;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;->mDelegate:Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    iget-object v0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;->create(Lretrofit2/Response;)Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;

    move-result-object p0

    invoke-static {p0}, Lretrofit2/Response;->success(Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;)Lretrofit2/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    iget-object p0, p0, Lretrofit2/Response;->errorBody:Lokhttp3/ResponseBody;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;->create(Ljava/lang/Throwable;)Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;

    move-result-object p0

    invoke-static {p0}, Lretrofit2/Response;->success(Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;)Lretrofit2/Response;

    move-result-object p0

    return-object p0
.end method

.method public final isCanceled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;->mDelegate:Lretrofit2/Call;

    invoke-interface {p0}, Lretrofit2/Call;->isCanceled()Z

    move-result p0

    return p0
.end method
