.class public final synthetic Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

.field public final synthetic f$1:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    return-void
.end method


# virtual methods
.method public final onForgetResult(I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mWifiEntryCandidates:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter$$ExternalSyntheticLambda3;->f$1:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntry;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mWifiEntryCandidates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryListAdapter;->mListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->setMode$2(I)V

    :cond_1
    return-void
.end method
