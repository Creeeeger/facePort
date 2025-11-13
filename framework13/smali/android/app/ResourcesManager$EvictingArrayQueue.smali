.class Landroid/app/ResourcesManager$EvictingArrayQueue;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvictingArrayQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCapacity:I

.field private final blacklist mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPointer:I

.field final synthetic blacklist this$0:Landroid/app/ResourcesManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/ResourcesManager;I)V
    .locals 0
    .param p2, "capacity"    # I

    .line 767
    .local p0, "this":Landroid/app/ResourcesManager$EvictingArrayQueue;, "Landroid/app/ResourcesManager$EvictingArrayQueue<TE;>;"
    iput-object p1, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->this$0:Landroid/app/ResourcesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    .line 765
    const/4 p1, 0x0

    iput p1, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mPointer:I

    .line 768
    iput p2, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mCapacity:I

    .line 769
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    .line 770
    return-void
.end method


# virtual methods
.method blacklist add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 773
    .local p0, "this":Landroid/app/ResourcesManager$EvictingArrayQueue;, "Landroid/app/ResourcesManager$EvictingArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    iget v1, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mPointer:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v1, v2

    iput v1, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mPointer:I

    .line 775
    iget-object v1, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mCapacity:I

    if-ne v1, v2, :cond_0

    .line 777
    iget-object v1, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    iget v2, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mPointer:I

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 779
    :cond_0
    iget-object v1, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :goto_0
    monitor-exit v0

    .line 782
    return-void

    .line 781
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 785
    .local p0, "this":Landroid/app/ResourcesManager$EvictingArrayQueue;, "Landroid/app/ResourcesManager$EvictingArrayQueue<TE;>;"
    iget-object v0, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_0
    iget-object v1, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 787
    .local v1, "size":I
    iget v2, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mCapacity:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 788
    .local v2, "isFull":Z
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 789
    iget-object v5, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget v6, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mPointer:I

    add-int/2addr v6, v4

    add-int/2addr v6, v3

    iget v7, p0, Landroid/app/ResourcesManager$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v6, v7

    goto :goto_2

    :cond_1
    move v6, v4

    :goto_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 788
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 791
    .end local v1    # "size":I
    .end local v2    # "isFull":Z
    .end local v4    # "i":I
    :cond_2
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
