.class Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;
.super Landroidx/lifecycle/LiveData;
.source "LiveDataCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;->adapt(Lretrofit2/Call;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lcom/samsung/android/settings/voiceinput/offline/ApiResponse<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;

.field final synthetic val$call:Lretrofit2/Call;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;Lretrofit2/Call;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->this$0:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->val$call:Lretrofit2/Call;

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 30
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    .line 34
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->val$call:Lretrofit2/Call;

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method
