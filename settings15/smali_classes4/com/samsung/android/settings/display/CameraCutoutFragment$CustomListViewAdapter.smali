.class public final Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;
.super Landroidx/apppickerview/widget/CustomListAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCustomListContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroid/content/Context;Landroidx/apppickerview/widget/AppPickerIconLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroidx/apppickerview/widget/CustomListAdapter;-><init>(Landroid/content/Context;ILandroidx/apppickerview/widget/AppPickerIconLoader;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mCustomListContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 2

    const/16 v0, -0xa

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mCustomListContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d024a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mCustomListContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v0

    const/high16 v0, 0x43aa0000    # 340.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mCustomListContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d024b

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    const v0, 0x44078000    # 542.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mCustomListContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d024c

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mCustomListContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d024d

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    const v0, 0x7f0a07d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/samsung/android/settings/display/CameraCutoutFragment;->mPreviewImageLayout:Landroid/view/View;

    const p1, 0x7f0a06bd

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p0, p0, Landroidx/apppickerview/widget/AbsAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f060738

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_3
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    invoke-direct {p0, p2}, Landroidx/apppickerview/widget/AppPickerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/apppickerview/widget/ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
