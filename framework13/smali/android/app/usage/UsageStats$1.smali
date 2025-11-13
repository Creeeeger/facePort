.class Landroid/app/usage/UsageStats$1;
.super Ljava/lang/Object;
.source "UsageStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist readBundleToEventMap(Landroid/os/Bundle;Landroid/util/ArrayMap;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 752
    .local p2, "eventMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 753
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 754
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 755
    .local v2, "event":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "event":I
    goto :goto_0

    .line 758
    :cond_0
    return-void
.end method

.method private blacklist readSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "arr"    # Landroid/util/SparseIntArray;

    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 744
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 746
    .local v2, "key":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 747
    .local v3, "value":I
    invoke-virtual {p2, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 744
    .end local v2    # "key":I
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/UsageStats;
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 704
    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 705
    .local v0, "stats":Landroid/app/usage/UsageStats;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 706
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 707
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 709
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 712
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 713
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 716
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    .line 717
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 718
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 719
    .local v1, "allCounts":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 720
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 721
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 722
    .local v3, "action":Ljava/lang/String;
    iget-object v4, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 723
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 724
    .local v4, "newCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v5, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .end local v4    # "newCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 727
    .local v4, "currentCounts":Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 728
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 729
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 730
    .local v7, "value":I
    if-lez v7, :cond_1

    .line 731
    iget-object v8, v0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":I
    :cond_1
    goto :goto_1

    .line 735
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "currentCounts":Landroid/os/Bundle;
    :cond_2
    goto :goto_0

    .line 737
    :cond_3
    iget-object v2, v0, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v2}, Landroid/app/usage/UsageStats$1;->readSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, v0, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v3}, Landroid/app/usage/UsageStats$1;->readBundleToEventMap(Landroid/os/Bundle;Landroid/util/ArrayMap;)V

    .line 739
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 701
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/UsageStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/usage/UsageStats;
    .locals 1
    .param p1, "size"    # I

    .line 762
    new-array v0, p1, [Landroid/app/usage/UsageStats;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 701
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageStats$1;->newArray(I)[Landroid/app/usage/UsageStats;

    move-result-object p1

    return-object p1
.end method
