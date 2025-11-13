.class Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;
.super Landroidx/lifecycle/LiveData;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData;"
    }
.end annotation


# instance fields
.field started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;

.field final synthetic val$call:Lretrofit2/Call;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;Lretrofit2/OkHttpCall;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->this$0:Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->val$call:Lretrofit2/Call;

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onActive()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;->val$call:Lretrofit2/Call;

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1$1;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LiveDataCallAdapter$1;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method
