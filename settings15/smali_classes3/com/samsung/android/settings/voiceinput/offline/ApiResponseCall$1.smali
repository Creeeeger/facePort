.class Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;

.field final synthetic val$callback:Lretrofit2/Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;Lretrofit2/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;->this$0:Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;->val$callback:Lretrofit2/Callback;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;->val$callback:Lretrofit2/Callback;

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;->create(Ljava/lang/Throwable;)Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/Response;->success(Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;)Lretrofit2/Response;

    move-result-object p1

    invoke-interface {p0, p1}, Lretrofit2/Callback;->onResponse(Lretrofit2/Response;)V

    return-void
.end method

.method public final onResponse(Lretrofit2/Response;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;->val$callback:Lretrofit2/Callback;

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;->create(Lretrofit2/Response;)Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;

    move-result-object p1

    invoke-static {p1}, Lretrofit2/Response;->success(Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;)Lretrofit2/Response;

    move-result-object p1

    invoke-interface {p0, p1}, Lretrofit2/Callback;->onResponse(Lretrofit2/Response;)V

    return-void
.end method
