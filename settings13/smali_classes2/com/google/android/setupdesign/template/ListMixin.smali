.class public Lcom/google/android/setupdesign/template/ListMixin;
.super Ljava/lang/Object;
.source "ListMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field private defaultDivider:Landroid/graphics/drawable/Drawable;

.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerInsetEnd:I

.field private dividerInsetStart:I

.field private listView:Landroid/widget/ListView;

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ListMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 60
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudListMixin:[I

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 64
    sget p3, Lcom/google/android/setupdesign/R$styleable;->SudListMixin_android_entries:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 66
    new-instance v1, Lcom/google/android/setupdesign/items/ItemInflater;

    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/items/ItemInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Lcom/google/android/setupdesign/items/SimpleInflater;->inflate(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/setupdesign/items/ItemGroup;

    .line 67
    new-instance v1, Lcom/google/android/setupdesign/items/ItemAdapter;

    invoke-direct {v1, p3}, Lcom/google/android/setupdesign/items/ItemAdapter;-><init>(Lcom/google/android/setupdesign/items/ItemHierarchy;)V

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/template/ListMixin;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    :cond_0
    sget p3, Lcom/google/android/setupdesign/R$styleable;->SudListMixin_sudDividerShown:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 71
    invoke-direct {p0, v0, p3}, Lcom/google/android/setupdesign/template/ListMixin;->isDividerShown(Landroid/content/Context;Z)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 72
    sget p3, Lcom/google/android/setupdesign/R$styleable;->SudListMixin_sudDividerInset:I

    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-eq p3, v1, :cond_1

    .line 74
    invoke-virtual {p0, p3}, Lcom/google/android/setupdesign/template/ListMixin;->setDividerInset(I)V

    goto :goto_0

    .line 76
    :cond_1
    sget p3, Lcom/google/android/setupdesign/R$styleable;->SudListMixin_sudDividerInsetStart:I

    .line 77
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 78
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudListMixin_sudDividerInsetEnd:I

    .line 79
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 81
    invoke-static {p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_START:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 83
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    .line 87
    invoke-virtual {p1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p1

    float-to-int p3, p1

    .line 89
    :cond_2
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_MARGIN_END:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 90
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 93
    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v0, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDimension(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)F

    move-result p1

    float-to-int v1, p1

    .line 97
    :cond_3
    invoke-virtual {p0, p3, v1}, Lcom/google/android/setupdesign/template/ListMixin;->setDividerInsets(II)V

    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getListView()Landroid/widget/ListView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 103
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getListViewInternal()Landroid/widget/ListView;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ListMixin;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ListMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 132
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 133
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/setupdesign/template/ListMixin;->listView:Landroid/widget/ListView;

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ListMixin;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method private isDividerShown(Landroid/content/Context;Z)Z
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ListMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-static {p0}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 108
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p0

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_DIVIDER_SHOWN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 111
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p0

    const/4 p2, 0x1

    .line 112
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result p2

    :cond_0
    return p2
.end method

.method private updateDivider()V
    .locals 8

    .line 217
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/template/ListMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/google/android/setupdesign/template/ListMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 227
    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/template/ListMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/google/android/setupdesign/template/ListMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 230
    iget v3, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetStart:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetEnd:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/setupdesign/template/ListMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 231
    invoke-static/range {v2 .. v7}, Lcom/google/android/setupdesign/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/template/ListMixin;->divider:Landroid/graphics/drawable/Drawable;

    .line 238
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 160
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 161
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ListMixin;->divider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerInset()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getDividerInsetStart()I

    move-result p0

    return p0
.end method

.method public getDividerInsetEnd()I
    .locals 0

    .line 213
    iget p0, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetEnd:I

    return p0
.end method

.method public getDividerInsetStart()I
    .locals 0

    .line 208
    iget p0, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetStart:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public onLayout()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ListMixin;->divider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/ListMixin;->updateDivider()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/google/android/setupdesign/template/ListMixin;->setDividerInsets(II)V

    return-void
.end method

.method public setDividerInsets(II)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetStart:I

    .line 193
    iput p2, p0, Lcom/google/android/setupdesign/template/ListMixin;->dividerInsetEnd:I

    .line 194
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/ListMixin;->updateDivider()V

    return-void
.end method
