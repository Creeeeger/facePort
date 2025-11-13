.class public Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;
.super Ljava/lang/Object;
.source "SemSiopManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/os/SemSiopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemSiopLimiter"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mLimitations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mLimiterType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 430
    new-instance v0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter$1;

    invoke-direct {v0}, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(I)V
    .locals 1
    .param p1, "limiterType"    # I

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput p1, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimiterType:I

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimitations:Ljava/util/HashMap;

    .line 399
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimiterType:I

    .line 403
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimitations:Ljava/util/HashMap;

    .line 404
    return-void
.end method


# virtual methods
.method public blacklist addLimitation(II)V
    .locals 3
    .param p1, "temperature"    # I
    .param p2, "limitationValue"    # I

    .line 411
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimitations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 412
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLimitations()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimitations:Ljava/util/HashMap;

    return-object v0
.end method

.method public blacklist getLimiterType()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimiterType:I

    return v0
.end method

.method public blacklist makeAscendingOrder()V
    .locals 6

    .line 417
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimitations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 418
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimitations:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 419
    .local v0, "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimitations:Ljava/util/HashMap;

    .line 420
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 421
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimitations:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 424
    .end local v0    # "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 449
    iget v0, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimiterType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget-object v0, p0, Lcom/samsung/android/os/SemSiopManager$SemSiopLimiter;->mLimitations:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 451
    return-void
.end method
