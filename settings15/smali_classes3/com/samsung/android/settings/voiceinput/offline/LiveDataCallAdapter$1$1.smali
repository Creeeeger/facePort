.class Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;
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
.field final synthetic this$1:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;->this$1:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;->this$1:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;->create(Ljava/lang/Throwable;)Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onResponse(Lretrofit2/Response;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;->this$1:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;->create(Lretrofit2/Response;)Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
