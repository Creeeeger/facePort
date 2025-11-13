.class public Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;
.super Ljava/lang/Object;
.source "LiveDataCallAdapter.java"

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
        "Landroidx/lifecycle/LiveData<",
        "Lcom/samsung/android/settings/voiceinput/offline/ApiResponse<",
        "TT;>;>;>;"
    }
.end annotation


# instance fields
.field private mResponseType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;->mResponseType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/samsung/android/settings/voiceinput/offline/ApiResponse<",
            "TT;>;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;Lretrofit2/Call;)V

    return-object v0
.end method

.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;->adapt(Lretrofit2/Call;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;->mResponseType:Ljava/lang/reflect/Type;

    return-object p0
.end method
