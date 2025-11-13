.class Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ConnectedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/ConnectedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessPointViewHolder"
.end annotation


# instance fields
.field private mDetailIcon:Landroid/widget/ImageView;

.field private mDetailIconLayout:Landroid/widget/RelativeLayout;

.field private mDivider:Landroid/view/View;

.field private mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private mIcon:Landroid/widget/ImageView;

.field private mRelativeLayoutWcm:Landroid/widget/RelativeLayout;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTwsDetectionButton:Landroid/widget/Button;

.field private mTwsDetectionSummary:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

.field private wifiTipsImageView:Landroid/widget/ImageView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDetailIcon(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDetailIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetailIconLayout(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDetailIconLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDivider(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrictionSld(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRelativeLayoutWcm(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mRelativeLayoutWcm:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwsDetectionButton(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mTwsDetectionButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTwsDetectionSummary(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mTwsDetectionSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwifiTipsImageView(Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->wifiTipsImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/ConnectedListAdapter;Landroid/view/View;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/ConnectedListAdapter;

    .line 108
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 109
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mView:Landroid/view/View;

    .line 110
    sget v0, Lcom/android/settings/R$id;->wifi_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 111
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mTitle:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mSummary:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/android/settings/R$id;->layout_details:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDetailIconLayout:Landroid/widget/RelativeLayout;

    .line 114
    sget v0, Lcom/android/settings/R$id;->wifi_details:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDetailIcon:Landroid/widget/ImageView;

    .line 115
    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->wifi_signal:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 117
    sget p1, Lcom/android/settings/R$id;->layout_current:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mRelativeLayoutWcm:Landroid/widget/RelativeLayout;

    .line 118
    sget p1, Lcom/android/settings/R$id;->WifiTipsIcon_connected:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->wifiTipsImageView:Landroid/widget/ImageView;

    .line 119
    sget p1, Lcom/android/settings/R$id;->wifi_divider_current:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mDivider:Landroid/view/View;

    .line 122
    sget p1, Lcom/android/settings/R$id;->wifi_security_summary:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mTwsDetectionSummary:Landroid/widget/TextView;

    .line 123
    sget p1, Lcom/android/settings/R$id;->wifi_security_detection:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ConnectedListAdapter$AccessPointViewHolder;->mTwsDetectionButton:Landroid/widget/Button;

    return-void
.end method
