.class final Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ColorStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ColorStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorStateListDrawableState"
.end annotation


# instance fields
.field blacklist mAlpha:I

.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field blacklist mChangingConfigurations:I

.field blacklist mColor:Landroid/content/res/ColorStateList;

.field blacklist mTint:Landroid/content/res/ColorStateList;


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    iget-object v0, p1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget v0, p1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    iget-object v0, p1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iget v0, p1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 3

    iget v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v2

    :cond_1
    or-int/2addr v0, v2

    return v0
.end method

.method public blacklist hasFocusStateSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorStateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/ColorStateListDrawable;-><init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;Landroid/graphics/drawable/ColorStateListDrawable-IA;)V

    return-object v0
.end method
