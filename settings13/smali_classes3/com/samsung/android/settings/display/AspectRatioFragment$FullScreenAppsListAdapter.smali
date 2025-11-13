.class Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;
.super Landroidx/apppickerview/widget/CustomListAdapter;
.source "AspectRatioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/AspectRatioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenAppsListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment;Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V
    .locals 6

    .line 928
    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    .line 929
    invoke-direct/range {v0 .. v5}, Landroidx/apppickerview/widget/CustomListAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V

    return-void
.end method


# virtual methods
.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 2

    const/16 v0, -0xa

    if-ne p2, v0, :cond_2

    .line 936
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;->this$0:Lcom/samsung/android/settings/display/AspectRatioFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/AspectRatioFragment;->-$$Nest$fgetmIsSupportAspectRatio(Lcom/samsung/android/settings/display/AspectRatioFragment;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 937
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->full_screen_aspect_ratio_preview_fold:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 939
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/android/settings/R$layout;->full_screen_aspect_ratio_preview:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 941
    :goto_0
    sget p2, Lcom/android/settings/R$id;->full_screen_image_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    const/16 v0, 0xf

    .line 943
    invoke-virtual {p2, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 944
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    .line 945
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 944
    invoke-virtual {p2, v0, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 948
    :cond_1
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    invoke-direct {p0, p1}, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 950
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/apppickerview/widget/CustomListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 926
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/display/AspectRatioFragment$FullScreenAppsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
