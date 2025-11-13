.class public Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "PrivacyDashboardOverViewChartPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;,
        Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;
    }
.end annotation


# static fields
.field private static final PROVIDER_URI:Landroid/net/Uri;


# instance fields
.field private final mAnimatorSet:Landroid/animation/AnimatorSet;

.field mCameraUsageCount:I

.field private mContext:Landroid/content/Context;

.field private mDashboardChartAdapter:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

.field mDuration:I

.field private mLastPosition:I

.field mLocationUsageCount:I

.field mMaxCount:I

.field mMicrophoneUsageCount:I

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPdContext:Landroid/content/Context;

.field private mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

.field mPrivacyOverViewPermission:[I

.field mPrivacyOverViewPermissionCHN:[I

.field mPrivacyOverViewPermissionId:[Ljava/lang/String;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mUpdateFlag:Z


# direct methods
.method public static synthetic $r8$lambda$ocsw_lUFuvLCn4myBe8M536_eBE(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->lambda$setAnimation$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPosition(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLastPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPdContext(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPdContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateFlag(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mUpdateFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastPosition(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLastPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdateFlag(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mUpdateFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCameraImage(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->getCameraImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLocationImage(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->getLocationImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMicroPhoneImage(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->getMicroPhoneImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOverViewAppsUsageCount(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->getOverViewAppsUsageCount(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minsertEventLogging(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->insertEventLogging(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.privacydashboard.provider"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 52
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 p2, -0x1

    .line 59
    iput p2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLastPosition:I

    const/4 p2, 0x3

    new-array v0, p2, [I

    .line 67
    sget v1, Lcom/android/settings/R$string;->permission_camera:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->permission_microphone:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/android/settings/R$string;->permission_location:I

    const/4 v4, 0x2

    aput v1, v0, v4

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPrivacyOverViewPermission:[I

    new-array p2, p2, [I

    .line 73
    sget v0, Lcom/android/settings/R$string;->permission_camera_china:I

    aput v0, p2, v2

    sget v0, Lcom/android/settings/R$string;->permission_microphone_china:I

    aput v0, p2, v3

    sget v0, Lcom/android/settings/R$string;->permission_location_china:I

    aput v0, p2, v4

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPrivacyOverViewPermissionCHN:[I

    const-string p2, "android.permission-group.CAMERA"

    const-string v0, "android.permission-group.MICROPHONE"

    const-string v1, "android.permission-group.LOCATION"

    .line 79
    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPrivacyOverViewPermissionId:[Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->getPDContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPdContext:Landroid/content/Context;

    .line 91
    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isChinaModel()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPrivacyOverViewPermissionCHN:[I

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPrivacyOverViewPermission:[I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private getCameraImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "ic_perm_group_camera"

    const-string v1, "drawable"

    const-string v2, "com.samsung.android.privacydashboard"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getLocationImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "ic_perm_group_location"

    const-string v1, "drawable"

    const-string v2, "com.samsung.android.privacydashboard"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getMicroPhoneImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "ic_perm_group_microphone"

    const-string v1, "drawable"

    const-string v2, "com.samsung.android.privacydashboard"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getOverViewAppsUsageCount(Landroid/content/Context;)V
    .locals 3

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 333
    sget-object v0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "get_count"

    const/4 v1, 0x0

    .line 336
    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CAMERA_CNT"

    const/4 v2, 0x0

    .line 337
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mCameraUsageCount:I

    const-string v1, "LOCATION_CNT"

    .line 338
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLocationUsageCount:I

    const-string v1, "MICROPHONE_CNT"

    .line 339
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mMicrophoneUsageCount:I

    const-string v1, "DURATION"

    const v2, 0x5265c00

    .line 340
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mDuration:I

    .line 341
    iget v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mMicrophoneUsageCount:I

    iget v1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mCameraUsageCount:I

    iget v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLocationUsageCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mMaxCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 343
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    :goto_0
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    .line 346
    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method private getPDContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    :try_start_0
    const-string p0, "com.samsung.android.privacydashboard"

    const/4 v0, 0x0

    .line 353
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 355
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private insertEventLogging(Ljava/lang/String;)V
    .locals 1

    const-string p0, "android.permission-group.CAMERA"

    .line 361
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const v0, 0xdae8

    if-eqz p0, :cond_0

    const p0, 0xe6dc

    .line 362
    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_0
    const-string p0, "android.permission-group.MICROPHONE"

    .line 364
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0xe6dd

    .line 365
    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_1
    const-string p0, "android.permission-group.LOCATION"

    .line 367
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0xe6de

    .line 368
    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setAnimation$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 307
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 308
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public cancelGetPermissionInfo()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mDashboardChartAdapter:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPrivacyOverViewPermission:[I

    sget v3, Lcom/android/settings/R$layout;->sec_privacy_dashboard_chart_item:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;-><init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Landroid/content/Context;[II)V

    :cond_0
    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 98
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 99
    sget p1, Lcom/android/settings/R$id;->privacy_chart_recycler:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->getAdapter()Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mDashboardChartAdapter:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

    .line 101
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mDashboardChartAdapter:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$DashboardChartAdapter;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setAnimation(Landroid/view/View;II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 303
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 304
    iget-object p3, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1f4

    .line 305
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 306
    new-instance p3, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 311
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 312
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public setPrivacyDashboardCategoryTitle()V
    .locals 2

    const-string v0, "privacy_chart_category"

    .line 145
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mDuration:I

    const v1, 0x5265c00

    if-ne p0, v1, :cond_0

    .line 146
    sget p0, Lcom/android/settings/R$string;->permission_usage_history_category_24hours:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$string;->permission_usage_history_category_7days:I

    .line 145
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public updateLatestPermissionInfo()V
    .locals 2

    .line 150
    iget-boolean v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mUpdateFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 151
    iput v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLastPosition:I

    .line 152
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;-><init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    .line 157
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mPermissionInfoTask:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
