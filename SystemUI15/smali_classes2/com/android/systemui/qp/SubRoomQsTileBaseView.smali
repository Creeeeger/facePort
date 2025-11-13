.class public final Lcom/android/systemui/qp/SubRoomQsTileBaseView;
.super Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCircleColor:I

.field public mColorActive:I

.field public mColorDisabled:I

.field public mColorInactive:I

.field public final mQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field public mRipple:Landroid/graphics/drawable/RippleDrawable;

.field public mState:Lcom/android/systemui/plugins/qs/QSTile$State;

.field public mTileBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Z)V
    .locals 3

    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;-><init>(Landroid/content/Context;ZLcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07163d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p3, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p2, v0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p3, :cond_0

    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    const p3, 0x7f060692

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast p2, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    :cond_0
    new-instance p2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p2, 0x7f0609e2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorActive:I

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p2, 0x7f0609e1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorDisabled:I

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p2, 0x7f0609e0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorInactive:I

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->updateSubscreenTileStroke()V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iget-object p2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final getTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iput-object p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const-string v2, "Invalid state "

    const-string v3, "SubRoomQsTileBaseView"

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorActive:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorDisabled:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorInactive:I

    :goto_0
    iget v2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mCircleColor:I

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mQSIconViewImpl:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    iput v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mCircleColor:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f060692

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->updateSubscreenTileStroke()V

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v0, v1, :cond_5

    const v0, 0x7f0609df

    goto :goto_1

    :cond_5
    const v0, 0x7f0609de

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iget-object v2, v2, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    const-string v3, ","

    if-nez v2, :cond_8

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne p1, v1, :cond_7

    const p1, 0x7f130081

    goto :goto_3

    :cond_7
    const p1, 0x7f130080

    :goto_3
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f0609e2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorActive:I

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f0609e1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorDisabled:I

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f0609e0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mColorInactive:I

    iget-object p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    :cond_0
    return-void
.end method

.method public final setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object p0, p0, Lcom/android/systemui/qp/SubRoomQsTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v2, p1, v1

    sub-int v3, v0, v1

    add-int/2addr p1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v3, p1, v0}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final updateSubscreenTileStroke()V
    .locals 4

    const-string v0, "SubRoomQsTileBaseView"

    const-string/jumbo v1, "updateSubscreenTileStroke"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07164b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0609ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
