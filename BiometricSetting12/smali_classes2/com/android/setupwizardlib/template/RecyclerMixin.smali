.class public Lcom/android/setupwizardlib/template/RecyclerMixin;
.super Ljava/lang/Object;
.source "RecyclerMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private defaultDivider:Landroid/graphics/drawable/Drawable;

.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

.field private dividerInsetEnd:I

.field private dividerInsetStart:I

.field private header:Landroid/view/View;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final templateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    new-instance v0, Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    iput-object p2, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    instance-of v0, p2, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->header:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private updateDivider()V
    .locals 8

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v1}, Lcom/android/setupwizardlib/TemplateLayout;->isLayoutDirectionResolved()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v1}, Lcom/android/setupwizardlib/DividerItemDecoration;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v2, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetStart:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetEnd:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-static/range {v2 .. v7}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->divider:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v2, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->getWrappedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->divider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    iget v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetEnd:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    iget v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetStart:I

    return v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->header:Landroid/view/View;

    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public onLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->divider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->updateDivider()V

    :cond_0
    return-void
.end method

.method public parseAttributes(Landroid/util/AttributeSet;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v3, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_android_entries:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v4, v0}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/android/setupwizardlib/items/ItemInflater;->inflate(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/setupwizardlib/items/ItemHierarchy;

    new-instance v5, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    invoke-direct {v5, v4}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    sget v6, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwHasStableIds:I

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->setHasStableIds(Z)V

    invoke-virtual {p0, v5}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwDividerInset:I

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInset(I)V

    goto :goto_0

    :cond_1
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwDividerInsetStart:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    sget v6, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwDividerInsetEnd:I

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v5, v2}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInsets(II)V

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInsets(II)V

    return-void
.end method

.method public setDividerInsets(II)V
    .locals 0

    iput p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetStart:I

    iput p2, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetEnd:I

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->updateDivider()V

    return-void
.end method

.method public setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->updateDivider()V

    return-void
.end method
