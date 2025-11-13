.class public final Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public defaultCircle:Landroid/graphics/drawable/Drawable;

.field public final imageView:Landroid/widget/ImageView;

.field public isActive:Z

.field public selectCircle:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->selectCircle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p2, p0, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SeslIndicator$PageIndicatorMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
