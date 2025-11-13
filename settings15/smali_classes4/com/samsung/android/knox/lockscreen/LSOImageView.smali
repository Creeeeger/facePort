.class public Lcom/samsung/android/knox/lockscreen/LSOImageView;
.super Landroid/widget/ImageView;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemImage;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getMaxImageSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getMaxImageSize(Landroid/content/Context;)I

    move-result p1

    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v1

    const-string v2, "android:maxWidth"

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    const-string v2, "android:maxHeight"

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    const/16 v1, 0x80

    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getMaxBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    const/16 p1, 0x200

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method
