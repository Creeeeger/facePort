.class public Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCallAdapter;
.super Ljava/lang/Object;
.source "ApiResponseCallAdapter.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TT;",
        "Lretrofit2/Call<",
        "Lcom/samsung/android/settings/voiceinput/offline/ApiResponse<",
        "TT;>;>;>;"
    }
.end annotation


# instance fields
.field private mSuccessType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCallAdapter;->mSuccessType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCallAdapter;->adapt(Lretrofit2/Call;)Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method

.method public adapt(Lretrofit2/Call;)Lretrofit2/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;)",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/settings/voiceinput/offline/ApiResponse<",
            "TT;>;>;"
        }
    .end annotation

    .line 22
    new-instance p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCall;-><init>(Lretrofit2/Call;)V

    return-object p0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponseCallAdapter;->mSuccessType:Ljava/lang/reflect/Type;

    return-object p0
.end method
