.class Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;
.super Ljava/lang/Object;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->getSeslLongPressMultiSelectionListener()Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field prePosition:I

.field startPosition:I

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 593
    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->startPosition:I

    .line 594
    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->prePosition:I

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    .line 598
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmIsRemoveMode(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 599
    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->prePosition:I

    .line 600
    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->startPosition:I

    return-void

    .line 603
    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->startPosition:I

    if-eq p3, p1, :cond_1

    .line 604
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->getSavedWifiEntries()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;

    invoke-virtual {p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter$SavedWifiEntry;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsListAdapter;->setChecked(IZ)V

    .line 606
    :cond_1
    iput p3, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->prePosition:I

    .line 607
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$mupdateSelectedItemsCount(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V

    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    .line 624
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$mupdateSelectedItemsCount(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V

    const/4 p1, -0x1

    .line 625
    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->prePosition:I

    .line 626
    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->startPosition:I

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmRecyclerView(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmRecyclerView(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->startPosition:I

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->startPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SavedAccessPointsWifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->startPosition:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI_220"

    const-string v2, "1264"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->startPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 617
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmRecyclerView(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$fgetmRecyclerView(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->startPosition:I

    .line 619
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings$3;->this$0:Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->-$$Nest$mupdateSelectedItemsCount(Lcom/samsung/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)V

    return-void
.end method
