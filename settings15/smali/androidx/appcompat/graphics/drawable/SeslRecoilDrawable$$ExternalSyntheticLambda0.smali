.class public final synthetic Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    sget-object p1, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->PRESS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->getAnimatingTintColor()I

    move-result p1

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setTint(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    return-void
.end method
