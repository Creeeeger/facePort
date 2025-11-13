.class final Landroid/graphics/drawable/InsetDrawable$InsetState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "InsetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InsetState"
.end annotation


# instance fields
.field greylist-max-o mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field greylist-max-o mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field greylist-max-o mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field greylist-max-o mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

.field private greylist-max-o mThemeAttrs:[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmThemeAttrs(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I
    .locals 0

    iget-object p0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmThemeAttrs(Landroid/graphics/drawable/InsetDrawable$InsetState;[I)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget-object v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->scaleFromDensity(II)V

    return-void
.end method


# virtual methods
.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez v0, :cond_0

    const/16 v1, 0xa0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget v2, p0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mDensity:I

    if-eq v1, v2, :cond_1

    new-instance v2, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v2, p0, p1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    goto :goto_2

    :cond_2
    move-object v2, p0

    :goto_2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v2, p1, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable-IA;)V

    return-object v0
.end method

.method greylist-max-o onDensityChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->onDensityChanged(II)V

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable$InsetState;->applyDensityScaling(II)V

    return-void
.end method
