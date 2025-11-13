.class Landroid/os/storage/StorageManager$1;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/storage/StorageManager;

.field final synthetic blacklist val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor blacklist <init>(Landroid/os/storage/StorageManager;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/storage/StorageManager$1;->this$0:Landroid/os/storage/StorageManager;

    iput-object p2, p0, Landroid/os/storage/StorageManager$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFinished(ILandroid/os/PersistableBundle;)V
    .locals 1

    iget-object v0, p0, Landroid/os/storage/StorageManager$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist onStatus(ILandroid/os/PersistableBundle;)V
    .locals 0

    return-void
.end method
