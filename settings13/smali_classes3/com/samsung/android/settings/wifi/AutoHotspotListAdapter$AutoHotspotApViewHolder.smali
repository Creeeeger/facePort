.class Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AutoHotspotListAdapter.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoHotspotApViewHolder"
.end annotation


# instance fields
.field private mBleAccessPoint:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

.field private mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private mIcon:Landroid/widget/ImageView;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFrictionSld(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIcon(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummary(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBleAccessPoint(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->mBleAccessPoint:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;Landroid/view/View;)V
    .locals 2

    .line 114
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;

    .line 115
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-string v0, "AutoHotspotListAdapter"

    const-string v1, "AutoHotspotApViewHolder() - initiated"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget v0, Lcom/android/settings/R$id;->wifi_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 118
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->mTitle:Landroid/widget/TextView;

    .line 119
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->mSummary:Landroid/widget/TextView;

    .line 125
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->mView:Landroid/view/View;

    .line 126
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->wifi_signal:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AutoHotspotListAdapter$AutoHotspotApViewHolder;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    const-string p0, "AutoHotspotListAdapter"

    const-string p1, "onCreateContextMenu() - Start"

    .line 131
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
