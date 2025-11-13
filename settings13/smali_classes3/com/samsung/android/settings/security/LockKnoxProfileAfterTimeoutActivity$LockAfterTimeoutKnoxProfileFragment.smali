.class public Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "LockKnoxProfileAfterTimeoutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockAfterTimeoutKnoxProfileFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mListView:Landroid/widget/ListView;

.field private mPasswordConfirmed:Z

.field private mProfileChallengeUserId:I

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mPasswordConfirmed:Z

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mWaitingForConfirmation:Z

    return-void
.end method

.method private verifyCurrentLock()V
    .locals 4

    .line 238
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0x64

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 242
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mProfileChallengeUserId:I

    .line 243
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setKnoxWorkProfileSecurity(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 245
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iput-boolean v2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mWaitingForConfirmation:Z

    const-string p0, "KKG::LockKnoxProfileAfterTimeoutActivity"

    const-string v0, "Need to confirm Current Lock"

    .line 247
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    if-ne p1, p3, :cond_1

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mWaitingForConfirmation:Z

    const/4 p3, -0x1

    const-string v0, "KKG::LockKnoxProfileAfterTimeoutActivity"

    if-eq p2, p3, :cond_0

    const-string p1, "Lock confirm failed"

    .line 176
    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string p2, "Lock confirmed"

    .line 179
    invoke-static {v0, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 180
    iput-boolean p2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mPasswordConfirmed:Z

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 110
    sget p0, Lcom/android/settings/R$layout;->sec_lock_after_knox_profile_timeout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 194
    iget-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    .line 196
    iget-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mAdapter:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    invoke-virtual {p1, p3}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->getValueFromPosition(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 197
    iget-object p2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget p3, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mProfileChallengeUserId:I

    const-string p4, "knox_screen_off_timeout"

    invoke-static {p2, p4, p1, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "KNOX_SCREEN_OFF_TIMEOUT timeout value = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KKG::LockKnoxProfileAfterTimeoutActivity"

    invoke-static {p2, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mProfileChallengeUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->refreshLockTimer(I)V

    .line 203
    iget-object p0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 12

    .line 151
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mProfileChallengeUserId:I

    const-string v2, "knox_screen_off_timeout"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    .line 154
    iget-object v2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v3

    :cond_0
    move-wide v8, v3

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v5, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mContext:Landroid/content/Context;

    move-wide v6, v0

    move-object v10, v2

    move-object v11, v3

    invoke-static/range {v5 .. v11}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->setScreenTimeoutAdapter(Landroid/content/Context;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 160
    new-instance v4, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    iget-object v5, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/CharSequence;

    .line 161
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-direct {v4, v5, v2, v3}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    iput-object v4, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mAdapter:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    .line 162
    iget-object v2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object v2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mAdapter:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->getPositionFromValue(J)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 165
    iget-object v2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mAdapter:Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment$RadioAdapter;->getPositionFromValue(J)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 166
    iget-object p0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    iget-boolean v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mPasswordConfirmed:Z

    const-string v1, "password_already_confirmed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    iget-boolean p0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mWaitingForConfirmation:Z

    const-string v0, "waiting_for_confirmation"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 115
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mActivity:Landroid/app/Activity;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mProfileChallengeUserId:I

    .line 121
    sget v0, Lcom/android/settings/R$id;->lock_after_timeout_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_1

    const/16 v0, 0xf

    .line 123
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->semSetRoundedCorners(I)V

    .line 124
    iget-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->semSetRoundedCornerColor(II)V

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 127
    sget v0, Lcom/android/settings/R$dimen;->sec_widget_list_with_radio_btn_divider_inset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/settings/R$dimen;->sec_widget_list_radio_width_for_divider_padding_inset:I

    .line 128
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 131
    iget-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const-string p1, "password_already_confirmed"

    .line 139
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mPasswordConfirmed:Z

    const-string p1, "waiting_for_confirmation"

    .line 140
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mWaitingForConfirmation:Z

    .line 143
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mPasswordConfirmed:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mWaitingForConfirmation:Z

    if-nez p1, :cond_3

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->verifyCurrentLock()V

    .line 145
    iget-object p0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity$LockAfterTimeoutKnoxProfileFragment;->mListView:Landroid/widget/ListView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_3
    return-void
.end method
