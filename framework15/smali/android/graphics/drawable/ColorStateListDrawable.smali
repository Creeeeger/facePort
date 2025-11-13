.class public Landroid/graphics/drawable/ColorStateListDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorStateListDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;
    }
.end annotation


# instance fields
.field private blacklist mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private blacklist mMutated:Z

.field private blacklist mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    new-instance v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->initializeColorDrawable()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    new-instance v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->initializeColorDrawable()V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    iput-object p1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->initializeColorDrawable()V

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;Landroid/graphics/drawable/ColorStateListDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorStateListDrawable;-><init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;)V

    return-void
.end method

.method private blacklist initializeColorDrawable()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    sget-object v1, Landroid/graphics/drawable/ColorStateListDrawable;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->canApplyTheme()Z

    move-result v0

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

.method public whitelist clearAlpha()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    const/4 v1, -0x1

    iput v1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public blacklist clearMutated()V
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public whitelist getAlpha()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 4

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget v1, v1, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getChangingConfigurations()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->getChangingConfigurations()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    return-object v0
.end method

.method public whitelist getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public whitelist isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;-><init>(Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected whitelist onStateChange([I)Z
    .locals 5

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v2, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget v2, v2, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const v2, 0xffffff

    and-int/2addr v2, v0

    iget-object v3, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iget v3, v3, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    const/16 v4, 0xff

    invoke-static {v3, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int v0, v2, v1

    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setState([I)Z

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setState([I)Z

    move-result v1

    return v1

    :cond_2
    return v1
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public whitelist setColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mState:Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;

    iput-object p1, v0, Landroid/graphics/drawable/ColorStateListDrawable$ColorStateListDrawableState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/ColorStateListDrawable;->onStateChange([I)Z

    return-void
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
