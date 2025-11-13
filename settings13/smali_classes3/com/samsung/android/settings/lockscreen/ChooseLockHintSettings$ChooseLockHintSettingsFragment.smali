.class public Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "ChooseLockHintSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockHintSettingsFragment"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mConfiguredHintText:Ljava/lang/String;

.field private mCurrentPW:Lcom/android/internal/widget/LockscreenCredential;

.field private mErrorHintTextView:Landroid/widget/TextView;

.field private mErrorState:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHintEditText:Landroid/widget/EditText;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    return-void
.end method

.method private comparePasswordAndHint(Ljava/lang/String;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mCurrentPW:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->resetInputStateAndUpdateDesc()V

    goto :goto_0

    .line 248
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mUserId:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->startSaveHintAndFinish(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private initializeHintValue()V
    .locals 2

    const-string v0, "ChooseLockHintSettings"

    const-string v1, "Initialize Hint value"

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mUserId:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->setPasswordHint(Ljava/lang/String;I)V

    return-void
.end method

.method private resetInputStateAndUpdateDesc()V
    .locals 5

    .line 253
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->-$$Nest$smgetConfiguredPasswordType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->choose_lock_wrong_hint_input:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->red:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mScrollView:Landroid/widget/ScrollView;

    const/16 v3, 0x82

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->dashboard_tab_selected_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 269
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 271
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private startSaveHintAndFinish(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "ChooseLockHintSettings"

    const-string v1, "startSaveHintAndFinish"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1c

    const/16 v1, 0x2334

    const-wide/16 v2, 0x1

    .line 232
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setPasswordHint(Ljava/lang/String;I)V

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 315
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    .line 318
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->dashboard_tab_selected_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public handleNext()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mConfiguredHintText:Ljava/lang/String;

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mConfiguredHintText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->comparePasswordAndHint(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 286
    sget v0, Lcom/android/settings/R$id;->next_button:I

    if-ne p1, v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->handleNext()V

    goto :goto_0

    .line 288
    :cond_0
    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    if-ne p1, v0, :cond_1

    const-string p1, "ChooseLockHintSettings"

    const-string v0, "Not save HintText"

    .line 289
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1c

    const/16 v0, 0x2334

    const-wide/16 v1, 0x0

    .line 290
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mUserId:I

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->initializeHintValue()V

    return-void

    .line 164
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Fragment contained in wrong activity"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    .line 179
    sget p0, Lcom/android/settings/R$layout;->sec_choose_lock_hint_settings_tablet:I

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 181
    :cond_0
    sget p0, Lcom/android/settings/R$layout;->sec_choose_lock_hint_settings:I

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 299
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->handleNext()V

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 3

    .line 225
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 227
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 219
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->resetInputStateAndUpdateDesc()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 239
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 240
    iget-boolean p0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    const-string v0, "error_state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 187
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "secret_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mCurrentPW:Lcom/android/internal/widget/LockscreenCredential;

    .line 191
    sget v0, Lcom/android/settings/R$id;->hint_scrollview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 192
    sget v0, Lcom/android/settings/R$id;->headerHintText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHeaderText:Landroid/widget/TextView;

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->-$$Nest$smgetConfiguredPasswordType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHeaderText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->choose_lock_hint_description:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->choose_lock_enter_hint:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mCancelButton:Landroid/widget/Button;

    .line 197
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget v0, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    .line 199
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 201
    sget v0, Lcom/android/settings/R$id;->error_hint_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorHintTextView:Landroid/widget/TextView;

    .line 202
    sget v0, Lcom/android/settings/R$id;->edit_hint_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    .line 203
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 204
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 205
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 206
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mHintEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    if-eqz p2, :cond_0

    const-string p1, "error_state"

    .line 208
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings$ChooseLockHintSettingsFragment;->mErrorState:Z

    :cond_0
    return-void
.end method
