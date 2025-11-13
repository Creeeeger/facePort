.class public final Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAlpha:I

.field public mBaseHeight:I

.field public mBaseWidth:I

.field public mChangingConfigurations:I

.field public mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

.field public final mDarkColor:I

.field public mDarkIntensity:F

.field public final mHorizontalFlip:Z

.field public mIsHardwareBitmap:Z

.field public mLastDrawnIcon:Landroid/graphics/Bitmap;

.field public mLastDrawnShadow:Landroid/graphics/Bitmap;

.field public final mLightColor:I

.field public final mOvalBackgroundColor:Landroid/graphics/Color;

.field public mRotateDegrees:F

.field public mShadowColor:I

.field public mShadowOffsetX:I

.field public mShadowOffsetY:I

.field public mShadowSize:I

.field public final mSupportsAnimation:Z

.field public mTranslationX:F

.field public mTranslationY:F


# direct methods
.method public constructor <init>(IIZZLandroid/graphics/Color;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    iput p2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mDarkColor:I

    iput-boolean p3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    iput-boolean p4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    iput-object p5, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    return-void
.end method


# virtual methods
.method public final canApplyTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getChangingConfigurations()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;->mChangingConfigurations:I

    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable$ShadowDrawableState;)V

    return-object v0
.end method
