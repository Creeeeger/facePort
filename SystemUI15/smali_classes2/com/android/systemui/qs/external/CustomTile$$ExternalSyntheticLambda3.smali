.class public final synthetic Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/external/CustomTile;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/external/CustomTile;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda3;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/qs/external/CustomTile;->mIsSecCustomTile:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/qs/external/CustomTile;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget-object v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f070e32

    invoke-static {v3, v4, v1}, Lcom/android/keyguard/SecurityUtils$$ExternalSyntheticOutline0;->m(Landroid/content/Context;IF)F

    move-result v1

    new-instance v3, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v3, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;->mCloneDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    iget-object p0, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-object v1
.end method
