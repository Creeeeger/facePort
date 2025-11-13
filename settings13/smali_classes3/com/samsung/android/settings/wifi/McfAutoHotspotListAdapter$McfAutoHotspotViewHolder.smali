.class Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "McfAutoHotspotListAdapter.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "McfAutoHotspotViewHolder"
.end annotation


# instance fields
.field private mBleAccessPoint:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

.field private mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private mIcon:Landroid/widget/ImageView;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFrictionSld(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBleAccessPoint(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mBleAccessPoint:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;Landroid/view/View;)V
    .locals 2

    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->this$0:Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;

    .line 98
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 99
    invoke-static {}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoHotspotApViewHolder() - initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget v0, Lcom/android/settings/R$id;->wifi_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 101
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mTitle:Landroid/widget/TextView;

    .line 102
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mSummary:Landroid/widget/TextView;

    .line 108
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mView:Landroid/view/View;

    .line 109
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->wifi_signal:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter$McfAutoHotspotViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 114
    invoke-static {}, Lcom/samsung/android/settings/wifi/McfAutoHotspotListAdapter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCreateContextMenu() - Start"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
