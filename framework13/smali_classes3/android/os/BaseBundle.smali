.class public Landroid/os/BaseBundle;
.super Ljava/lang/Object;
.source "BaseBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseBundle$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field static final greylist-max-o BUNDLE_MAGIC:I = 0x4c444e42

.field private static final greylist-max-o BUNDLE_MAGIC_NATIVE:I = 0x4c444e44

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o FLAG_DEFUSABLE:I = 0x1

.field private static final greylist-max-o LOG_DEFUSABLE:Z = false

.field protected static final greylist-max-o TAG:Ljava/lang/String; = "Bundle"

.field private static volatile greylist-max-o sShouldDefuse:Z


# instance fields
.field private greylist-max-o mClassLoader:Ljava/lang/ClassLoader;

.field public greylist-max-o mFlags:I

.field greylist mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mOwnsLazyValues:Z

.field private greylist-max-o mParcelledByNative:Z

.field volatile greylist mParcelledData:Landroid/os/Parcel;

.field private blacklist mWeakParcelledData:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .locals 2

    .line 156
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 157
    return-void
.end method

.method constructor greylist-max-o <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 191
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 192
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/BaseBundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;Z)V

    .line 202
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/BaseBundle;Z)V
    .locals 7
    .param p1, "from"    # Landroid/os/BaseBundle;
    .param p2, "deep"    # Z

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 108
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 127
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 213
    monitor-enter p1

    .line 214
    :try_start_0
    iget-object v1, p1, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 216
    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 217
    iput-boolean v2, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 218
    iput-boolean v2, p1, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 220
    if-nez p2, :cond_0

    .line 221
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_1

    .line 223
    :cond_0
    move-object v0, v1

    .line 224
    .local v0, "fromMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 225
    .local v1, "n":I
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 226
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 227
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/BaseBundle;->deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "fromMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "n":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 231
    :cond_2
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 235
    :goto_1
    iget-object v0, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_4

    .line 236
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    .line 238
    .local v0, "parcelledData":Landroid/os/Parcel;
    iput-boolean v2, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    goto :goto_2

    .line 240
    .end local v0    # "parcelledData":Landroid/os/Parcel;
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 241
    .restart local v0    # "parcelledData":Landroid/os/Parcel;
    iget-object v1, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v3, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 242
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    .line 241
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 243
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 244
    iget-boolean v1, p1, Landroid/os/BaseBundle;->mParcelledByNative:Z

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    goto :goto_2

    .line 247
    .end local v0    # "parcelledData":Landroid/os/Parcel;
    :cond_4
    const/4 v0, 0x0

    .line 248
    .restart local v0    # "parcelledData":Landroid/os/Parcel;
    iput-boolean v2, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 252
    :goto_2
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 253
    .end local v0    # "parcelledData":Landroid/os/Parcel;
    monitor-exit p1

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 108
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 127
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 166
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 167
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 108
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 127
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 171
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 182
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ClassLoader;I)V
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "capacity"    # I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 108
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    .line 127
    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 147
    if-lez p2, :cond_0

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p2}, Landroid/util/ArrayMap;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 149
    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    iput-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 150
    return-void
.end method

