.class public Landroidx/lifecycle/MutableLiveData;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final NOT_SET:Ljava/lang/Object;


# instance fields
.field public volatile mData:Ljava/lang/Object;

.field public final mDataLock:Ljava/lang/Object;

.field public mDispatchInvalidated:Z

.field public mDispatchingValue:Z

.field public final mObservers:Landroidx/arch/core/internal/SafeIterableMap;

.field public volatile mPendingData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/lifecycle/MutableLiveData;->NOT_SET:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/arch/core/internal/SafeIterableMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/lifecycle/MutableLiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 10
    .line 11
    sget-object v0, Landroidx/lifecycle/MutableLiveData;->NOT_SET:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/lifecycle/MutableLiveData;->mPendingData:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/lifecycle/MutableLiveData;->mData:Ljava/lang/Object;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final setValue(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/DefaultTaskExecutor;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-ne v0, v1, :cond_3

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/lifecycle/MutableLiveData;->mData:Ljava/lang/Object;

    .line 25
    .line 26
    iget-boolean p1, p0, Landroidx/lifecycle/MutableLiveData;->mDispatchingValue:Z

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/lifecycle/MutableLiveData;->mDispatchInvalidated:Z

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iput-boolean v0, p0, Landroidx/lifecycle/MutableLiveData;->mDispatchingValue:Z

    .line 35
    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Landroidx/lifecycle/MutableLiveData;->mDispatchInvalidated:Z

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/lifecycle/MutableLiveData;->mObservers:Landroidx/arch/core/internal/SafeIterableMap;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v1, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;-><init>(Landroidx/arch/core/internal/SafeIterableMap;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Landroidx/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    .line 50
    .line 51
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    iget-boolean v0, p0, Landroidx/lifecycle/MutableLiveData;->mDispatchInvalidated:Z

    .line 63
    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    iput-boolean p1, p0, Landroidx/lifecycle/MutableLiveData;->mDispatchingValue:Z

    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :cond_2
    invoke-virtual {v1}, Landroidx/arch/core/internal/SafeIterableMap$IteratorWithAdditions;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Ljava/util/Map$Entry;

    .line 74
    .line 75
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    throw p0

    .line 84
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string p1, "Cannot invoke setValue on a background thread"

    .line 87
    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0
.end method
