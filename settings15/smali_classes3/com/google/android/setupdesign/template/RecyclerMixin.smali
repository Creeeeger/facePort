.class public final Lcom/google/android/setupdesign/template/RecyclerMixin;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field public defaultDivider:Landroid/graphics/drawable/Drawable;

.field public divider:Landroid/graphics/drawable/Drawable;

.field public final dividerDecoration:Lcom/google/android/setupdesign/DividerItemDecoration;

.field public dividerInsetEnd:I

.field public dividerInsetStart:I

.field public final header:Landroid/view/View;

.field public final isDividerDisplay:Z

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->isDividerDisplay:Z

    iput-object p1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    new-instance v1, Lcom/google/android/setupdesign/DividerItemDecoration;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/setupdesign/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerDecoration:Lcom/google/android/setupdesign/DividerItemDecoration;

    iput-object p2, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    instance-of v2, p2, Lcom/google/android/setupdesign/view/HeaderRecyclerView;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/google/android/setupdesign/view/HeaderRecyclerView;

    iget-object v2, v2, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->header:Landroid/view/View;

    iput-object v2, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->header:Landroid/view/View;

    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v4, 0x7f040642

    invoke-virtual {v2, v4, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v3, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->shouldApplyPartnerResource(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    sget-object v2, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_ITEMS_DIVIDER_SHOWN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isPartnerConfigAvailable(Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    move-result v0

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->isDividerDisplay:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final updateDivider()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerDecoration:Lcom/google/android/setupdesign/DividerItemDecoration;

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v4, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerInsetStart:I

    iget v7, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->dividerInsetEnd:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-ne v0, v3, :cond_1

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v3, v0

    move v5, v7

    move v7, v1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    move-object v3, v0

    move v5, v1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerMixin;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    iput p0, v2, Lcom/google/android/setupdesign/DividerItemDecoration;->dividerIntrinsicHeight:I

    iput-object v0, v2, Lcom/google/android/setupdesign/DividerItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void
.end method
