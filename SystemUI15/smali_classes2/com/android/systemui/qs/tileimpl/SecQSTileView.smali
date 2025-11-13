.class public Lcom/android/systemui/qs/tileimpl/SecQSTileView;
.super Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIsLargeView:Z

.field public final mIsNonBGTile:Z

.field public final mLabel:Landroid/widget/TextView;

.field public final mLabelContainer:Landroid/view/ViewGroup;

.field public final mMaxLabelLines:I

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mSecLabelColor:Landroid/content/res/ColorStateList;

.field public final mSecSubLabelColor:Landroid/content/res/ColorStateList;

.field public final mSecondLine:Landroid/widget/TextView;

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;-><init>(Landroid/content/Context;ZZZZLcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;-><init>(Landroid/content/Context;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;-><init>(Landroid/content/Context;ZZZZLcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZZLcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V
    .locals 4

    invoke-direct {p0, p1, p2, p6}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;-><init>(Landroid/content/Context;ZLcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mMaxLabelLines:I

    iput-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mIsLargeView:Z

    iput-boolean p5, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mIsNonBGTile:Z

    sget-object p4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p5, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p4, p5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object p4, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    const/4 p4, 0x0

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    const/4 p5, 0x1

    invoke-virtual {p0, p5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p6

    invoke-virtual {p0, p6}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    const v0, 0x7f0d03b8

    invoke-virtual {p6, v0, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/view/ViewGroup;

    iput-object p6, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p6, p4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p6, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p6, p4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 p6, 0x8

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0d2d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setBreakStrategy(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0100

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    xor-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz p3, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07062b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v0, 0x7f081075

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07062c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->updateLayout$4$1()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0810b4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-array p1, p6, [F

    iget-object p6, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const v0, 0x7f0b00f5

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p6

    int-to-float p6, p6

    invoke-static {p1, p6}, Ljava/util/Arrays;->fill([FF)V

    new-instance p6, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v0, 0x0

    invoke-direct {p6, p1, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, p6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p6, -0x1

    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p6, 0x7f0605d7

    invoke-virtual {p1, p6}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecLabelColor:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p6, 0x7f0605de

    invoke-virtual {p1, p6}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecSubLabelColor:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_2

    invoke-virtual {p0, p4, p4, p4, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->updateTouchTargetArea()V

    const/16 p1, 0x31

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :goto_1
    invoke-virtual {p0, p5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {p0, p5}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public final getDetailY()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v1

    return p0
.end method

.method public final getLabel()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getLabelContainer()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mState:I

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecLabelColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mState:I

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecSubLabelColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCollapsedView:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final init(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda3;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mIsLargeView:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->init(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda3;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mIsLargeView:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->updateLayout$4$1()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->updateTouchTargetArea()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-boolean v1, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCollapsedView:Z

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    array-length v5, v1

    move v6, v2

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_8

    aget-object v8, v1, v6

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    array-length v11, v8

    move v12, v2

    :goto_1
    const/4 v13, 0x2

    if-ge v12, v11, :cond_6

    aget-object v14, v8, v12

    invoke-virtual {v3, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    int-to-float v2, v4

    cmpl-float v15, v15, v2

    if-lez v15, :cond_1

    iget v1, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mMaxLabelLines:I

    add-int/lit8 v7, v1, 0x1

    goto :goto_4

    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_2
    move-object v15, v14

    :goto_2
    invoke-virtual {v3, v15}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    cmpg-float v2, v15, v2

    if-gtz v2, :cond_4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    if-le v7, v13, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_7

    add-int/lit8 v7, v7, 0x1

    if-le v7, v13, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    :goto_4
    iget v1, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mMaxLabelLines:I

    if-le v7, v1, :cond_9

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mMaxLabelLines:I

    add-int/lit8 v1, v1, -0x1

    if-le v7, v1, :cond_b

    :cond_a
    :goto_5
    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_b
    return-void
.end method

.method public final setShowLabels(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/SecQSTileView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateLayout$4$1()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mIsLargeView:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mIsNonBGTile:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNoBGTileIconSize(Landroid/content/Context;)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNoBGTileIconStartMargin(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v4, v2

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNoBGTileLabelStartMargin(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNoBGTileIconStartMargin(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v6, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getNoBGTileLabelStartMargin(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v4, v3, v5, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconStartMargin(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v4, v2

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTileLabelStartMargin(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v5, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconStartMargin(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v6, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v5}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getTileLabelStartMargin(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v4, v3, v5, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public updateTouchTargetArea()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mIsLargeView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTouchIconSize(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTouchIconSize(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getLabelHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