.method private greylist-max-o deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 609
    if-nez p1, :cond_0

    .line 610
    const/4 v0, 0x0

    return-object v0

    .line 612
    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 613
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 614
    :cond_1
    instance-of v0, p1, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_2

    .line 615
    move-object v0, p1

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0

    .line 616
    :cond_2
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 617
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/os/BaseBundle;->deepcopyArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 618
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 619
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    .line 620
    move-object v0, p1

    check-cast v0, [I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 621
    :cond_4
    instance-of v0, p1, [J

    if-eqz v0, :cond_5

    .line 622
    move-object v0, p1

    check-cast v0, [J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 623
    :cond_5
    instance-of v0, p1, [F

    if-eqz v0, :cond_6

    .line 624
    move-object v0, p1

    check-cast v0, [F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 625
    :cond_6
    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    .line 626
    move-object v0, p1

    check-cast v0, [D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 627
    :cond_7
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 628
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 629
    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    .line 630
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 631
    :cond_9
    instance-of v0, p1, [S

    if-eqz v0, :cond_a

    .line 632
    move-object v0, p1

    check-cast v0, [S

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 633
    :cond_a
    instance-of v0, p1, [C

    if-eqz v0, :cond_b

    .line 634
    move-object v0, p1

    check-cast v0, [C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 637
    :cond_b
    return-object p1
.end method

.method private greylist-max-o deepcopyArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "from"    # Ljava/util/ArrayList;

    .line 641
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 642
    .local v0, "N":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 643
    .local v1, "out":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 644
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/os/BaseBundle;->deepCopyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 646
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V
    .locals 4
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "bundle"    # Landroid/os/BaseBundle;

    .line 1904
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1905
    if-nez p1, :cond_0

    .line 1906
    const-string v0, "[null]"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    return-void

    .line 1909
    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->getItemwiseMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1910
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1911
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1910
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1913
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1914
    return-void
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/SparseArray;)V
    .locals 3
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "array"    # Landroid/util/SparseArray;

    .line 1891
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1892
    if-nez p1, :cond_0

    .line 1893
    const-string v0, "[null]"

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1894
    return-void

    .line 1896
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1896
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1899
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1900
    return-void
.end method

.method public static greylist-max-o dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1874
    .local v0, "tmp":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1876
    .local v1, "size":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1879
    const/16 v2, 0x400

    if-le v1, v2, :cond_1

    .line 1880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1881
    instance-of v2, p2, Landroid/os/BaseBundle;

    if-eqz v2, :cond_0

    .line 1882
    move-object v2, p2

    check-cast v2, Landroid/os/BaseBundle;

    invoke-static {p0, v2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    goto :goto_0

    .line 1883
    :cond_0
    instance-of v2, p2, Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 1884
    move-object v2, p2

    check-cast v2, Landroid/util/SparseArray;

    invoke-static {p0, v2}, Landroid/os/BaseBundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/util/SparseArray;)V

    .line 1887
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V
    .locals 11
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "recycleParcel"    # Z
    .param p3, "parcelledByNative"    # Z

    .line 410
    invoke-static {p1}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->erase()V

    .line 420
    :goto_0
    iput-boolean v2, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 421
    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 422
    return-void

    .line 425
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 430
    .local v0, "count":I
    if-gez v0, :cond_2

    .line 431
    return-void

    .line 433
    :cond_2
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 434
    .local v4, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v4, :cond_3

    .line 435
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5, v0}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v4, v5

    move-object v10, v4

    goto :goto_1

    .line 437
    :cond_3
    invoke-virtual {v4}, Landroid/util/ArrayMap;->erase()V

    .line 438
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    move-object v10, v4

    .line 444
    .end local v4    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v10, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    if-nez p3, :cond_4

    move v7, v1

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    :try_start_0
    iget-object v9, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    move-object v4, p1

    move-object v5, v10

    move v6, v0

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;IZZLjava/lang/ClassLoader;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr p2, v1

    .line 454
    iput-object v10, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 455
    if-eqz p2, :cond_5

    .line 456
    :goto_3
    invoke-static {p1}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    .line 457
    iput-object v3, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    goto :goto_5

    .line 459
    :cond_5
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_4
    iput-object v1, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 461
    :goto_5
    iput-boolean v2, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 462
    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 463
    goto :goto_6

    .line 454
    :catchall_0
    move-exception v1

    goto :goto_7

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Landroid/os/BadParcelableException;
    :try_start_1
    sget-boolean v4, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v4, :cond_7

    .line 448
    const-string v4, "Bundle"

    const-string v5, "Failed to parse Bundle, but defusing quietly"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    invoke-virtual {v10}, Landroid/util/ArrayMap;->erase()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    .end local v1    # "e":Landroid/os/BadParcelableException;
    iput-object v10, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 455
    if-eqz p2, :cond_6

    .line 456
    goto :goto_3

    .line 459
    :cond_6
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    .line 468
    :goto_6
    return-void

    .line 451
    .restart local v1    # "e":Landroid/os/BadParcelableException;
    :cond_7
    nop

    .end local v0    # "count":I
    .end local v10    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p0    # "this":Landroid/os/BaseBundle;
    .end local p1    # "parcelledData":Landroid/os/Parcel;
    .end local p2    # "recycleParcel":Z
    .end local p3    # "parcelledByNative":Z
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    .end local v1    # "e":Landroid/os/BadParcelableException;
    .restart local v0    # "count":I
    .restart local v10    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p0    # "this":Landroid/os/BaseBundle;
    .restart local p1    # "parcelledData":Landroid/os/Parcel;
    .restart local p2    # "recycleParcel":Z
    .restart local p3    # "parcelledByNative":Z
    :goto_7
    iput-object v10, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 455
    if-eqz p2, :cond_8

    .line 456
    invoke-static {p1}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    .line 457
    iput-object v3, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    goto :goto_8

    .line 459
    :cond_8
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 461
    :goto_8
    iput-boolean v2, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 462
    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 463
    throw v1
.end method

.method private static greylist-max-o isEmptyParcel(Landroid/os/Parcel;)Z
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    .line 489
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z
    .locals 1
    .param p0, "a"    # Landroid/os/BaseBundle;
    .param p1, "b"    # Landroid/os/BaseBundle;

    .line 562
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private greylist-max-o readFromParcelInner(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .line 1825
    if-ltz p2, :cond_7

    .line 1827
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1828
    iput-boolean v0, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 1830
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1831
    return-void

    .line 1832
    :cond_0
    rem-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_6

    .line 1836
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1837
    .local v1, "magic":I
    const v2, 0x4c444e42    # 5.146036E7f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    .line 1838
    .local v2, "isJavaBundle":Z
    :goto_0
    const v4, 0x4c444e44

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v3, v0

    .line 1839
    .local v3, "isNativeBundle":Z
    :goto_1
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    .line 1840
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad magic number for Bundle: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1841
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1844
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1849
    monitor-enter p0

    .line 1850
    :try_start_0
    invoke-direct {p0, p1, v0, v3}, Landroid/os/BaseBundle;->initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V

    .line 1851
    monitor-exit p0

    .line 1852
    return-void

    .line 1851
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1856
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 1857
    .local v4, "offset":I
    invoke-static {v4, p2}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1860
    .local v5, "p":Landroid/os/Parcel;
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1861
    invoke-virtual {v5, p1, v4, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1862
    invoke-virtual {v5, p1}, Landroid/os/Parcel;->adoptClassCookies(Landroid/os/Parcel;)V

    .line 1865
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1867
    iput-boolean v3, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    .line 1868
    iput-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1869
    return-void

    .line 1833
    .end local v1    # "magic":I
    .end local v2    # "isJavaBundle":Z
    .end local v3    # "isNativeBundle":Z
    .end local v4    # "offset":I
    .end local v5    # "p":Landroid/os/Parcel;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bundle length is not aligned by 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1826
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad length in parcel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o recycleParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;

    .line 493
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 496
    :cond_0
    return-void
.end method

.method public static greylist-max-o setShouldDefuse(Z)V
    .locals 0
    .param p0, "shouldDefuse"    # Z

    .line 86
    sput-boolean p0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist clear()V
    .locals 1

    .line 600
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 601
    iget-boolean v0, p0, Landroid/os/BaseBundle;->mOwnsLazyValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    invoke-static {v0}, Landroid/os/BaseBundle;->recycleParcel(Landroid/os/Parcel;)V

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BaseBundle;->mWeakParcelledData:Ljava/lang/ref/WeakReference;

    .line 605
    :cond_0
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 606
    return-void
.end method

.method public whitelist containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 657
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 658
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 673
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 674
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method blacklist get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 694
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 696
    :try_start_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadTypeParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 699
    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1484
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1486
    :try_start_0
    const-class v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadTypeParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1487
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayList<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1489
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1069
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1072
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 1113
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1114
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1115
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1116
    return p2

    .line 1119
    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1120
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 1121
    .local v6, "e":Ljava/lang/ClassCastException;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v4, "Boolean"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1122
    return p2
.end method

.method public whitelist getBooleanArray(Ljava/lang/String;)[Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1542
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1543
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1544
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1545
    return-object v1

    .line 1548
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1549
    :catch_0
    move-exception v2

    .line 1550
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1551
    return-object v1
.end method

.method greylist-max-o getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1134
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method greylist-max-o getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .line 1147
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1148
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1149
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1150
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    .line 1153
    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1154
    :catch_0
    move-exception v6

    .line 1155
    .local v6, "e":Ljava/lang/ClassCastException;
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const-string v4, "Byte"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1156
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-o getByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1565
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1566
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1567
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1568
    return-object v1

    .line 1571
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1572
    :catch_0
    move-exception v2

    .line 1573
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1574
    return-object v1
.end method

.method greylist-max-o getChar(Ljava/lang/String;)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1168
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method greylist-max-o getChar(Ljava/lang/String;C)C
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .line 1181
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1182
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1183
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1184
    return p2

    .line 1187
    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1188
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 1189
    .local v6, "e":Ljava/lang/ClassCastException;
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const-string v4, "Character"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1190
    return p2
.end method

.method greylist-max-o getCharArray(Ljava/lang/String;)[C
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1611
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1612
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1613
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1614
    return-object v1

    .line 1617
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1618
    :catch_0
    move-exception v2

    .line 1619
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "char[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1620
    return-object v1
.end method

.method greylist-max-o getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1410
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1411
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1413
    .local v0, "o":Ljava/lang/Object;
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1414
    :catch_0
    move-exception v1

    .line 1415
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "CharSequence"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1416
    const/4 v2, 0x0

    return-object v2
.end method

.method greylist-max-o getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .line 1432
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1433
    .local v0, "cs":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method greylist-max-o getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1749
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1750
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1751
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1752
    return-object v1

    .line 1755
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1756
    :catch_0
    move-exception v2

    .line 1757
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "CharSequence[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1758
    return-object v1
.end method

.method greylist-max-o getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1529
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 296
    iget-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public whitelist getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1338
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1339
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getDouble(Ljava/lang/String;D)D
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 1351
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1352
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1353
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1354
    return-wide p2

    .line 1357
    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 1358
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 1359
    .local v6, "e":Ljava/lang/ClassCastException;
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v4, "Double"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1360
    return-wide p2
.end method

.method public whitelist getDoubleArray(Ljava/lang/String;)[D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1703
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1704
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1705
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1706
    return-object v1

    .line 1709
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1710
    :catch_0
    move-exception v2

    .line 1711
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "double[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1712
    return-object v1
.end method

.method greylist-max-o getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1304
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1305
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method greylist-max-o getFloat(Ljava/lang/String;F)F
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 1317
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1318
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1319
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1320
    return p2

    .line 1323
    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1324
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 1325
    .local v6, "e":Ljava/lang/ClassCastException;
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v4, "Float"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1326
    return p2
.end method

.method greylist-max-o getFloatArray(Ljava/lang/String;)[F
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1680
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1681
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1682
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1683
    return-object v1

    .line 1686
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1687
    :catch_0
    move-exception v2

    .line 1688
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "float[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1689
    return-object v1
.end method

.method public whitelist getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1236
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getInt(Ljava/lang/String;I)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1249
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1250
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1251
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1252
    return p2

    .line 1255
    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1256
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 1257
    .local v6, "e":Ljava/lang/ClassCastException;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v4, "Integer"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1258
    return p2
.end method

.method public whitelist getIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1634
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1635
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1636
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1637
    return-object v1

    .line 1640
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1641
    :catch_0
    move-exception v2

    .line 1642
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "int[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1643
    return-object v1
.end method

.method greylist-max-o getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1503
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method blacklist getItemwiseMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 508
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 509
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1270
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1271
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLong(Ljava/lang/String;J)J
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 1283
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1284
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1285
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1286
    return-wide p2

    .line 1289
    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 1290
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 1291
    .local v6, "e":Ljava/lang/ClassCastException;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v4, "Long"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1292
    return-wide p2
.end method

.method public whitelist getLongArray(Ljava/lang/String;)[J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1657
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1658
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1659
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1660
    return-object v1

    .line 1663
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1664
    :catch_0
    move-exception v2

    .line 1665
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "long[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1666
    return-object v1
.end method

.method public greylist-max-o getPairValue()Ljava/lang/String;
    .locals 5

    .line 266
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 267
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 268
    .local v0, "size":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 269
    const-string v1, "Bundle"

    const-string/jumbo v2, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 272
    return-object v1

    .line 275
    :cond_1
    :try_start_0
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v2, v4}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadTypeParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "getPairValue()"

    const-string v4, "String"

    invoke-virtual {p0, v3, v4, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 278
    return-object v1
.end method

.method greylist-max-o getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1450
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1451
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1452
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1453
    return-object v1

    .line 1456
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1457
    :catch_0
    move-exception v2

    .line 1458
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "Serializable"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1459
    return-object v1
.end method

.method blacklist getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1477
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method greylist-max-o getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1202
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method greylist-max-o getShort(Ljava/lang/String;S)S
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .line 1215
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1216
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1217
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1218
    return p2

    .line 1221
    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1222
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 1223
    .local v6, "e":Ljava/lang/ClassCastException;
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    const-string v4, "Short"

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1224
    return p2
.end method

.method greylist-max-o getShortArray(Ljava/lang/String;)[S
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1588
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1589
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1590
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1591
    return-object v1

    .line 1594
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1595
    :catch_0
    move-exception v2

    .line 1596
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "short[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1597
    return-object v1
.end method

.method public whitelist getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1374
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1375
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1377
    .local v0, "o":Ljava/lang/Object;
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1378
    :catch_0
    move-exception v1

    .line 1379
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "String"

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1380
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1396
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public whitelist getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1726
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1727
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1728
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1729
    return-object v1

    .line 1732
    :cond_0
    :try_start_0
    move-object v2, v0

    check-cast v2, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1733
    :catch_0
    move-exception v2

    .line 1734
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v3, "String[]"

    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 1735
    return-object v1
.end method

.method greylist-max-o getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1516
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method final blacklist getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final blacklist getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 357
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/BaseBundle;->getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final varargs blacklist getValue(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 373
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 374
    .local v0, "i":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method final varargs blacklist getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 391
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 392
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1

    .line 394
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/util/function/BiFunction;

    invoke-interface {v1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 402
    nop

    .line 403
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Landroid/os/BadParcelableException;
    sget-boolean v2, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v2, :cond_0

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returning null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bundle"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    const/4 v2, 0x0

    return-object v2

    .line 400
    :cond_0
    throw v1

    .line 405
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public blacklist isDefinitelyEmpty()Z
    .locals 1

    .line 541
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v0

    return v0

    .line 544
    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 1

    .line 526
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 527
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isEmptyParcel()Z
    .locals 1

    .line 482
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-static {v0}, Landroid/os/BaseBundle;->isEmptyParcel(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isParcelled()Z
    .locals 1

    .line 475
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 740
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 741
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o kindofEquals(Landroid/os/BaseBundle;)Z
    .locals 4
    .param p1, "other"    # Landroid/os/BaseBundle;

    .line 574
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 575
    return v0

    .line 577
    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isDefinitelyEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isDefinitelyEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    return v2

    .line 580
    :cond_1
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v3

    if-eq v1, v3, :cond_2

    .line 582
    return v0

    .line 583
    :cond_2
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isParcelled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 584
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v3, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->compareData(Landroid/os/Parcel;)I

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 592
    :cond_4
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist putAll(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 719
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 720
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->unparcel()V

    .line 721
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 722
    return-void
.end method

.method greylist-max-o putAll(Landroid/util/ArrayMap;)V
    .locals 1
    .param p1, "map"    # Landroid/util/ArrayMap;

    .line 730
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 731
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 732
    return-void
.end method

.method public whitelist putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 781
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 782
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    return-void
.end method

.method public whitelist putBooleanArray(Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 949
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 950
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    return-void
.end method

.method greylist-max-o putByte(Ljava/lang/String;B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 793
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 794
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    return-void
.end method

.method greylist-max-o putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 961
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 962
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    return-void
.end method

.method greylist-max-o putChar(Ljava/lang/String;C)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 805
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 806
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    return-void
.end method

.method greylist-max-o putCharArray(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .line 985
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 986
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    return-void
.end method

.method greylist-max-o putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 889
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 890
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    return-void
.end method

.method greylist-max-o putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .line 1057
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1058
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    return-void
.end method

.method greylist-max-o putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 925
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 926
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    return-void
.end method

.method public whitelist putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 865
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 866
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    return-void
.end method

.method public whitelist putDoubleArray(Ljava/lang/String;[D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .line 1033
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1034
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    return-void
.end method

.method greylist-max-o putFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 853
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 854
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    return-void
.end method

.method greylist-max-o putFloatArray(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 1021
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1022
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    return-void
.end method

.method public whitelist putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 829
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 830
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    return-void
.end method

.method public whitelist putIntArray(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 997
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 998
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    return-void
.end method

.method greylist-max-o putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 901
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 902
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    return-void
.end method

.method public whitelist putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 841
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 842
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    return-void
.end method

.method public whitelist putLongArray(Ljava/lang/String;[J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 1009
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1010
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    return-void
.end method

.method public blacklist putObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 746
    if-nez p2, :cond_0

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 748
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 749
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 750
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 751
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 752
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 753
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 754
    :cond_3
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 755
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 756
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 757
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 758
    :cond_5
    instance-of v0, p2, [Z

    if-eqz v0, :cond_6

    .line 759
    move-object v0, p2

    check-cast v0, [Z

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    .line 760
    :cond_6
    instance-of v0, p2, [I

    if-eqz v0, :cond_7

    .line 761
    move-object v0, p2

    check-cast v0, [I

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 762
    :cond_7
    instance-of v0, p2, [J

    if-eqz v0, :cond_8

    .line 763
    move-object v0, p2

    check-cast v0, [J

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0

    .line 764
    :cond_8
    instance-of v0, p2, [D

    if-eqz v0, :cond_9

    .line 765
    move-object v0, p2

    check-cast v0, [D

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 766
    :cond_9
    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 767
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 771
    :goto_0
    return-void

    .line 769
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .line 937
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 938
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    return-void
.end method

.method greylist-max-o putShort(Ljava/lang/String;S)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 817
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 818
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    return-void
.end method

.method greylist-max-o putShortArray(Ljava/lang/String;[S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 973
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 974
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    return-void
.end method

.method public whitelist putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 877
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 878
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    return-void
.end method

.method public whitelist putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 1045
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1046
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    return-void
.end method

.method greylist-max-o putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 913
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 914
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    return-void
.end method

.method greylist-max-o readFromParcelInner(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1821
    .local v0, "length":I
    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1822
    return-void
.end method

.method public whitelist remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 709
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 710
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    return-void
.end method

.method greylist-max-o setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 289
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 290
    return-void
.end method

.method public whitelist size()I
    .locals 1

    .line 518
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 519
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/Object;
    .param p5, "e"    # Ljava/lang/RuntimeException;

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1079
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    if-eqz p2, :cond_0

    .line 1084
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1087
    :cond_0
    const-string v1, " but value was of a different type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    :goto_0
    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1091
    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bundle"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-string v1, "Attempt to cast generated internal exception:"

    invoke-static {v2, v1, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1094
    return-void
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/RuntimeException;

    .line 1097
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1098
    return-void
.end method

.method blacklist typeWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/RuntimeException;

    .line 1101
    const/4 v2, 0x0

    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/RuntimeException;)V

    .line 1102
    return-void
.end method

.method final greylist unparcel()V
    .locals 1

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 306
    return-void
.end method

.method final blacklist unparcel(Z)V
    .locals 5
    .param p1, "itemwise"    # Z

    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 312
    .local v0, "source":Landroid/os/Parcel;
    if-eqz v0, :cond_0

    .line 313
    iget-boolean v1, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/os/BaseBundle;->initializeFromParcelLocked(Landroid/os/Parcel;ZZ)V

    .line 321
    :cond_0
    if-eqz p1, :cond_1

    .line 328
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 330
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/BaseBundle;->getValueAt(ILjava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v0    # "source":Landroid/os/Parcel;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    monitor-exit p0

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method greylist-max-o writeToParcelInner(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1769
    invoke-virtual {p1}, Landroid/os/Parcel;->hasReadWriteHelper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1770
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->unparcel(Z)V

    .line 1775
    :cond_0
    monitor-enter p0

    .line 1778
    :try_start_0
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    const v1, 0x4c444e42    # 5.146036E7f

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1779
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v3, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne v0, v3, :cond_1

    .line 1780
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1782
    :cond_1
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    .line 1783
    .local v0, "length":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1784
    iget-boolean v3, p0, Landroid/os/BaseBundle;->mParcelledByNative:Z

    if-eqz v3, :cond_2

    const v1, 0x4c444e44

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    iget-object v1, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1787
    .end local v0    # "length":I
    :goto_0
    monitor-exit p0

    return-void

    .line 1789
    :cond_3
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 1790
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1793
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-gtz v3, :cond_4

    goto :goto_1

    .line 1797
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 1798
    .local v2, "lengthPos":I
    const/4 v3, -0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1801
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1802
    .local v1, "startPos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1803
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 1806
    .local v3, "endPos":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1807
    sub-int v4, v3, v1

    .line 1808
    .local v4, "length":I
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1809
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1810
    return-void

    .line 1794
    .end local v1    # "startPos":I
    .end local v2    # "lengthPos":I
    .end local v3    # "endPos":I
    .end local v4    # "length":I
    :cond_5
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1795
    return-void

    .line 1790
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
