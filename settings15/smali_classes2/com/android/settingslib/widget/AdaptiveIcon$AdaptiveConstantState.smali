.class Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mColor:I

.field public mContext:Landroid/content/Context;

.field public mDrawable:Landroid/graphics/drawable/Drawable;


# virtual methods
.method public final getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/android/settingslib/widget/AdaptiveIcon;

    iget-object v1, p0, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/AdaptiveIcon;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iget p0, p0, Lcom/android/settingslib/widget/AdaptiveIcon$AdaptiveConstantState;->mColor:I

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    return-object v0
.end method
