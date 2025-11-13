.class public final Lcom/android/launcher3/icons/FastBitmapDrawable$1;
.super Landroid/util/FloatProperty;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iget p0, p1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    iput p2, p1, Lcom/android/launcher3/icons/FastBitmapDrawable;->mScale:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
