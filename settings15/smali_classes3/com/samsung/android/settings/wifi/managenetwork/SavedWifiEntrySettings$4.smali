.class public final Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SeslLongPressMultiSelectionListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$4;->this$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    return-void
.end method


# virtual methods
.method public final onItemSelected(I)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$4;->this$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mDragStartPosition:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->setChecked(I)V

    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateComponentsStatus(I)V

    return-void
.end method

.method public final onLongPressMultiSelectionEnded()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$4;->this$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateSelectedItemsCount()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mDragStartPosition:I

    return-void
.end method

.method public final onLongPressMultiSelectionStarted(II)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$4;->this$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mDragStartPosition:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "WIFI_220"

    const-string v0, "1264"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateComponentsStatus(I)V

    return-void
.end method
