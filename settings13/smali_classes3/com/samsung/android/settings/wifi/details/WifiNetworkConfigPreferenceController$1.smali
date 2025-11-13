.class Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiNetworkConfigPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 373
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    .line 374
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->-$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
