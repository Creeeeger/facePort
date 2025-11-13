.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawables"
.end annotation


# static fields
.field static final greylist-max-o BOTTOM:I = 0x3

.field static final greylist-max-o DRAWABLE_LEFT:I = 0x1

.field static final greylist-max-o DRAWABLE_NONE:I = -0x1

.field static final greylist-max-o DRAWABLE_RIGHT:I = 0x0

.field static final greylist-max-o LEFT:I = 0x0

.field static final greylist-max-o RIGHT:I = 0x2

.field static final greylist-max-o TOP:I = 0x1


# instance fields
.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field final greylist-max-o mCompoundRect:Landroid/graphics/Rect;

.field greylist-max-o mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableError:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableHeightEnd:I

.field greylist-max-o mDrawableHeightError:I

.field greylist-max-o mDrawableHeightLeft:I

.field greylist-max-o mDrawableHeightRight:I

.field greylist-max-o mDrawableHeightStart:I

.field greylist-max-o mDrawableHeightTemp:I

.field greylist-max-o mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawablePadding:I

.field greylist-max-o mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableSaved:I

.field greylist-max-o mDrawableSizeBottom:I

.field greylist-max-o mDrawableSizeEnd:I

.field greylist-max-o mDrawableSizeError:I

.field greylist-max-o mDrawableSizeLeft:I

.field greylist-max-o mDrawableSizeRight:I

.field greylist-max-o mDrawableSizeStart:I

.field greylist-max-o mDrawableSizeTemp:I

.field greylist-max-o mDrawableSizeTop:I

.field greylist-max-o mDrawableStart:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field greylist-max-o mDrawableWidthBottom:I

.field greylist-max-o mDrawableWidthTop:I

.field greylist-max-o mHasTint:Z

.field greylist-max-o mHasTintMode:Z

.field greylist-max-o mIsRtlCompatibilityMode:Z

.field greylist-max-o mOverride:Z

.field final greylist-max-o mShowing:[Landroid/graphics/drawable/Drawable;

.field greylist-max-o mTintList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    iput-boolean v2, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    return-void
.end method

.method private greylist-max-o applyErrorDrawableIfNeeded(I)V
    .locals 4

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v2

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v3, v0, v1

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    nop

    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_1

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v2, v0, v1

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSaved:I

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iput-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableTemp:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeTemp:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightTemp:I

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    nop

    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o hasMetadata()Z
    .locals 1

    iget v0, p0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTintMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/TextView$Drawables;->mHasTint:Z

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

.method public greylist-max-o resolveWithLayoutDirection(I)Z
    .locals 6

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v1

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mIsRtlCompatibilityMode:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v1

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    :cond_0
    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v1

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    goto :goto_0

    :pswitch_0
    iget-boolean v4, p0, Landroid/widget/TextView$Drawables;->mOverride:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightStart:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/TextView$Drawables;->mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v1

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    iget v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightEnd:I

    iput v4, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView$Drawables;->applyErrorDrawableIfNeeded(I)V

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    if-ne v4, v0, :cond_3

    iget-object v4, p0, Landroid/widget/TextView$Drawables;->mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v4, v3

    if-eq v3, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/widget/TextView$Drawables;->mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableHeightError:I

    iput v0, p0, Landroid/widget/TextView$Drawables;->mDrawableSizeError:I

    :goto_0
    return-void
.end method
