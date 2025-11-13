.class public Lcom/samsung/android/location/SemLocationBatchingResult;
.super Ljava/lang/Object;
.source "SemLocationBatchingResult.java"


# instance fields
.field private blacklist isFlushed:Z

.field private blacklist locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static whitelist extractResult(Landroid/content/Intent;)Lcom/samsung/android/location/SemLocationBatchingResult;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/samsung/android/location/SemLocationBatchingResult;

    invoke-direct {v0}, Lcom/samsung/android/location/SemLocationBatchingResult;-><init>()V

    .line 48
    .local v0, "result":Lcom/samsung/android/location/SemLocationBatchingResult;
    const-string v1, "batchedlocation"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 49
    .local v1, "parcelables":[Landroid/os/Parcelable;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/location/SemLocationBatchingResult;->locations:Ljava/util/List;

    .line 50
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 51
    .local v5, "p":Landroid/os/Parcelable;
    iget-object v6, v0, Lcom/samsung/android/location/SemLocationBatchingResult;->locations:Ljava/util/List;

    move-object v7, v5

    check-cast v7, Landroid/location/Location;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v5    # "p":Landroid/os/Parcelable;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    :cond_1
    const-string v2, "flushcompleted"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/location/SemLocationBatchingResult;->isFlushed:Z

    .line 55
    return-object v0
.end method


# virtual methods
.method public whitelist getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/samsung/android/location/SemLocationBatchingResult;->locations:Ljava/util/List;

    return-object v0
.end method

.method public whitelist isFlushed()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/location/SemLocationBatchingResult;->isFlushed:Z

    return v0
.end method
