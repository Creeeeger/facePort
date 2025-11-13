.class public final Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$1;->this$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings$1;->this$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget v0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    if-nez v0, :cond_0

    const-string v0, "WIFI_220"

    const-string v1, "1265"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->setMode$2(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
