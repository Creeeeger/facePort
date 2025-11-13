.class public final Lcom/samsung/android/settings/wifi/details/WifiImeHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field public static final DBG:Z


# instance fields
.field public mActionPreference:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

.field public final mEditPreferences:Ljava/util/List;

.field public mFlagShowKeyboardOnce:Z

.field public final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field public mLastUpdatedEditTextView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mFlagShowKeyboardOnce:Z

    return-void
.end method

.method public static setImeOption(Landroid/widget/EditText;Z)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    const/high16 v0, 0x2000000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    const-string p0, "WifiImeHelper"

    const-string p1, "ime option was changed, clear focus"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final hideSoftKeyboard(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiImeHelper"

    if-nez p1, :cond_1

    const-string p1, "hideSoftKeyboard focusedView is null force hide"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    goto :goto_0

    :cond_1
    const-string v1, "hideSoftKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method

.method public final init(Landroid/view/View;Landroidx/preference/PreferenceScreen;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v3, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0596

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "init size:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showIme:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mFlagShowKeyboardOnce:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "WifiImeHelper"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mFlagShowKeyboardOnce:Z

    if-eqz p2, :cond_6

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mFlagShowKeyboardOnce:Z

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    if-nez p1, :cond_4

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    sget-boolean p2, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->DBG:Z

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start focus at idx:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    instance-of p2, p1, Landroid/widget/EditText;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p2, Lcom/samsung/android/settings/wifi/details/WifiImeHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Landroid/view/View;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_3
    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mActionPreference:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "WifiImeHelper"

    const-string p2, "action done - preference click"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mActionPreference:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->performClick()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateImeOptions()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v4}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/widget/EditText;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    const/4 v4, 0x0

    const-string v5, "WifiImeHelper"

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    if-eq v3, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "change IME option idx:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->setImeOption(Landroid/widget/EditText;Z)V

    invoke-static {v3, v1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->setImeOption(Landroid/widget/EditText;Z)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    invoke-static {v0, v4}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->setImeOption(Landroid/widget/EditText;Z)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    const-string p0, "clear IME option"

    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method
