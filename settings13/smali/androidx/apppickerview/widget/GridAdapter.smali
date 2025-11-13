.class Landroidx/apppickerview/widget/GridAdapter;
.super Landroidx/apppickerview/widget/AbsAdapter;
.source "GridAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p5}, Landroidx/apppickerview/widget/AbsAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .line 69
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->isSeparator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x103

    return p0

    .line 71
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AbsAdapter;->getAppInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->isCustomViewItem()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, -0xa

    return p0

    :cond_1
    const/16 p0, 0x101

    return p0
.end method

.method onBindViewHolderAction(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x103

    if-ne p2, v1, :cond_0

    .line 51
    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Landroidx/apppickerview/R$layout;->app_picker_list_separator:I

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 52
    new-instance p1, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    invoke-direct {p1, p0}, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 54
    :cond_0
    iget-object p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Landroidx/apppickerview/R$layout;->app_picker_grid:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    iget p2, p0, Landroidx/apppickerview/widget/AbsAdapter;->mType:I

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    sget p2, Landroidx/apppickerview/R$id;->check_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :goto_0
    sget p2, Landroidx/apppickerview/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroidx/apppickerview/widget/AbsAdapter;->limitFontLarge2LinesHeight(Landroid/widget/TextView;)V

    .line 63
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/apppickerview/widget/GridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
