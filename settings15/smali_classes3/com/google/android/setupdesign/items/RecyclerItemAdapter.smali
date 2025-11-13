.class public final Lcom/google/android/setupdesign/items/RecyclerItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final applyPartnerHeavyThemeResource:Z

.field public final itemHierarchy:Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

.field public listener:Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;

.field public final useFullDynamicColor:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;ZZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->applyPartnerHeavyThemeResource:Z

    iput-boolean p3, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->useFullDynamicColor:Z

    iget-object p1, p1, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;->observers:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    iget-boolean p0, p0, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;->visible:Z

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;->id:I

    if-lez p0, :cond_0

    int-to-long p0, p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;->layoutRes:I

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 18

    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/setupdesign/items/ItemViewHolder;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v1, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;->enabled:Z

    iput-boolean v2, v0, Lcom/google/android/setupdesign/items/ItemViewHolder;->isEnabled:Z

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    iput-object v1, v0, Lcom/google/android/setupdesign/items/ItemViewHolder;->item:Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0f58

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0f55

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;->summary:Ljava/lang/CharSequence;

    const/16 v6, 0x8

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a0f54

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget v4, v1, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;->id:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a0f60

    const/4 v7, 0x0

    if-eq v4, v5, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    sget-object v8, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v5, v8}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v5

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v9

    sget-object v10, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v9, v10}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v9

    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-nez v5, :cond_1

    if-eqz v9, :cond_5

    :cond_1
    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    invoke-virtual {v5, v4, v8, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v5

    float-to-int v5, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    :goto_1
    if-eqz v9, :cond_3

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v8

    invoke-virtual {v8, v4, v10, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    if-ne v5, v8, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    if-eq v4, v8, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v5, v8, v4, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    invoke-static {v0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    new-instance v5, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    sget-object v11, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_TITLE_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v12, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_TITLE_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v17

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v17}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    invoke-static {v4, v5}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-ne v5, v6, :cond_8

    instance-of v5, v0, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_8

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_8
    invoke-static {v4}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerHeavyThemeResource(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    new-instance v5, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;

    sget-object v11, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_SUMMARY_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v12, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_SUMMARY_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v15, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_SUMMARY_MARGIN_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->getLayoutGravity(Landroid/content/Context;)I

    move-result v17

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v17}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;-><init>(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;I)V

    invoke-static {v4, v5}, Lcom/google/android/setupdesign/util/TextViewPartnerStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;Lcom/google/android/setupdesign/util/TextViewPartnerStyler$TextPartnerConfigs;)V

    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v5, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v5

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    :goto_5
    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v6

    sget-object v8, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v6, v8}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v6

    invoke-virtual {v6, v4, v8, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v6

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    int-to-float v6, v6

    :goto_6
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-nez v8, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_d

    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    float-to-int v6, v6

    invoke-virtual {v0, v8, v5, v9, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_d
    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    sget-object v6, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_MIN_HEIGHT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v5, v6}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v4}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_e
    :goto_7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v3, v1, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;->enabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v1, v1, Lcom/android/settings/sim/ChooseSimActivity$DisableableItem;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p1, p2, p1, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/google/android/setupdesign/items/ItemViewHolder;

    invoke-direct {v1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "noBackground"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/google/android/setupdesign/R$styleable;->SudRecyclerItemAdapter:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_0

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->applyPartnerHeavyThemeResource:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->useFullDynamicColor:Z

    if-nez v5, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v5, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v0

    aput-object v3, v4, v2

    new-instance v0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$PatchedLayerDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot resolve required attributes. selectableItemBackground="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " background="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RecyclerItemAdapter"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    new-instance p1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;

    invoke-direct {p1, p0, v1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;-><init>(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;Lcom/google/android/setupdesign/items/ItemViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
