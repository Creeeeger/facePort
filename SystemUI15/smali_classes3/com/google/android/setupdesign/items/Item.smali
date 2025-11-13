.class public Lcom/google/android/setupdesign/items/Item;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final contentDescription:Ljava/lang/CharSequence;

.field public final enabled:Z

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public iconGravity:I

.field public final iconTint:I

.field public final layoutRes:I

.field public final summary:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;

.field public final visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getDefaultLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    const/16 v2, 0x10

    iput v2, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    sget-object v3, Lcom/google/android/setupdesign/R$styleable;->SudItem:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/setupdesign/items/Item;->contentDescription:Ljava/lang/CharSequence;

    const/4 p2, 0x2

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/Item;->getDefaultLayoutResource()I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/Item;->visible:Z

    return p0
.end method

.method public getDefaultLayoutResource()I
    .locals 0

    const p0, 0x7f0d04fc

    return p0
.end method

.method public final getLayoutResource()I
    .locals 0

    iget p0, p0, Lcom/google/android/setupdesign/items/Item;->layoutRes:I

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/items/Item;->summary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/Item;->enabled:Z

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0a0cb2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/setupdesign/items/Item;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0caf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/setupdesign/items/Item;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/setupdesign/items/Item;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a0cae

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/setupdesign/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    const v8, 0x7f0a0cad

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/widget/ImageView;->setImageState([IZ)V

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v5, v0, Lcom/google/android/setupdesign/items/Item;->iconTint:I

    if-eqz v5, :cond_1

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v8, v5, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v8, :cond_2

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v0, Lcom/google/android/setupdesign/items/Item;->iconGravity:I

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget v4, v0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->id:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    instance-of v0, v0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    if-nez v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    const v4, 0x7f0a0cb9

    if-eq v0, v4, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/google/android/setupdesign/util/LayoutStyler;->applyPartnerCustomizationLayoutPaddingStyle(Landroid/view/View;)V

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    sget-object v10, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_TITLE_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v11, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_TITLE_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v16

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v16}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    invoke-static {v0, v2}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_7

    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_7
    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_SUMMARY_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_SUMMARY_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v10, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_SUMMARY_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v12

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    invoke-static {v0, v2}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v2

    goto :goto_5

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    :goto_5
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v3, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v3

    goto :goto_6

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-nez v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_c

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    float-to-int v3, v3

    invoke-virtual {v1, v5, v2, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_c
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_d
    :goto_7
    return-void
.end method
