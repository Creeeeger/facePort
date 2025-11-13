.class Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;
.super Landroidx/apppickerview/widget/CustomListAdapter;
.source "CameraCutoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/CameraCutoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomListViewAdapter"
.end annotation


# instance fields
.field private mCustomListContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V
    .locals 6

    .line 540
    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    .line 541
    invoke-direct/range {v0 .. v5}, Landroidx/apppickerview/widget/CustomListAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V

    .line 542
    iput-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mCustomListContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 2

    const/16 v0, -0xa

    if-ne p2, v0, :cond_4

    .line 548
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mCustomListContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->full_screen_camera_cutout_preview:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 550
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    .line 552
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

    .line 555
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mCustomListContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->full_screen_camera_cutout_preview_for_tablet:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    const v0, 0x44078000    # 542.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 559
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mCustomListContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->full_screen_camera_cutout_preview_for_tablet_2:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 563
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mCustomListContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->full_screen_camera_cutout_preview_for_tablet_3:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 567
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    sget v0, Lcom/android/settings/R$id;->image_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fputmPreviewImageLayout(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroid/view/View;)V

    .line 568
    sget p1, Lcom/android/settings/R$id;->full_screen_image_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    const/16 v0, 0xf

    .line 570
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 571
    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    .line 572
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 571
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 575
    :cond_3
    new-instance p0, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;

    invoke-direct {p0, p2}, Landroidx/apppickerview/widget/AppPickerView$CustomViewItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 577
    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/apppickerview/widget/CustomListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 537
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
