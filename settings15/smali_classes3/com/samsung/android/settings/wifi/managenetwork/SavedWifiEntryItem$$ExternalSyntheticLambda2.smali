.class public final synthetic Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda2;->f$1:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget p1, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mPosition:I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->isAutoSelectAllEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->setChecked(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->setMode$2(I)V

    iput p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mDragStartPosition:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    :goto_0
    return v0
.end method
