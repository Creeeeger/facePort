.class Landroid/os/storage/StorageManager$ObbActionListener;
.super Landroid/os/storage/IObbActionListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObbActionListener"
.end annotation


# instance fields
.field private greylist-max-o mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/storage/StorageManager$ObbListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/os/storage/StorageManager;


# direct methods
.method private constructor blacklist <init>(Landroid/os/storage/StorageManager;)V
    .locals 0

    .line 427
    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Landroid/os/storage/IObbActionListener$Stub;-><init>()V

    .line 428
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$ObbActionListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o addListener(Landroid/os/storage/OnObbStateChangeListener;)I
    .locals 4
    .param p1, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    .line 447
    new-instance v0, Landroid/os/storage/StorageManager$ObbListenerDelegate;

    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->this$0:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1, p1}, Landroid/os/storage/StorageManager$ObbListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/OnObbStateChangeListener;)V

    .line 449
    .local v0, "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    invoke-static {v0}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->-$$Nest$fgetnonce(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-static {v0}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->-$$Nest$fgetnonce(Landroid/os/storage/StorageManager$ObbListenerDelegate;)I

    move-result v1

    return v1

    .line 451
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public greylist-max-o onObbResult(Ljava/lang/String;II)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "nonce"    # I
    .param p3, "status"    # I

    .line 434
    iget-object v0, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 435
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager$ObbListenerDelegate;

    .line 436
    .local v1, "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    if-eqz v1, :cond_0

    .line 437
    iget-object v2, p0, Landroid/os/storage/StorageManager$ObbActionListener;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 439
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {v1, p1, p3}, Landroid/os/storage/StorageManager$ObbListenerDelegate;->sendObbStateChanged(Ljava/lang/String;I)V

    .line 444
    :cond_1
    return-void

    .line 439
    .end local v1    # "delegate":Landroid/os/storage/StorageManager$ObbListenerDelegate;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
