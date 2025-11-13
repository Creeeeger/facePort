.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mInvisibleDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mCloneDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/android/settingslib/graph/SignalDrawable;

    if-nez v0, :cond_1

    const-string v0, "QSTileImpl"

    const-string v1, "DrawableIcon: drawable has null ConstantState and is not a SignalDrawable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mCloneDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x7f070e32

    invoke-static {p2, v1, v0}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result p2

    new-instance v0, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method


# virtual methods
.method public final getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mInvisibleDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "DrawableIcon"

    return-object p0
.end method
