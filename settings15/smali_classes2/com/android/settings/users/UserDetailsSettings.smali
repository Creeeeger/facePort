.class public Lcom/android/settings/users/UserDetailsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field mAppAndContentAccessPref:Landroidx/preference/Preference;

.field mAppCopyingPref:Landroidx/preference/Preference;

.field public mDialog:Landroid/app/Dialog;

.field mGrantAdminPref:Landroidx/preference/TwoStatePreference;

.field public mGuestExitPreference:Landroidx/preference/Preference;

.field public mGuestResetPreference:Landroidx/preference/Preference;

.field public mGuestTelephonyPreferenceController:Lcom/android/settings/users/GuestTelephonyPreferenceController;

.field public mGuestUserAutoCreated:Z

.field public final mHandler:Lcom/android/settings/users/UserDetailsSettings$6;

.field public mPhonePref:Landroidx/preference/TwoStatePreference;

.field public mRemoveGuestOnExitPreferenceController:Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;

.field mRemoveUserPref:Landroidx/preference/Preference;

.field mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

.field public mUserCaps:Lcom/android/settings/users/UserCapabilities;

.field public mUserDetailHeader:Lcom/android/settingslib/widget/LayoutPreference;

.field mUserInfo:Landroid/content/pm/UserInfo;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$mexitGuest(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x6e3

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserDetailsSettings;->switchToUserId(I)V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/users/UserDetailsSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$6;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mHandler:Lcom/android/settings/users/UserDetailsSettings$6;

    return-void
.end method

.method public static updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    if-ltz v1, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0, v1, p1}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public canDeleteUser()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const-string v0, "no_remove_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {p0, v2, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public canSwitchUserNow()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserSwitchability()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearAndExitGuest()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x6e3

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v1

    const-string v2, "UserDetailsSettings"

    if-nez v1, :cond_1

    const-string p0, "Couldn\'t mark the guest for deletion for user "

    invoke-static {v0, p0, v2}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f14282a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->canSwitchUserNow()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "Cannot remove current user when switching is disabled"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Landroid/os/UserManager;->removeUserWhenPossible(Landroid/os/UserHandle;Z)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to remove self user"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final enableCallsAndSms(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    xor-int/lit8 v5, p1, 0x1

    const-string v6, "no_outgoing_calls"

    invoke-virtual {v4, v6, v5, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v6, "no_sms"

    invoke-virtual {v4, v6, v5, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getDialogMetricsCategory(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x258

    return p0

    :pswitch_1
    const/16 p0, 0x7d0

    return p0

    :pswitch_2
    const/16 p0, 0x7d1

    return p0

    :pswitch_3
    const/16 p0, 0x254

    return p0

    :pswitch_4
    const/16 p0, 0x251

    return p0

    :pswitch_5
    const/16 p0, 0x24f

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x62

    return p0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, -0x2710

    if-eqz v2, :cond_0

    const-string v4, "user_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eq v4, v3, :cond_13

    const-string v3, "new_user"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    const-string v3, "switch_user"

    invoke-virtual {v0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/RestrictedPreference;

    iput-object v6, v0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    const-string v6, "enable_calling"

    invoke-virtual {v0, v6}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/TwoStatePreference;

    iput-object v7, v0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/TwoStatePreference;

    const-string v7, "remove_user"

    invoke-virtual {v0, v7}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    const-string v8, "app_and_content_access"

    invoke-virtual {v0, v8}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v9

    iput-object v9, v0, Lcom/android/settings/users/UserDetailsSettings;->mAppAndContentAccessPref:Landroidx/preference/Preference;

    const-string v9, "app_copying"

    invoke-virtual {v0, v9}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    iput-object v10, v0, Lcom/android/settings/users/UserDetailsSettings;->mAppCopyingPref:Landroidx/preference/Preference;

    const-string v10, "user_grant_admin"

    invoke-virtual {v0, v10}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v11

    check-cast v11, Landroidx/preference/TwoStatePreference;

    iput-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mGrantAdminPref:Landroidx/preference/TwoStatePreference;

    iget-object v12, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string v11, "user_detail_header"

    invoke-virtual {v0, v11}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserDetailHeader:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v11, v11, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v12, 0x7f0a0b52

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v13, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-static {v1, v12, v13}, Lcom/android/settingslib/Utils;->secGetUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f143115

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserDetailHeader:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v11, v11, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v12, 0x7f0a009c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0801a3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserDetailHeader:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v11, v11, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v12, 0x7f0a10d2

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget-object v12, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v12, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget-object v12, v12, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const v13, 0x7f14313a

    invoke-virtual {v1, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v11, v11, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    const/4 v12, 0x1

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_1
    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v11, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_1
    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {}, Landroid/os/UserManager;->isMultipleAdminEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v13, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    const-string v14, "no_grant_admin"

    invoke-virtual {v11, v14, v13}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    invoke-virtual {v0, v10}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_3
    new-instance v11, Lcom/android/settings/users/GuestTelephonyPreferenceController;

    const-string v13, "enable_guest_calling"

    invoke-direct {v11, v1, v13}, Lcom/android/settings/users/GuestTelephonyPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mGuestTelephonyPreferenceController:Lcom/android/settings/users/GuestTelephonyPreferenceController;

    new-instance v11, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;

    iget-object v14, v0, Lcom/android/settings/users/UserDetailsSettings;->mHandler:Lcom/android/settings/users/UserDetailsSettings$6;

    const-string v15, "remove_guest_on_exit"

    invoke-direct {v11, v1, v15, v0, v14}, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;Landroid/os/Handler;)V

    iput-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveGuestOnExitPreferenceController:Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v11

    iget-object v14, v0, Lcom/android/settings/users/UserDetailsSettings;->mGuestTelephonyPreferenceController:Lcom/android/settings/users/GuestTelephonyPreferenceController;

    invoke-virtual {v14, v11}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v14, v0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveGuestOnExitPreferenceController:Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;

    invoke-virtual {v14, v11}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v14, v0, Lcom/android/settings/users/UserDetailsSettings;->mGuestTelephonyPreferenceController:Lcom/android/settings/users/GuestTelephonyPreferenceController;

    invoke-virtual {v14}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v14

    iget-object v5, v0, Lcom/android/settings/users/UserDetailsSettings;->mGuestTelephonyPreferenceController:Lcom/android/settings/users/GuestTelephonyPreferenceController;

    invoke-virtual {v14, v5}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, v0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveGuestOnExitPreferenceController:Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;

    invoke-virtual {v5}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    iget-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveGuestOnExitPreferenceController:Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;

    invoke-virtual {v5, v11}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v5, "guest_reset"

    invoke-virtual {v0, v5}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v11

    iput-object v11, v0, Lcom/android/settings/users/UserDetailsSettings;->mGuestResetPreference:Landroidx/preference/Preference;

    invoke-virtual {v11, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v11, "guest_exit"

    invoke-virtual {v0, v11}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v14

    iput-object v14, v0, Lcom/android/settings/users/UserDetailsSettings;->mGuestExitPreference:Landroidx/preference/Preference;

    iget-object v14, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v14, v14, Lcom/android/settings/users/UserCapabilities;->mIsEphemeral:Z

    if-eqz v14, :cond_4

    const v14, 0x7f14110b

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_4
    const v14, 0x7f14110c

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_2
    iget-object v12, v0, Lcom/android/settings/users/UserDetailsSettings;->mGuestExitPreference:Landroidx/preference/Preference;

    invoke-virtual {v12, v14}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v12, v0, Lcom/android/settings/users/UserDetailsSettings;->mGuestExitPreference:Landroidx/preference/Preference;

    invoke-virtual {v12, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v12, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v12, v12, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-eqz v12, :cond_5

    invoke-virtual {v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v15}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v13}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    :cond_5
    iget-object v3, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v3, :cond_6

    invoke-virtual {v0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v11}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v11}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v15}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v13}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_3
    iget-object v3, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v10}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {v0, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto/16 :goto_8

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_8
    iget-object v3, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {v0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_a
    iget-object v3, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/users/UserDetailsSettings;->openAppAndContentAccessScreen(Z)V

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v8}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_c
    :goto_4
    iget-object v2, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    iget-object v2, v0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    iget-boolean v3, v0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUserAutoCreated:Z

    if-eqz v3, :cond_d

    const v3, 0x7f141113

    goto :goto_5

    :cond_d
    const v3, 0x7f141107

    :goto_5
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    iget-boolean v2, v0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUserAutoCreated:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    iget-object v3, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_e

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_f
    invoke-virtual {v0, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_7

    :cond_10
    iget-object v2, v0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/TwoStatePreference;

    iget-object v3, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "no_outgoing_calls"

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, v0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    const v3, 0x7f143126

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {v0, v9}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_7
    const-string v2, "no_remove_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    invoke-virtual {v0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_12
    iget-object v1, v0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, v0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, v0, Lcom/android/settings/users/UserDetailsSettings;->mGrantAdminPref:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, v0, Lcom/android/settings/users/UserDetailsSettings;->mAppAndContentAccessPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, v0, Lcom/android/settings/users/UserDetailsSettings;->mAppCopyingPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_8
    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Arguments to this fragment must contain the user id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    const v0, 0x7f17028a

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUserAutoCreated:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/users/UserDetailsSettings;->initialize(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/users/UserDetailsSettings$1;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/users/UserDetailsSettings$1;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    const/4 v2, 0x6

    const v3, 0x7f1408bf

    const/4 v4, 0x4

    const/16 v5, 0x14

    const v6, 0x7f080338

    const/high16 v7, 0x1040000

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported dialogId "

    invoke-static {p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f141106

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v2, 0x7f141104

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v2, Lcom/android/settings/users/UserDetailsSettings$2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/settings/users/UserDetailsSettings$2;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    const v3, 0x7f141109

    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lcom/android/settings/users/UserDetailsSettings$2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/settings/users/UserDetailsSettings$2;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    const v3, 0x7f141101

    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v7, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestExitPreference:Landroidx/preference/Preference;

    invoke-static {p1, v1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda7;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_2
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f141105

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v2, 0x7f141103

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v2, Lcom/android/settings/users/UserDetailsSettings$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/users/UserDetailsSettings$2;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    const v3, 0x7f141102

    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v7, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestExitPreference:Landroidx/preference/Preference;

    invoke-static {p1, v1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_3

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda7;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_3
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f141111

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v2, 0x7f141110

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v2, Lcom/android/settings/users/UserDetailsSettings$2;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/users/UserDetailsSettings$2;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    const v3, 0x7f141114

    invoke-virtual {p1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v7, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestResetPreference:Landroidx/preference/Preference;

    invoke-static {p1, v1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_4

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda7;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda7;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_4
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f143113

    invoke-virtual {v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    const p1, 0x7f143112

    invoke-virtual {v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setMessage(I)V

    iget-object p1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p1, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;-><init>(Lcom/android/settings/users/UserDetailsSettings;Lcom/android/settingslib/utils/CustomDialogHelper;I)V

    const v1, 0x7f143111

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILandroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda11;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda11;-><init>(Lcom/android/settingslib/utils/CustomDialogHelper;I)V

    invoke-virtual {v0, v4, v3, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILandroid/view/View$OnClickListener;)V

    iget-object p1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGrantAdminPref:Landroidx/preference/TwoStatePreference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f14312c

    invoke-virtual {v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    const p1, 0x7f14312b

    invoke-virtual {v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setMessage(I)V

    iget-object p1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p1, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda10;-><init>(Lcom/android/settings/users/UserDetailsSettings;Lcom/android/settingslib/utils/CustomDialogHelper;I)V

    const v1, 0x7f141e96

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILandroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda11;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda11;-><init>(Lcom/android/settingslib/utils/CustomDialogHelper;I)V

    invoke-virtual {v0, v4, v3, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILandroid/view/View$OnClickListener;)V

    iget-object p1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGrantAdminPref:Landroidx/preference/TwoStatePreference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_5
    iget-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUserAutoCreated:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createResetGuestDialog(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createRemoveGuestDialog(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    :goto_0
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_6
    iget-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUserAutoCreated:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createResetGuestDialog(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createRemoveGuestDialog(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    :goto_1
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f143134

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const p1, 0x7f143133

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const p1, 0x7f143132

    invoke-virtual {v2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f143131

    invoke-virtual {v2, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f14310b

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const p1, 0x7f141b4c

    invoke-virtual {v2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v7, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/TwoStatePreference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/users/UserDetailsSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserDetailsSettings;I)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDetailsSettings;->updateDialogAnchorView$1(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mPhonePref:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0x716

    new-array v2, v1, [Landroid/util/Pair;

    invoke-virtual {p1, p2, v0, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    return v1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0x717

    new-array v2, v1, [Landroid/util/Pair;

    invoke-virtual {p1, p2, v0, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGrantAdminPref:Landroidx/preference/TwoStatePreference;

    if-ne p1, v0, :cond_3

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0x71d

    new-array v2, v1, [Landroid/util/Pair;

    invoke-virtual {p1, p2, v0, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0x71c

    new-array v2, v1, [Landroid/util/Pair;

    invoke-virtual {p1, p2, v0, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x62

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logSettingsTileClick(ILjava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x712

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x713

    goto :goto_0

    :cond_2
    const/16 v4, 0x711

    :goto_0
    new-array v5, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->canDeleteUser()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f14282a

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_3
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/pm/SemUserInfo;->isSecondNumberMode()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.settings.action.REMOVE_TWO_PHONE_USER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_4
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    :goto_1
    return v2

    :cond_6
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v4, 0x6e5

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x714

    goto :goto_2

    :cond_8
    const/16 v4, 0x715

    :goto_2
    new-array v5, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->canSwitchUserNow()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    const-string v0, "android.os.usertype.full.SECONDARY"

    iget-object p1, p1, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, p1, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-eqz v0, :cond_a

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mIsEphemeral:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->switchUser()V

    :goto_3
    return v2

    :cond_b
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppAndContentAccessPref:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserDetailsSettings;->openAppAndContentAccessScreen(Z)V

    return v2

    :cond_c
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mAppCopyingPref:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_d

    return v2

    :cond_d
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestResetPreference:Landroidx/preference/Preference;

    if-eqz v3, :cond_e

    if-ne p1, v3, :cond_e

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    return v2

    :cond_e
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestExitPreference:Landroidx/preference/Preference;

    if-eqz v3, :cond_10

    if-ne p1, v3, :cond_10

    iget-boolean p1, v0, Lcom/android/settings/users/UserCapabilities;->mIsEphemeral:Z

    if-eqz p1, :cond_f

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    goto :goto_4

    :cond_f
    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    :goto_4
    return v2

    :cond_10
    return v1
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mSwitchUserPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->canSwitchUserNow()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestUserAutoCreated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveUserPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestTelephonyPreferenceController:Lcom/android/settings/users/GuestTelephonyPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mGuestTelephonyPreferenceController:Lcom/android/settings/users/GuestTelephonyPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/users/GuestTelephonyPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveGuestOnExitPreferenceController:Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mRemoveGuestOnExitPreferenceController:Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/users/RemoveGuestOnExitPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_3
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070dd1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0708d2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p2, p1

    float-to-int p1, p2

    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080a92

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, p1, v1, v0}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(ILandroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final openAppAndContentAccessScreen(Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "new_user"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v1, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 p0, 0x0

    const v0, 0x7f14312a

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/16 p0, 0x62

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final resetGuest()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x6e3

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void
.end method

.method public showDialog(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public final switchToUserId(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->canSwitchUserNow()Z

    move-result p0

    const-string v0, "UserDetailsSettings"

    if-nez p0, :cond_0

    const-string p0, "Cannot switch current user when switching is disabled"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to switch user"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public switchUser()V
    .locals 4

    const-string v0, "UserDetailsSettings"

    const-string v1, "Couldn\'t mark the guest for deletion for user "

    const-string v2, "UserDetailSettings.switchUser"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v2, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mIsEphemeral:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v1, "Error while switching to other user."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    throw v0
.end method

.method public final updateUserAdminStatus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->mGrantAdminPref:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, p0}, Landroid/os/UserManager;->revokeUserAdmin(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mUserManager:Landroid/os/UserManager;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->setUserAdmin(I)V

    :cond_1
    :goto_0
    return-void
.end method
