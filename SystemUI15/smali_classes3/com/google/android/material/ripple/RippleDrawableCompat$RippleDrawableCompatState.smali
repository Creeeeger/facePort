.class public final Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public shouldDrawDelegate:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iget-object v0, p1, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    invoke-virtual {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iput-object v0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-boolean p1, p1, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    iput-boolean p1, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/MaterialShapeDrawable;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/google/android/material/ripple/RippleDrawableCompat;

    new-instance v1, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    invoke-direct {v1, p0}, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;-><init>(Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;Lcom/google/android/material/ripple/RippleDrawableCompat$1;)V

    return-object v0
.end method
