.class Lcom/samsung/android/share/SemShareImageCache$1;
.super Landroid/util/LruCache;
.source "SemShareImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SemShareImageCache;->init(Lcom/samsung/android/share/SemShareImageCache$SemShareImageCacheParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareImageCache;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/share/SemShareImageCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SemShareImageCache;
    .param p2, "maxSize"    # I

    .line 113
    iput-object p1, p0, Lcom/samsung/android/share/SemShareImageCache$1;->this$0:Lcom/samsung/android/share/SemShareImageCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 113
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/share/SemShareImageCache$1;->entryRemoved(ZLjava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected blacklist entryRemoved(ZLjava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p4, "newValue"    # Landroid/graphics/drawable/BitmapDrawable;

    .line 121
    instance-of v0, p3, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;

    if-eqz v0, :cond_0

    .line 124
    move-object v0, p3

    check-cast v0, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/share/SemShareRecyclingBitmapDrawable;->setIsCached(Z)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/share/SemShareImageCache$1;->this$0:Lcom/samsung/android/share/SemShareImageCache;

    invoke-static {v0}, Lcom/samsung/android/share/SemShareImageCache;->-$$Nest$fgetmReusableBitmaps(Lcom/samsung/android/share/SemShareImageCache;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    :goto_0
    return-void
.end method

.method protected bridge synthetic whitelist sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 113
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/share/SemShareImageCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I

    move-result p1

    return p1
.end method

.method protected blacklist sizeOf(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/drawable/BitmapDrawable;

    .line 140
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/share/SemShareImageCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    .line 141
    .local v0, "bitmapSize":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method
