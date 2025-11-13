.class Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppPickerCustomListAdapter;
.super Landroidx/apppickerview/widget/CustomListAdapter;
.source "AppSplitViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPickerCustomListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V
    .locals 6

    .line 314
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppPickerCustomListAdapter;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    .line 315
    invoke-direct/range {v0 .. v5}, Landroidx/apppickerview/widget/CustomListAdapter;-><init>(Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;Z)V

    return-void
.end method


# virtual methods
.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;
    .locals 2

    const/16 v0, -0xa

    if-ne p2, v0, :cond_0

    .line 321
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppPickerCustomListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->sec_labs_app_picker_desc_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 322
    new-instance p2, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$CustomViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppPickerCustomListAdapter;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$CustomViewHolder;-><init>(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;Landroid/view/View;)V

    return-object p2

    .line 324
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/apppickerview/widget/CustomListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppPickerCustomListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/apppickerview/widget/AppPickerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method
