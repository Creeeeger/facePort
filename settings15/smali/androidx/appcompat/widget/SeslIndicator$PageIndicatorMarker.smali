.class public final Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public defaultCircle:Landroid/graphics/drawable/Drawable;

.field public final imageView:Landroid/widget/ImageView;

.field public isActive:Z

.field public selectCircle:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->selectCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->imageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final setActive(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->imageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->selectCircle:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->defaultCircle:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    iput-boolean p1, p0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->isActive:Z

    return-void
.end method
