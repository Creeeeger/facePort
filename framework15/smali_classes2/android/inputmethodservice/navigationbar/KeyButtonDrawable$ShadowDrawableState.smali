.class Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "KeyButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowDrawableState"
.end annotation


# instance fields
.field blacklist mAlpha:I

.field blacklist mBaseHeight:I

.field blacklist mBaseWidth:I

.field blacklist mChangingConfigurations:I

.field blacklist mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

.field final blacklist mDarkColor:I

.field blacklist mDarkIntensity:F

.field blacklist mHorizontalFlip:Z

.field blacklist mIsHardwareBitmap:Z

.field blacklist mLastDrawnIcon:Landroid/graphics/Bitmap;

.field blacklist mLastDrawnShadow:Landroid/graphics/Bitmap;

.field final blacklist mLightColor:I

.field final blacklist mOvalBackgroundColor:Landroid/graphics/Color;

.field blacklist mRotateDegrees:F

.field blacklist mShadowColor:I

.field blacklist mShadowOffsetX:I

.field blacklist mShadowOffsetY:I

.field blacklist mShadowSize:I

.field final blacklist mSupportsAnimation:Z

.field blacklist mTranslationX:F

.field blacklist mTranslationY:F


# direct methods
.method constructor blacklist <init>(IIZZLandroid/graphics/Color;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    iput p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkColor:I

    iput-boolean p3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    const/16 v0, 0xff

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    iput-boolean p4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    iput-object p5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    return-void
.end method


# virtual methods
.method public whitelist canApplyTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChangingConfigurations:I

    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable-IA;)V

    return-object v0
.end method
