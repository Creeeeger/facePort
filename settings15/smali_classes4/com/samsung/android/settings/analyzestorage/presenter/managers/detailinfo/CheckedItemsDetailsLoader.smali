.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mIsCancel:Z

.field public final mListenerList:Ljava/util/List;

.field public final mListenerMap:Ljava/util/Map;

.field public mLoadHandler:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mListenerList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mListenerMap:Ljava/util/Map;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "details_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method
