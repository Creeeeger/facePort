.class Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AvailableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/AvailableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddNetworkViewHolder"
.end annotation


# instance fields
.field private mDivider:Landroid/view/View;

.field private mQrLayout:Landroid/view/View;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWifiQrScanBtn:Landroid/widget/ImageButton;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiQrScanBtn(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mWifiQrScanBtn:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter;Landroid/view/View;)V
    .locals 2

    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    .line 109
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 111
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mView:Landroid/view/View;

    .line 112
    sget v0, Lcom/android/settings/R$id;->wifi_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mDivider:Landroid/view/View;

    .line 113
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->layout_qr:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mQrLayout:Landroid/view/View;

    .line 114
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mTitle:Landroid/widget/TextView;

    .line 115
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mSummary:Landroid/widget/TextView;

    .line 116
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->qr_scanner_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mWifiQrScanBtn:Landroid/widget/ImageButton;

    .line 118
    iget-boolean p2, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mInSetupWizardActivity:Z

    if-eqz p2, :cond_1

    .line 119
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$color;->sec_wifi_suw_preference_title_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->isCameraSupportQrScan(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mDivider:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mQrLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mWifiQrScanBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mDivider:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mQrLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AddNetworkViewHolder;->mWifiQrScanBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
