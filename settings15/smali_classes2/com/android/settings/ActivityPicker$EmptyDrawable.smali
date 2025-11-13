.class public final Lcom/android/settings/ActivityPicker$EmptyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHeight:I

.field public final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p1, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mWidth:I

    iput p2, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mHeight:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mHeight:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mWidth:I

    return p0
.end method

.method public final getMinimumHeight()I
    .locals 0

    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mHeight:I

    return p0
.end method

.method public final getMinimumWidth()I
    .locals 0

    iget p0, p0, Lcom/android/settings/ActivityPicker$EmptyDrawable;->mWidth:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
