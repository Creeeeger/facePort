.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field public static final USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

.field public static final sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;


# instance fields
.field mAddGuest:Lcom/android/settingslib/RestrictedPreference;

.field mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

.field mAddUser:Lcom/android/settingslib/RestrictedPreference;

.field public mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

.field public mAddingUser:Z

.field public mAddingUserName:Ljava/lang/String;

.field public mConfigSupervisedUserCreationPackage:Ljava/lang/String;

.field public final mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

.field public mDefaultIconDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

.field public final mDesktopModeListener:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda0;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mDialog:Landroid/app/Dialog;

.field public final mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field mGuestCategory:Landroidx/preference/PreferenceGroup;

.field public final mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mGuestExitPreference:Landroidx/preference/Preference;

.field mGuestResetPreference:Landroidx/preference/Preference;

.field public mGuestUserAutoCreated:Z

.field mGuestUserCategory:Landroidx/preference/PreferenceGroup;

.field public final mHandler:Lcom/android/settings/users/UserSettings$1;

.field mMePreference:Lcom/android/settings/users/UserPreference;

.field public mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

.field public mPendingUserIcon:Landroid/graphics/drawable/Drawable;

.field public mPendingUserIsAdmin:Z

.field public mPendingUserName:Ljava/lang/CharSequence;

.field public mRemovingUserId:I

.field public mShouldUpdateUserList:Z

.field public mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

.field public mTimeoutToDockUserPreferenceController:Lcom/android/settings/users/TimeoutToDockUserPreferenceController;

.field public mUserCaps:Lcom/android/settings/users/UserCapabilities;

.field public final mUserChangeReceiver:Lcom/android/settings/users/UserSettings$2;

.field public mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

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

.field public mUserListMeCategory:Landroidx/preference/PreferenceGroup;

