.class Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;
.super Ljava/lang/Object;
.source "ApiResponseCall.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;

.field final synthetic val$callback:Lretrofit2/Callback;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;Lretrofit2/Callback;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;->this$0:Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;->val$callback:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;->val$callback:Lretrofit2/Callback;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;->this$0:Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;

    invoke-static {p2}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;->create(Ljava/lang/Throwable;)Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;->val$callback:Lretrofit2/Callback;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall$1;->this$0:Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;

    invoke-static {p2}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;->create(Lretrofit2/Response;)Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;

    move-result-object p2

    invoke-static {p2}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    return-void
.end method
