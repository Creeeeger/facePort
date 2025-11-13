.class Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "NearbyWifiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;Z)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;)Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->isSsidMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;)Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiPreference;->changeMode()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/NearbyWifiFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :goto_0
    return-void
.end method
