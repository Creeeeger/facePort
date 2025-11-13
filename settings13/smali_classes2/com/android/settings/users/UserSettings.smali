.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/UserSettings$AddUserNowImpl;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static final USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAddGuest:Lcom/android/settingslib/RestrictedPreference;

.field mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

.field mAddUser:Lcom/android/settingslib/RestrictedPreference;

.field private mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

.field private mAddingUser:Z

.field private mAddingUserName:Ljava/lang/String;

.field private mConfigSupervisedUserCreationPackage:Ljava/lang/String;

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDialog:Landroid/app/Dialog;

.field private mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mGuestUserAutoCreated:Z

.field private mHandler:Landroid/os/Handler;

.field mMePreference:Lcom/android/settings/users/UserPreference;

.field private mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

.field private mPendingUserIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingUserName:Ljava/lang/CharSequence;

.field private mRemovingUserId:I

.field private mShouldUpdateUserList:Z

.field private mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

.field private mTimeoutToUserZeroPreferenceController:Lcom/android/settings/users/TimeoutToUserZeroPreferenceController;

.field private mUserCaps:Lcom/android/settings/users/UserCapabilities;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

.field mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mUserListCategory:Landroidx/preference/PreferenceGroup;

.field mUserListMeCategory:Landroidx/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/users/UserPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$20WaGS1eJQNlxirk8cr1ctKVjTg(Lcom/android/settings/users/UserSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->lambda$onCreateDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6z409nBTLOsvKCMeI5s1Ov5Kvpc(Lcom/android/settings/users/UserSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->lambda$onCreateDialog$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7cxpGwyTu100cAoKMeo1-Ktv7yk(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/users/UserSettings;->lambda$buildEditCurrentUserDialog$7(Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M026_LQBy1GGGaoIvOj_irMTrmA(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->lambda$scheduleGuestCreation$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$MH_zLiHjjUYxgGa_npGDSYhZ2eE(Landroid/content/pm/UserInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->lambda$getRealUsersCount$11(Landroid/content/pm/UserInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RqEQ0qc6lAGjLQwPsLdDxtI5980(Lcom/android/settings/users/UserSettings;Lcom/android/settingslib/users/UserCreatingDialog;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->lambda$onAddGuestClicked$2(Lcom/android/settingslib/users/UserCreatingDialog;Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5ifwo9SHnk11BLN-JSTrdQrSyM(Lcom/android/settings/users/UserSettings;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->lambda$new$1(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zo_Fgrd7oOPXzMKMLTZ6l9FLWEE(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->lambda$buildAddUserDialog$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$cjnO2drnHafntdjkFU8kbNLNLxc(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->lambda$buildEditCurrentUserDialog$6(Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rtJDoPnqQSHa9ktrknaWfK7XNbk(Lcom/android/settings/users/UserSettings;ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/users/UserSettings;->lambda$buildAddUserDialog$8(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$toQ0SLMP9_2xm3bvkGesgFBNHlw(Lcom/android/settings/users/UserSettings;Lcom/android/settingslib/users/UserCreatingDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->lambda$onAddGuestClicked$3(Lcom/android/settingslib/users/UserCreatingDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xxp8sLQFWoSavF1cRWDPh89Wcok(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/users/UserSettings;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingUserIcon(Lcom/android/settings/users/UserSettings;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemovingUserId(Lcom/android/settings/users/UserSettings;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserLock(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAddingUser(Lcom/android/settings/users/UserSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingUserIcon(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingUserName(Lcom/android/settings/users/UserSettings;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRemovingUserId(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateRestrictedProfile(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateTrustedUser(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->createTrustedUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinishLoadProfile(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchChooseLockscreen(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monAddUserClicked(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserCreated(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserCreationFailed(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->onUserCreationFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveUserNow(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDialogAnchorView(Lcom/android/settings/users/UserSettings;Landroidx/preference/Preference;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    .line 1757
    new-instance v0, Lcom/android/settings/users/UserSettings$12;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$12;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 1770
    new-instance v0, Lcom/android/settings/users/UserSettings$13;

    sget v1, Lcom/android/settings/R$xml;->user_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/users/UserSettings$13;-><init>(I)V

    sput-object v0, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 205
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 207
    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 214
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 219
    new-instance v0, Lcom/android/settingslib/users/EditUserInfoController;

    const-string v1, "com.android.settings.files"

    invoke-direct {v0, v1}, Lcom/android/settingslib/users/EditUserInfoController;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 226
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserPreferences:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 252
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 271
    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private addUserNow(I)V
    .locals 2

    const-string v0, "UserSettings.addUserNow"

    const/4 v1, 0x0

    .line 1124
    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 1125
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1126
    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-ne p1, v1, :cond_1

    .line 1128
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1129
    :cond_0
    sget v1, Lcom/android/settings/R$string;->user_new_user_name:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1130
    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1131
    :cond_2
    sget v1, Lcom/android/settings/R$string;->user_new_profile_name:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    .line 1132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    new-instance v0, Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    .line 1135
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1136
    new-instance v0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/users/UserSettings$AddUserNowImpl;-><init>(Lcom/android/settings/users/UserSettings;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception p0

    .line 1132
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static assignDefaultPhoto(Landroid/content/Context;I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo v0, "user"

    .line 1708
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1709
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1710
    invoke-virtual {v0, p1, p0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    return p0
.end method

.method private buildAddUserDialog(I)Landroid/app/Dialog;
    .locals 9

    .line 1030
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    .line 1032
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    .line 1035
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 1037
    sget v6, Lcom/android/settingslib/R$string;->user_info_settings_title:I

    goto :goto_0

    .line 1038
    :cond_0
    sget v6, Lcom/android/settingslib/R$string;->profile_info_settings_title:I

    .line 1036
    :goto_0
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/users/UserSettings;I)V

    new-instance v8, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda8;

    invoke-direct {v8, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 1031
    invoke-virtual/range {v1 .. v8}, Lcom/android/settingslib/users/EditUserInfoController;->createDialog(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p0

    .line 1051
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private buildEditCurrentUserDialog()Landroid/app/Dialog;
    .locals 8

    .line 992
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1000
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1, v2, v0}, Lcom/android/settingslib/Utils;->secGetUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1003
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    new-instance v4, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/users/UserSettings;)V

    iget-object v5, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    sget v6, Lcom/android/settingslib/R$string;->profile_info_settings_title:I

    .line 1008
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0, v3, v0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;-><init>(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;)V

    const/4 p0, 0x0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    .line 1003
    invoke-virtual/range {v0 .. v7}, Lcom/android/settingslib/users/EditUserInfoController;->createDialog(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private canSwitchUserNow()Z
    .locals 0

    .line 1470
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

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

.method private centerAndTint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1548
    sget-object v0, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 1549
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1551
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->user_avatar_bg:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1552
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1553
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$dimen;->user_icon_size:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1558
    invoke-virtual {v1, v0, p0, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const/16 p0, 0x11

    .line 1559
    invoke-virtual {v1, v0, p0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    return-object v1
.end method

.method static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 3

    .line 1717
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_0

    .line 1719
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 1722
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    .line 1721
    invoke-static {v1, v0, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1726
    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    return-void

    :cond_1
    const-string/jumbo v1, "user"

    .line 1730
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 1731
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1732
    invoke-virtual {p0, p1, v1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1734
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1

    .line 1218
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x0

    return-object p0

    .line 1222
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method private createTrustedUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 1

    .line 1227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x0

    return-object p0

    .line 1232
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1657
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->user_icon_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/graphics/Bitmap;I)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object p0

    return-object p0
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 3

    .line 536
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 543
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 544
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 547
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1686
    sget-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1689
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1688
    invoke-static {p0, v0}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1691
    sget-object p0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1597
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1599
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1598
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 1601
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private hasLockscreenSecurity()Z
    .locals 1

    .line 552
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 553
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method private hideUserCreatingDialog()V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private isCurrentUserGuest()Z
    .locals 0

    .line 1466
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p0, p0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    return p0
.end method

.method private synthetic lambda$buildAddUserDialog$8(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1040
    iput-object p3, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    .line 1041
    iput-object p2, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    .line 1042
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method private synthetic lambda$buildAddUserDialog$9()V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1046
    :try_start_0
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    .line 1047
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    .line 1048
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$buildEditCurrentUserDialog$6(Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1016
    invoke-static {p2}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1012
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$buildEditCurrentUserDialog$7(Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eq p4, p1, :cond_0

    .line 1011
    new-instance p1, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0, p2, p4}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda13;-><init>(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1018
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1021
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1022
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, p3}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$getRealUsersCount$11(Landroid/content/pm/UserInfo;)Z
    .locals 1

    .line 1571
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 1

    .line 245
    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "UserSettings"

    const-string v0, "DesktopMode Enabled, Finish User settings"

    .line 246
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda10;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAddGuestClicked$2(Lcom/android/settingslib/users/UserCreatingDialog;Landroid/content/pm/UserInfo;)V
    .locals 0

    .line 629
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    if-nez p2, :cond_0

    .line 631
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settingslib/R$string;->add_guest_failed:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 633
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 636
    invoke-direct {p0, p2, p1}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;Z)V

    return-void
.end method

.method private synthetic lambda$onAddGuestClicked$3(Lcom/android/settingslib/users/UserCreatingDialog;)V
    .locals 4

    .line 623
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x6e4

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const-string v0, "UserSettings.addGuest"

    .line 624
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 626
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 628
    new-instance v1, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda12;-><init>(Lcom/android/settings/users/UserSettings;Lcom/android/settingslib/users/UserCreatingDialog;Landroid/content/pm/UserInfo;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 969
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->resetGuest()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 977
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->resetGuest()V

    return-void
.end method

.method private synthetic lambda$scheduleGuestCreation$10()V
    .locals 3

    .line 1284
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1285
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez v0, :cond_0

    const-string v0, "UserSettings"

    const-string v1, "Unable to automatically recreate guest user"

    .line 1287
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.PASSWORD_COMPLEXITY"

    const/high16 v2, 0x10000

    .line 561
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 563
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1576
    new-instance v0, Lcom/android/settings/users/UserSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/util/List;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    .line 1593
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadProfile()V
    .locals 2

    .line 500
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 507
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void

    .line 517
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 532
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onAddGuestClicked()V
    .locals 3

    .line 618
    new-instance v0, Lcom/android/settingslib/users/UserCreatingDialog;

    .line 619
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;Z)V

    .line 620
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 622
    new-instance v1, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/users/UserSettings;Lcom/android/settingslib/users/UserCreatingDialog;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private onAddSupervisedUserClicked()V
    .locals 3

    .line 602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.os.action.CREATE_SUPERVISED_USER"

    .line 603
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mConfigSupervisedUserCreationPackage:Ljava/lang/String;

    .line 604
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 605
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 608
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 610
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/users/AddSupervisedUserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 611
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    .line 593
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 587
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 598
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onRemoveUserClicked(I)V
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_0

    .line 644
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 p1, 0x1

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 647
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onUserCreated(I)V
    .locals 1

    .line 651
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hideUserCreatingDialog()V

    .line 653
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 656
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 657
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    const/4 v0, 0x1

    .line 658
    invoke-direct {p0, p1, v0}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;Z)V

    return-void
.end method

.method private onUserCreationFailed()V
    .locals 3

    .line 668
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->add_user_failed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 671
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hideUserCreatingDialog()V

    return-void
.end method

.method private openUserDetails(Landroid/content/pm/UserInfo;Z)V
    .locals 4

    .line 689
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 691
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 692
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v3, "user_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "new_user"

    .line 693
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 695
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/users/UserDetailsSettings;

    .line 696
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    .line 697
    invoke-virtual {p2, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 698
    invoke-virtual {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    .line 700
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    .line 701
    invoke-virtual {p2, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    .line 703
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_1
    return-void
.end method

.method private removeThisUser()V
    .locals 3

    .line 1104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_user_mode_delete_toast_on_during_call:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1109
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v0

    const-string v1, "UserSettings"

    if-nez v0, :cond_1

    const-string p0, "Cannot remove current user when switching is disabled"

    .line 1110
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1114
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 1115
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/UserManager;->removeUserWhenPossible(Landroid/os/UserHandle;Z)I

    .line 1117
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to remove self user"

    .line 1119
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private removeUserNow()V
    .locals 2

    .line 1082
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_user_mode_delete_toast_on_during_call:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1086
    :cond_0
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1087
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    goto :goto_0

    .line 1089
    :cond_1
    new-instance v0, Lcom/android/settings/users/UserSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_0
    return-void
.end method

.method private setPhotoId(Landroidx/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 1

    .line 1605
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 1607
    invoke-direct {p0, p2}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private updateAddGuest(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 1474
    iget-object p2, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p2, p2, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    if-eqz p2, :cond_1

    .line 1478
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz p1, :cond_1

    .line 1480
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1484
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1486
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 1487
    iget-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1488
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    const p2, 0x10405ce

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1489
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    sget p2, Lcom/android/settings/R$string;->guest_resetting:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1490
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1492
    :cond_0
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    sget p2, Lcom/android/settingslib/R$string;->guest_new_guest:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1493
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1496
    :cond_1
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private updateAddSupervisedUser(Landroid/content/Context;)V
    .locals 2

    .line 1511
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mConfigSupervisedUserCreationPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/users/UserSettings;->updateAddUserCommon(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;Z)V

    .line 1513
    sget v0, Lcom/android/settings/R$drawable;->ic_add_supervised_user:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1514
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->centerAndTint(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1516
    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private updateAddUser(Landroid/content/Context;)V
    .locals 2

    .line 1501
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/users/UserSettings;->updateAddUserCommon(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;Z)V

    .line 1505
    sget v0, Lcom/android/settings/R$drawable;->sec_tw_list_icon_create_mtrl:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1506
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateAddUserCommon(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;Z)V
    .locals 3

    .line 1522
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v0, :cond_6

    .line 1523
    :cond_0
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 1525
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1526
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 1527
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "android.os.usertype.full.SECONDARY"

    .line 1528
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->canAddMoreUsers(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v0, "android.os.usertype.full.RESTRICTED"

    .line 1530
    invoke-virtual {p3, v0}, Landroid/os/UserManager;->canAddMoreUsers(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move p3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p3, p1

    :goto_1
    if-eqz p3, :cond_3

    .line 1531
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, p1

    :cond_3
    invoke-virtual {p2, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/4 p1, 0x0

    if-nez p3, :cond_4

    .line 1534
    sget p3, Lcom/android/settings/R$string;->user_add_max_count:I

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1536
    :cond_4
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1538
    :goto_2
    invoke-virtual {p2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1540
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p3, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 1539
    :cond_5
    invoke-virtual {p2, p1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    .line 1543
    :cond_6
    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 721
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 722
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 723
    iget p1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 724
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_1

    if-lez p0, :cond_1

    .line 727
    invoke-virtual {p2, p1, p0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 492
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method


# virtual methods
.method exitGuest()V
    .locals 4

    .line 1243
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x6e3

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1248
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x259

    return p0

    :pswitch_1
    const/16 p0, 0x258

    return p0

    :pswitch_2
    const/16 p0, 0x257

    return p0

    :pswitch_3
    const/16 p0, 0x256

    return p0

    :pswitch_4
    const/16 p0, 0x252

    return p0

    :cond_0
    const/16 p0, 0x253

    return p0

    :cond_1
    const/16 p0, 0x24f

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHelpResource()I
    .locals 0

    .line 1672
    sget p0, Lcom/android/settings/R$string;->help_url_users:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x60

    return p0
.end method

.method getRealUsersCount()I
    .locals 2

    .line 1569
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 1570
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;-><init>()V

    .line 1571
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1572
    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 293
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 297
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 303
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 307
    :cond_0
    new-instance v1, Lcom/android/settings/users/MultiUserSwitchBarController;

    new-instance v2, Lcom/android/settings/widget/MainSwitchBarController;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/MainSwitchBarController;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    invoke-direct {v1, p1, v2, p0}, Lcom/android/settings/users/MultiUserSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;)V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    .line 309
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 568
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_2

    .line 571
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 572
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 574
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->scheduleGuestCreation()V

    goto :goto_0

    .line 578
    :cond_1
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 314
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 315
    sget v0, Lcom/android/settings/R$xml;->user_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 317
    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "desktopmode"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110164

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    .line 329
    new-instance v0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string/jumbo v2, "user_settings_add_users_when_locked"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 332
    new-instance v0, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    const-string/jumbo v2, "multiuser_top_intro"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    .line 335
    new-instance v0, Lcom/android/settings/users/TimeoutToUserZeroPreferenceController;

    const-string/jumbo v2, "timeout_to_user_zero_preference"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/TimeoutToUserZeroPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mTimeoutToUserZeroPreferenceController:Lcom/android/settings/users/TimeoutToUserZeroPreferenceController;

    .line 338
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 339
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 340
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 341
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mTimeoutToUserZeroPreferenceController:Lcom/android/settings/users/TimeoutToUserZeroPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/users/TimeoutToUserZeroPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 343
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 344
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz p1, :cond_2

    const-string/jumbo v0, "removing_user"

    .line 347
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 353
    :cond_2
    invoke-static {v1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    const-string/jumbo p1, "user"

    .line 354
    invoke-virtual {v1, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 355
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez p1, :cond_3

    return-void

    .line 359
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    const-string/jumbo v0, "user_list_me"

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserListMeCategory:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v0, "user_list"

    .line 364
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    .line 365
    new-instance v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p1}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const-string/jumbo p1, "user_me"

    .line 366
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 368
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz p1, :cond_4

    .line 369
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    sget v0, Lcom/android/settings/R$string;->user_admin:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_4
    const-string p1, "guest_add"

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    .line 373
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "user_add"

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    .line 376
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v0, :cond_5

    .line 378
    sget v0, Lcom/android/settingslib/R$string;->user_add_user:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 380
    :cond_5
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->setConfigSupervisedUserCreationPackage()V

    const-string/jumbo p1, "supervised_user_add"

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

    .line 384
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 386
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v4, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 390
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUI()V

    const/4 p1, 0x0

    .line 391
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    .line 734
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 739
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 740
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    packed-switch p1, :pswitch_data_0

    return-object v1

    .line 962
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz p1, :cond_2

    .line 968
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createResetGuestDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 976
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createRemoveGuestDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    .line 982
    :goto_0
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 983
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    .line 949
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    .line 950
    :try_start_0
    sget v0, Lcom/android/settingslib/R$string;->user_new_profile_name:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    .line 952
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    .line 953
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    invoke-direct {p0, v5}, Lcom/android/settings/users/UserSettings;->buildAddUserDialog(I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    .line 957
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 958
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :catchall_0
    move-exception p0

    .line 953
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 936
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    .line 937
    :try_start_2
    sget v0, Lcom/android/settingslib/R$string;->user_new_user_name:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    .line 939
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    .line 940
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 943
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->buildAddUserDialog(I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    .line 944
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 945
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :catchall_1
    move-exception p0

    .line 940
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 929
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->buildEditCurrentUserDialog()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    .line 931
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 932
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    .line 907
    :pswitch_4
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/R$string;->guest_remove_guest_dialog_title:I

    .line 909
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->user_exit_guest_confirm_message:I

    .line 910
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->user_exit_guest_dialog_remove:I

    new-instance v2, Lcom/android/settings/users/UserSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 911
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 918
    invoke-virtual {p1, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 919
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    .line 922
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 923
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    .line 886
    :pswitch_5
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/R$string;->user_need_lock_message:I

    .line 888
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settingslib/R$string;->user_set_lock_button:I

    new-instance v2, Lcom/android/settings/users/UserSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 889
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 896
    invoke-virtual {p1, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 897
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    .line 900
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 901
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    .line 848
    :pswitch_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 849
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "title"

    .line 850
    sget v6, Lcom/android/settingslib/R$string;->user_add_user_item_title:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "summary"

    .line 852
    sget v6, Lcom/android/settingslib/R$string;->user_add_user_item_summary:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "title"

    .line 855
    sget v7, Lcom/android/settingslib/R$string;->user_add_profile_item_title:I

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "summary"

    .line 857
    sget v7, Lcom/android/settingslib/R$string;->user_add_profile_item_summary:I

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    new-instance v6, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 862
    new-instance v7, Landroid/widget/SimpleAdapter;

    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/settings/R$layout;->two_line_list_item:I

    const-string/jumbo v0, "title"

    const-string/jumbo v8, "summary"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [I

    sget v0, Lcom/android/settings/R$id;->title:I

    aput v0, v5, v4

    sget v0, Lcom/android/settings/R$id;->summary:I

    aput v0, v5, v2

    move-object v0, v7

    move-object v2, p1

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 866
    sget p1, Lcom/android/settingslib/R$string;->user_add_user_type_title:I

    invoke-virtual {v6, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 867
    new-instance p1, Lcom/android/settings/users/UserSettings$7;

    invoke-direct {p1, p0}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v6, v7, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 878
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    .line 879
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 880
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    .line 804
    :pswitch_7
    new-instance p0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/settings/R$string;->user_cannot_manage_message:I

    .line 805
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->ok:I

    .line 808
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 810
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 812
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "key_add_user_long_message_displayed"

    .line 814
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 817
    sget v4, Lcom/android/settingslib/R$string;->user_add_user_message_short:I

    goto :goto_1

    .line 818
    :cond_4
    sget v4, Lcom/android/settingslib/R$string;->user_add_user_message_long:I

    .line 821
    :goto_1
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settingslib/R$string;->user_add_user_title:I

    .line 823
    invoke-virtual {v5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 824
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v4, Lcom/android/settings/R$string;->ok:I

    new-instance v5, Lcom/android/settings/users/UserSettings$6;

    invoke-direct {v5, p0, v2, p1}, Lcom/android/settings/users/UserSettings$6;-><init>(Lcom/android/settings/users/UserSettings;ZLandroid/content/SharedPreferences;)V

    .line 827
    invoke-virtual {v0, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 839
    invoke-virtual {p1, v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 840
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    .line 843
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView(Landroidx/preference/Preference;Landroid/app/Dialog;)V

    .line 844
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    .line 790
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    new-instance v1, Lcom/android/settings/users/UserSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    .line 799
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    .line 800
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 458
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-nez v0, :cond_1

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->user_remove_user_menu:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-interface {p1, v5, v3, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 463
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 466
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 467
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string/jumbo v3, "no_remove_user"

    .line 466
    invoke-static {v1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 468
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 471
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 431
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 433
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 710
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 712
    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1664
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, -0x1

    .line 1665
    :try_start_0
    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 1666
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 1667
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onMultiUserSwitchChanged(Z)V
    .locals 0

    .line 487
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUI()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 476
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 478
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    return v1

    .line 481
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 421
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 423
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    .line 424
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 1613
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1614
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/16 p1, 0x9

    .line 1624
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v1

    .line 1627
    :cond_1
    instance-of v0, p1, Lcom/android/settings/users/UserPreference;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1628
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    check-cast p1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1629
    invoke-direct {p0, p1, v2}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;Z)V

    return v1

    .line 1631
    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_4

    .line 1634
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    .line 1635
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 1637
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    :goto_0
    return v1

    .line 1640
    :cond_4
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_5

    .line 1641
    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v3, 0x6fa

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const-string p1, "UserSettings.addSupervisedUser"

    .line 1642
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1643
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->onAddSupervisedUserClicked()V

    .line 1644
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v1

    .line 1646
    :cond_5
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_6

    .line 1647
    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1648
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->onAddGuestClicked()V

    return v1

    :cond_6
    return v2
.end method

.method public onResume()V
    .locals 3

    .line 396
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 399
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_1

    return-void

    .line 406
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 409
    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 410
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mTimeoutToUserZeroPreferenceController:Lcom/android/settings/users/TimeoutToUserZeroPreferenceController;

    .line 411
    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 413
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    if-eqz v0, :cond_2

    .line 414
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUI()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 443
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const-string/jumbo v1, "removing_user"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1742
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 1744
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1745
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->sec_widget_list_item_padding_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 1746
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->sec_app_list_item_icon_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 1747
    new-instance p2, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;

    .line 1748
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->sec_top_level_list_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/settings/widget/SecDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)V

    .line 1749
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method resetGuest()V
    .locals 2

    .line 1257
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->isCurrentUserGuest()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1260
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 1264
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t mark the guest for deletion for user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UserSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1269
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->exitGuest()V

    .line 1270
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->scheduleGuestCreation()V

    return-void
.end method

.method scheduleGuestCreation()V
    .locals 3

    .line 1279
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1283
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method setConfigSupervisedUserCreationPackage()V
    .locals 2

    .line 1461
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104039c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mConfigSupervisedUserCreationPackage:Ljava/lang/String;

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settingslib/users/EditUserInfoController;->startingActivityForResult()V

    .line 450
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method updateUserList()V
    .locals 14

    .line 1301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1305
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    .line 1307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1308
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 1312
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    .line 1313
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string/jumbo v9, "user_guest"

    const/4 v10, 0x0

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 1314
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_2

    .line 1320
    :cond_3
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-ne v11, v12, :cond_4

    .line 1321
    iget-object v9, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    goto :goto_4

    .line 1323
    :cond_4
    new-instance v11, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    iget v13, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v11, v12, v10, v13}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1324
    iget-object v12, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1325
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    invoke-virtual {v11, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1327
    invoke-virtual {v11, v4}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1328
    invoke-virtual {v11, v6}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 1330
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1331
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1332
    invoke-virtual {v11, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1333
    iget-object v9, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v9, v9, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v9, :cond_5

    .line 1335
    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v9

    .line 1334
    invoke-virtual {v11, v9}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    .line 1337
    :cond_5
    invoke-virtual {v11, v10}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    .line 1340
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1342
    sget v9, Lcom/android/settings/R$string;->user_admin:I

    invoke-virtual {v11, v9}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_7
    :goto_3
    move-object v9, v11

    :goto_4
    if-nez v9, :cond_8

    goto/16 :goto_2

    .line 1349
    :cond_8
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eq v10, v11, :cond_b

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1352
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1353
    sget v10, Lcom/android/settings/R$string;->user_summary_restricted_not_set_up:I

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_6

    .line 1355
    :cond_9
    sget v10, Lcom/android/settings/R$string;->user_summary_not_set_up:I

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1358
    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v10, v10, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v10, :cond_a

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow()Z

    move-result v10

    if-eqz v10, :cond_a

    move v10, v6

    goto :goto_5

    :cond_a
    move v10, v5

    :goto_5
    invoke-virtual {v9, v10}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_6

    .line 1360
    :cond_b
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1361
    sget v10, Lcom/android/settings/R$string;->user_summary_restricted_profile:I

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1363
    :cond_c
    :goto_6
    iget-object v10, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 1364
    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_d

    .line 1366
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1369
    :cond_d
    invoke-direct {p0, v9, v8}, Lcom/android/settings/users/UserSettings;->setPhotoId(Landroidx/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_2

    .line 1373
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 1378
    :cond_f
    iget-boolean v4, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v4, :cond_10

    .line 1379
    new-instance v4, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, -0xa

    invoke-direct {v4, v7, v10, v8}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1381
    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1382
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1383
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1384
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    :cond_10
    sget-object v4, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1392
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/users/UserPreference;

    .line 1393
    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    if-eq v7, v8, :cond_11

    .line 1394
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1395
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    :cond_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1404
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 1405
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 1420
    :cond_13
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListMeCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1422
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1425
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 1426
    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    .line 1425
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 1427
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v4, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 1429
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    .line 1430
    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    .line 1429
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 1431
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    invoke-virtual {v4, v2}, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 1433
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListMeCategory:Landroidx/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1435
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1437
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->updateAddGuest(Landroid/content/Context;Z)V

    .line 1438
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->updateAddUser(Landroid/content/Context;)V

    .line 1439
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->updateAddSupervisedUser(Landroid/content/Context;)V

    .line 1441
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-nez v0, :cond_14

    return-void

    .line 1445
    :cond_14
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserPreference;

    const v2, 0x7fffffff

    .line 1446
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1449
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListMeCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v2, v6, :cond_15

    .line 1450
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListMeCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_7

    .line 1452
    :cond_15
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_7

    :cond_16
    return-void
.end method