.field public final mUserLock:Ljava/lang/Object;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$H_6GDMyHVA7xwG1CoJJq21CpTnc(Lcom/android/settings/users/UserSettings;Landroid/content/Context;Lcom/android/settingslib/users/UserCreatingDialog;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x6e4

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const-string v0, "UserSettings.addGuest"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, -0x2710

    invoke-static {v3, v4}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v1, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/users/UserSettings;Lcom/android/settingslib/users/UserCreatingDialog;Landroid/content/pm/UserInfo;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/settings/users/UserSettings$11;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    new-instance v0, Lcom/android/settings/users/UserSettings$12;

    const v1, 0x7f17028c

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/settingslib/users/EditUserInfoController;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settingslib/users/EditUserInfoController;->mMaxToast:Landroid/widget/Toast;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    new-instance v0, Lcom/android/settingslib/users/CreateUserDialogController;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeListener:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Lcom/android/settings/users/UserSettings$1;

    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Lcom/android/settings/users/UserSettings$2;

    return-void
.end method

.method public static assignDefaultPhoto(Landroid/content/Context;I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 4

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    return-void

    :cond_1
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget v3, Lcom/android/settingslib/drawable/CircleFramedDrawable;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0713a1

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance v3, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    invoke-direct {v3, v2, p0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-static {v3}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V
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

    if-lez v1, :cond_1

    if-lez p1, :cond_1

    invoke-virtual {p0, v1, p1}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final addUserNow(I)V
    .locals 3

    const-string v0, "UserSettings.addUserNow"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x7f143120

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const v2, 0x7f14311f

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroidx/fragment/app/FragmentActivity;Z)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCreatingDialog:Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/users/UserSettings;->createUser(ILjava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final buildAddUserDialog(I)Landroid/app/Dialog;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda10;-><init>(Lcom/android/settings/users/UserSettings;)V

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda13;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda13;-><init>(Lcom/android/settings/users/UserSettings;I)V

    new-instance v8, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;

    const/4 p1, 0x1

    invoke-direct {v8, p0, p1}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/users/UserSettings;I)V

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/settingslib/users/EditUserInfoController;->createDialog(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda10;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {}, Landroid/os/UserManager;->isMultipleAdminEnabled()Z

    move-result v4

    new-instance v5, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda15;

    invoke-direct {v5, p0, p1}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda15;-><init>(Lcom/android/settings/users/UserSettings;I)V

    new-instance v6, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;

    const/4 p1, 0x2

    invoke-direct {v6, p0, p1}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/users/CreateUserDialogController;->createDialog(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda10;ZLcom/android/settings/users/UserSettings$$ExternalSyntheticLambda15;Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;)Landroid/app/Dialog;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final canSwitchUserNow$1()Z
    .locals 0

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

.method public clearAndExitGuest()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

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

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "Couldn\'t mark the guest for deletion for user "

    const-string v1, "UserSettings"

    invoke-static {v0, p0, v1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser$1()V

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->scheduleGuestCreation()V

    :cond_2
    return-void
.end method

.method public createUser(ILjava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    new-instance v7, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/users/UserSettings;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/content/Context;)V

    invoke-static {v7}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/16 p0, 0x10

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
    const/16 p0, 0x7d0

    return p0

    :cond_1
    const/16 p0, 0x253

    return p0

    :cond_2
    const/16 p0, 0x24f

    return p0

    nop

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

.method public final getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0713aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v2, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    invoke-direct {v2, v0, v1}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v2, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x60

    return p0
.end method

.method public getRealUsersCount()I
    .locals 2

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object v0, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    new-instance v1, Lcom/android/settings/users/MultiUserSwitchBarController;

    new-instance v2, Lcom/android/settings/widget/MainSwitchBarController;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/MainSwitchBarController;-><init>(Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    invoke-direct {v1, p1, v2, p0}, Lcom/android/settings/users/MultiUserSwitchBarController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/widget/MainSwitchBarController;Lcom/android/settings/users/MultiUserSwitchBarController$OnMultiUserSwitchChangedListener;)V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mSwitchBarController:Lcom/android/settings/users/MultiUserSwitchBarController;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_OPEN_DIALOG_USER_PROFILE_EDITOR"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_2
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_3

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->scheduleGuestCreation()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    iget-object v0, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    iput-boolean v1, p0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/users/EditUserPhotoController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onAddUserClicked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

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

    :cond_0
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f17028c

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "desktopmode"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11101aa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    new-instance v0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v2, "user_settings_add_users_when_locked"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    new-instance v0, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    const-string v2, "multiuser_top_intro"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    new-instance v0, Lcom/android/settings/users/TimeoutToDockUserPreferenceController;

    const-string v2, "timeout_to_dock_user_preference"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/TimeoutToDockUserPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mTimeoutToDockUserPreferenceController:Lcom/android/settings/users/TimeoutToDockUserPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mTimeoutToDockUserPreferenceController:Lcom/android/settings/users/TimeoutToDockUserPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/users/TimeoutToDockUserPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string v2, "removing_user"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    :cond_1
    const-string v2, "create_user"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "awaiting_result"

    const-string v4, "pending_photo"

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    const-string v4, "current_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const-string v4, "admin_status"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    :cond_2
    const-string v4, "saved_name"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v2, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    :cond_4
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v2, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    :cond_5
    :goto_0
    invoke-static {v1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    const-string p1, "user"

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez p1, :cond_6

    return-void

    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    const-string v2, "user_list_me"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListMeCategory:Landroidx/preference/PreferenceGroup;

    const-string v2, "user_list"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    new-instance v2, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const-string p1, "user_me"

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "guest_add"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "user_add"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez v2, :cond_7

    const v2, 0x7f1430d2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_7
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->setConfigSupervisedUserCreationPackage()V

    const-string p1, "supervised_user_add"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Lcom/android/settings/users/UserSettings$2;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v4, Lcom/android/settings/users/UserSettings;->USER_REMOVED_INTENT_FILTER:Landroid/content/IntentFilter;

    iget-object v6, p0, Lcom/android/settings/users/UserSettings;->mHandler:Lcom/android/settings/users/UserSettings$1;

    const/4 v7, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUI$4()V

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    return-void
.end method

.method public final onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

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

    new-instance v3, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const v3, 0x7f143120

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/high16 v5, 0x1040000

    packed-switch p1, :pswitch_data_0

    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/users/UserDialogs;->createResetGuestDialog(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    const v0, 0x7f14311f

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserSettings;->buildAddUserDialog(I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserSettings;->buildAddUserDialog(I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1, v1, v0}, Lcom/android/settingslib/Utils;->secGetUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    new-instance v2, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda10;-><init>(Lcom/android/settings/users/UserSettings;)V

    iget-object v4, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    new-instance v5, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v3, v0}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda11;-><init>(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;Landroid/content/pm/UserInfo;)V

    new-instance v6, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda12;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settingslib/users/EditUserInfoController;->createDialog(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-static {v1, p1}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_4
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f14110f

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v0, 0x7f14310e

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v0, Lcom/android/settings/users/UserSettings$5;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;I)V

    const v2, 0x7f14310f

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v5, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_5
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f14311e

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v0, Lcom/android/settings/users/UserSettings$5;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;I)V

    const v2, 0x7f14312e

    invoke-virtual {p1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v5, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    const v3, 0x7f1430d4

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "summary"

    const v3, 0x7f1430d3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "title"

    const v4, 0x7f1430d1

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "summary"

    const v4, 0x7f1430d0

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/SimpleAdapter;

    iget-object v0, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const-string v0, "title"

    const-string v3, "summary"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0a1041

    const v3, 0x7f0a0f81

    filled-new-array {v0, v3}, [I

    move-result-object v5

    const v3, 0x7f0d0bec

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const v0, 0x7f1430d9

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    new-instance v0, Lcom/android/settings/users/UserSettings$5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {p1, v6, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :pswitch_7
    new-instance p0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1430e7

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const p1, 0x7f141b4b

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserSettings;->buildAddUserDialog(I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-static {p1, v0}, Lcom/android/settings/users/UserSettings;->updateDialogAnchorView$2(Landroid/app/Dialog;Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    return-object p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    new-instance v1, Lcom/android/settings/users/UserSettings$5;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

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

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow$1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isProfile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f143127

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "no_remove_user"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Lcom/android/settings/users/UserSettings$2;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onDialogShowing()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getDialogFragment()Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    iget v0, v0, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->mDialogId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->finish()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v2, :cond_0

    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeListener:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x60

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logSettingsTileClick(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez p1, :cond_0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v2

    :cond_0
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;ZLandroid/content/Context;)V

    return v2

    :cond_1
    instance-of v0, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    check-cast p1, Lcom/android/settings/users/UserPreference;

    iget p1, p1, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings/users/UserSettings;->openUserDetails(Landroid/content/pm/UserInfo;ZLandroid/content/Context;)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v3, 0x70e

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    :goto_0
    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v3, 0x6fa

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const-string p1, "UserSettings.addSupervisedUser"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.os.action.CREATE_SUPERVISED_USER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mConfigSupervisedUserCreationPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_6

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/users/UserCreatingDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroidx/fragment/app/FragmentActivity;Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v1, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v0, v3}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/users/UserSettings;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return v2

    :cond_6
    return v1
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mDesktopModeListener:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mTimeoutToDockUserPreferenceController:Lcom/android/settings/users/TimeoutToDockUserPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUI$4()V

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    iget-object v0, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "awaiting_result"

    const-string v5, "pending_photo"

    if-eqz v3, :cond_5

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    const-string v0, "create_user"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v1, v1, Lcom/android/settingslib/users/EditUserPhotoController;->mCachedDrawablePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    :cond_2
    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "admin_status"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "saved_name"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "current_state"

    iget v2, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    iget-object v1, v0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/settingslib/users/EditUserPhotoController;->saveNewUserPhotoBitmap()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-boolean v0, v0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

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

    float-to-int v3, p2

    new-instance p1, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080a92

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a07a1

    const v5, 0x1020006

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/widget/SecCustomDividerItemDecorator;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;III)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final openUserDetails(Landroid/content/pm/UserInfo;ZLandroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "new_user"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p3, Lcom/android/settings/users/UserDetailsSettings;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p3, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iget-object p3, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object p3, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    const/16 p3, 0x60

    iput p3, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iget-boolean p3, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    invoke-virtual {p2, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)V

    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final removeThisUser$1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isOnCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f14282a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow$1()Z

    move-result v0

    const-string v1, "UserSettings"

    if-nez v0, :cond_1

    const-string p0, "Cannot remove current user when switching is disabled"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/UserManager;->removeUserWhenPossible(Landroid/os/UserHandle;Z)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getPreviousForegroundUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to remove self user"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public scheduleGuestCreation()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Lcom/android/settings/users/UserSettings$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setConfigSupervisedUserCreationPackage()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10403c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mConfigSupervisedUserCreationPackage:Ljava/lang/String;

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settingslib/users/EditUserInfoController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settingslib/users/EditUserInfoController;->mWaitingForActivityResult:Z

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    iput-boolean v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final updateAddUserCommon(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/RestrictedPreference;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v0, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v0, :cond_6

    :cond_0
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "android.os.usertype.full.SECONDARY"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->canAddMoreUsers(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    const-string v0, "android.os.usertype.full.RESTRICTED"

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

    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow$1()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, p1

    :cond_3
    invoke-virtual {p2, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/4 p1, 0x0

    if-nez p3, :cond_4

    const p3, 0x7f1430ce

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p3, p0, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :cond_5
    invoke-virtual {p2, p1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final updateUI$4()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow$1()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;I)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method public updateUserList()V
    .locals 15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow$1()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v6

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const v9, 0x7f0713aa

    const-string v10, "user_guest"

    const/4 v11, 0x0

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_3

    :cond_5
    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-ne v12, v13, :cond_6

    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    goto :goto_5

    :cond_6
    new-instance v12, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v13

    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v12, v13, v11, v14}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object v13, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v12, v4}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    invoke-virtual {v12, v6}, Landroidx/preference/Preference;->setSelectable(Z)V

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v10}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v10, v10, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v10, :cond_7

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v12, v11}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_4

    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    :goto_4
    move-object v10, v12

    :goto_5
    if-nez v10, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isMain()Z

    move-result v11

    if-eqz v11, :cond_a

    const v11, 0x7f143122

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v11

    if-eqz v11, :cond_b

    const v11, 0x7f1430db

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_b
    :goto_6
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eq v11, v12, :cond_e

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v11

    if-eqz v11, :cond_c

    const v11, 0x7f143138

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_8

    :cond_c
    const v11, 0x7f143137

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v11, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v11, v11, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v11, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow$1()Z

    move-result v11

    if-eqz v11, :cond_d

    move v11, v6

    goto :goto_7

    :cond_d
    move v11, v5

    :goto_7
    invoke-virtual {v10, v11}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_8

    :cond_e
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v11

    if-eqz v11, :cond_f

    const v11, 0x7f143139

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_f
    :goto_8
    iget-object v11, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_10

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_10
    iget-object v11, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    new-instance v11, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    invoke-direct {v11, v8, v9}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v10, v11}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_12
    iget-boolean v4, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v4, :cond_13

    new-instance v4, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, -0xa

    invoke-direct {v4, v7, v11, v8}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v4, v5}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    sget-object v4, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Lcom/android/settings/users/UserPreference$$ExternalSyntheticLambda0;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    invoke-virtual {v7}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v6

    if-eq v8, v11, :cond_14

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_16

    new-instance v4, Lcom/android/settings/users/UserSettings$3;

    const/4 v7, 0x1

    invoke-direct {v4, p0, v7}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;I)V

    new-array v7, v6, [Ljava/util/List;

    aput-object v2, v7, v5

    invoke-virtual {v4, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_16
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListMeCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v4, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mMultiUserTopIntroPreferenceController:Lcom/android/settings/users/MultiUserTopIntroPreferenceController;

    invoke-virtual {v4, v2}, Lcom/android/settings/users/MultiUserTopIntroPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListMeCategory:Landroidx/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    if-eqz v1, :cond_18

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mUserSwitcherEnabled:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mGuestUserAutoCreated:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mGuestCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    const v2, 0x1040617

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    const v2, 0x7f141116

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v5}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_9

    :cond_17
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    const v2, 0x7f14110a

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->canSwitchUserNow$1()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_9

    :cond_18
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddGuest:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_9
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/users/UserSettings;->updateAddUserCommon(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/RestrictedPreference;Z)V

    const v1, 0x7f080a99

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mConfigSupervisedUserCreationPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/settings/users/UserSettings;->updateAddUserCommon(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/RestrictedPreference;Z)V

    const v1, 0x7f080337

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x1010036

    invoke-static {v2, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f080e10

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v7, v5

    aput-object v0, v7, v6

    invoke-direct {v4, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f07078f

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v4, v6, v0, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    invoke-virtual {v4, v5, v2, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const/16 v0, 0x11

    invoke-virtual {v4, v6, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_19
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddSupervisedUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserPreference;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListMeCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v2, v6, :cond_1a

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListMeCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_b

    :cond_1a
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_b

    :cond_1b
    return-void
.end method
