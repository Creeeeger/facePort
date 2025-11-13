.class Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SavedAccessPointsWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundedDecoration"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;Landroid/content/Context;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 634
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 638
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 640
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_4

    .line 642
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 643
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 645
    instance-of v4, v3, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;

    if-eqz v4, :cond_3

    .line 647
    check-cast v3, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;

    iget v3, v3, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsHolder;->roundMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    const/16 v4, 0xf

    if-eq v3, v4, :cond_0

    .line 662
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmItemRoundedCorner(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    goto :goto_1

    .line 650
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmItemRoundedCorner(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    goto :goto_1

    .line 657
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmItemRoundedCorner(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    goto :goto_1

    .line 653
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmItemRoundedCorner(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 666
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$RoundedDecoration;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmItemRoundedCorner(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
