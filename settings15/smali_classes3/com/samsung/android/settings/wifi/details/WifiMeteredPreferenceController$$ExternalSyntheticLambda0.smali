.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    const-string v0, "WifiMeteredPrefCtrl"

    if-nez p1, :cond_0

    const-string v1, "hideSoftKeyboard focusedView is null force hide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    goto :goto_0

    :cond_0
    const-string v1, "hideSoftKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiMeteredPreferenceController;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
