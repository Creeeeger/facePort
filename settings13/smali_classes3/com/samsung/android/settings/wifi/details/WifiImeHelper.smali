.class public Lcom/samsung/android/settings/wifi/details/WifiImeHelper;
.super Ljava/lang/Object;
.source "WifiImeHelper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mActionPreference:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

.field private mActionView:Landroid/view/View;

.field private final mEditPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/settingslib/widget/LayoutPreference;",
            "Landroid/widget/EditText;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFlagShowKeyboardOnce:Z

.field private final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastUpdatedEditTextView:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$LaQRFZbHa56wlOIZDcqwFWQQF04(Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->lambda$showSoftKeyboard$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    const-string v0, "input_method"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mFlagShowKeyboardOnce:Z

    return-void
.end method

.method private findEditTextFromLayout(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 2

    .line 106
    sget v0, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showSoftKeyboard$0(Landroid/view/View;)V
    .locals 2

    :try_start_0
    const-string v0, "WifiImeHelper"

    const-string v1, "showSoftKeyboard"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setImeOption(Landroid/widget/EditText;Z)V
    .locals 0

    if-eqz p1, :cond_1

    const/high16 p0, 0x2000000

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    :goto_0
    or-int/2addr p0, p2

    .line 149
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 151
    invoke-virtual {p1}, Landroid/widget/EditText;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 152
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    const-string p0, "WifiImeHelper"

    const-string p1, "ime option was changed, clear focus"

    .line 153
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private showSoftKeyboard(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 160
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiImeHelper;Landroid/view/View;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public hideSoftKeyboard(Landroid/view/View;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WifiImeHelper"

    if-nez p1, :cond_1

    const-string p1, "hideSoftKeyboard focusedView is null force hide"

    .line 175
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    goto :goto_0

    :cond_1
    const-string v1, "hideSoftKeyboard"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method

.method public init(Landroid/view/View;Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 58
    :goto_0
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 59
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 60
    instance-of v3, v2, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v3, :cond_0

    .line 61
    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->findEditTextFromLayout(Lcom/android/settingslib/widget/LayoutPreference;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init size:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

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

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    .line 68
    iget-boolean p2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mFlagShowKeyboardOnce:Z

    if-eqz p2, :cond_5

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mFlagShowKeyboardOnce:Z

    .line 70
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    if-nez p1, :cond_4

    .line 73
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_3

    .line 74
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 75
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

    .line 76
    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 82
    sget-boolean p2, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->DBG:Z

    if-eqz p2, :cond_4

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start focus at idx:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_4
    instance-of p2, p1, Landroid/widget/EditText;

    if-eqz p2, :cond_5

    .line 88
    move-object p2, p1

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->showSoftKeyboard(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mActionPreference:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    const-string p2, "WifiImeHelper"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "action done - preference click"

    .line 188
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mActionPreference:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;->performClick()V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mActionView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "action done - view click"

    .line 191
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mActionView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setActionPreference(Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;)V
    .locals 2

    .line 96
    sget-boolean v0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiImeHelper"

    const-string v1, "setup action preference"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mActionPreference:Lcom/samsung/android/settings/wifi/SecWifiProgressButtonPreference;

    return-void
.end method

.method public updateImeOptions()V
    .locals 7

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    .line 126
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mEditPreferences:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 127
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

    .line 128
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/widget/EditText;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    const-string v4, "WifiImeHelper"

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 133
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    if-eq v3, v2, :cond_3

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "change IME option idx:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->setImeOption(Landroid/widget/EditText;Z)V

    .line 136
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->setImeOption(Landroid/widget/EditText;Z)V

    .line 137
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    goto :goto_2

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->setImeOption(Landroid/widget/EditText;Z)V

    .line 141
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->mLastUpdatedEditTextView:Landroid/widget/EditText;

    const-string p0, "clear IME option"

    .line 142
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method
