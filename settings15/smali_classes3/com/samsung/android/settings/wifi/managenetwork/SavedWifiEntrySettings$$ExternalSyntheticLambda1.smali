.class public final synthetic Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mAdapter:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mSelectAll:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->setRemoveAllState(Z)V

    iget p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateComponentsStatus(I)V

    return-void
.end method
