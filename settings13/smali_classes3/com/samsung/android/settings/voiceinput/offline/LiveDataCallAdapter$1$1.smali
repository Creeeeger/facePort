.class Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;
.super Ljava/lang/Object;
.source "LiveDataCallAdapter.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->onActive()V
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
.field final synthetic this$1:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;->this$1:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;

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

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;->this$1:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;

    invoke-static {p2}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;->create(Ljava/lang/Throwable;)Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->access$100(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;Ljava/lang/Object;)V

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

    .line 39
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;->this$1:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;

    invoke-static {p2}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;->create(Lretrofit2/Response;)Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->access$000(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;Ljava/lang/Object;)V

    return-void
.end method
