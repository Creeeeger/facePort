.class public abstract Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService$ProviderCallExecutorServiceHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;->mSingleExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;->mMultipleExecutorService:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService$ProviderCallExecutorServiceHolder;->INSTANCE:Lcom/samsung/android/settings/eternal/providercall/ProviderCallExecutorService;

    return-void
.end method
