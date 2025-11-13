.class Landroid/widget/RemoteViews$BitmapCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapCache"
.end annotation


# instance fields
.field blacklist mBitmapHashes:Landroid/util/SparseIntArray;

.field greylist-max-o mBitmapMemory:I

.field greylist-max-r mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 1783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 1785
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    .line 1786
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1789
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 1790
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    .line 1791
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1792
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 1793
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 1794
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1791
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1797
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public greylist-max-o getBitmapForId(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # I

    .line 1821
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1824
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 1822
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getBitmapId(Landroid/graphics/Bitmap;)I
    .locals 5
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 1800
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1801
    return v0

    .line 1803
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 1804
    .local v1, "hash":I
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1805
    .local v2, "hashId":I
    if-eq v2, v0, :cond_1

    .line 1806
    return v2

    .line 1808
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1809
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1811
    :cond_2
    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapHashes:Landroid/util/SparseIntArray;

    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1813
    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1814
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public greylist-max-o getBitmapMemory()I
    .locals 4

    .line 1832
    iget v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    if-gez v0, :cond_0

    .line 1833
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1834
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1835
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1836
    iget v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1835
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1839
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    iget v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    return v0
.end method

.method public greylist-max-o writeBitmapsToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1828
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1829
    return-void
.end method
