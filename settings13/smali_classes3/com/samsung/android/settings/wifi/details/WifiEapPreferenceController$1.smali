.class Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiEapPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->-$$Nest$fgetmFragment(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    .line 198
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->-$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->hideSoftKeyboard(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
