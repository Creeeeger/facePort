.class public Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDialog:Landroid/app/AlertDialog;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

.field public mPackageName:Ljava/lang/String;

.field public mReviewGrantedConsentRequired:Z

.field public final mScreenCaptureDevicePolicyResolver:Ldagger/Lazy;

.field public final mScreenCaptureDisabledDialogDelegate:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;

.field public final mStatusBarManager:Landroid/app/StatusBarManager;

.field public mUid:I

.field public mUserSelectingTask:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;Ldagger/Lazy;Landroid/app/StatusBarManager;Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Ldagger/Lazy;",
            "Landroid/app/StatusBarManager;",
            "Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;",
            "Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    iput-boolean v0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUserSelectingTask:Z

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iput-object p2, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mScreenCaptureDevicePolicyResolver:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    iput-object p4, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iput-object p5, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mScreenCaptureDisabledDialogDelegate:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUserSelectingTask:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public final finish(ILandroid/media/projection/IMediaProjection;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    sget-object v1, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->Companion:Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, p2}, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;->setReviewedConsentIfNeeded(IZLandroid/media/projection/IMediaProjection;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final grantMediaProjectionPermission(I)V
    .locals 6

    const-string v0, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    :try_start_0
    iget v3, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUid:I

    iget-object v4, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    invoke-static {v3, v4, v5}, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->createOrReuseProjection(ILjava/lang/String;Z)Landroid/media/projection/IMediaProjection;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v4, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PARTIAL_SCREEN_SHARING:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast v3, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v3, v4}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUid:I

    iget-object v3, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    invoke-static {p1, v3, v4}, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->createOrReuseProjection(ILjava/lang/String;Z)Landroid/media/projection/IMediaProjection;

    move-result-object p1

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const-string p1, "launched_from_user_handle"

    invoke-virtual {p0}, Landroid/app/Activity;->getLaunchedFromUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "launched_from_host_uid"

    invoke-virtual {p0}, Landroid/app/Activity;->getLaunchedFromUid()I

    move-result v0

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_media_projection_user_consent_required"

    iget-boolean v0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x2000000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUserSelectingTask:Z

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_2

    :goto_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_3

    :goto_2
    :try_start_1
    const-string v0, "MediaProjectionPermissionActivity"

    const-string v2, "Error granting projection permission"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    return-void

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    throw p1
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->grantMediaProjectionPermission(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "MediaProjectionPermissionActivity"

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_media_projection_user_consent_required"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const-string v3, "extra_media_projection_package_reusing_consent"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const-string v6, "Userid"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v7, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUid:I

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_3
    iget-object v3, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v7, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    iget v7, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUid:I

    iget-object v8, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    sget-object v9, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->Companion:Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->service:Landroid/media/projection/IMediaProjectionManager;

    invoke-interface {v9, v7, v8}, Landroid/media/projection/IMediaProjectionManager;->hasProjectionPermission(ILjava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    if-nez p1, :cond_4

    iget-object v3, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iget v6, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUid:I

    sget-object v7, Lcom/android/systemui/mediaprojection/SessionCreationSource;->APP:Lcom/android/systemui/mediaprojection/SessionCreationSource;

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->notifyProjectionInitiated(ILcom/android/systemui/mediaprojection/SessionCreationSource;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :cond_4
    :goto_3
    iget v3, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUid:I

    iget-object v6, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    iget-boolean v7, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mReviewGrantedConsentRequired:Z

    invoke-static {v3, v6, v7}, Lcom/android/systemui/mediaprojection/MediaProjectionServiceHelper;->createOrReuseProjection(ILjava/lang/String;Z)Landroid/media/projection/IMediaProjection;

    move-result-object v3

    const-string v6, "android.media.projection.extra.EXTRA_LAUNCH_COOKIE"

    const-class v7, Landroid/app/ActivityOptions$LaunchCookie;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityOptions$LaunchCookie;

    if-eqz v0, :cond_5

    invoke-interface {v3, v0}, Landroid/media/projection/IMediaProjection;->setLaunchCookie(Landroid/app/ActivityOptions$LaunchCookie;)V

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const/4 v6, -0x1

    invoke-virtual {v1, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v1, v8, v3}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_6
    iget-object v0, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v2, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PARTIAL_SCREEN_SHARING_ENTERPRISE_POLICIES:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v0, v2}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    const v2, 0x7f140603

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLaunchedFromUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v7, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mScreenCaptureDevicePolicyResolver:Ldagger/Lazy;

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;

    invoke-virtual {v7, v0}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDevicePolicyResolver;->isScreenCaptureCompletelyDisabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mScreenCaptureDisabledDialogDelegate:Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v6, v0, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;->context:Landroid/content/Context;

    invoke-direct {v3, v6, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/mediaprojection/devicepolicy/ScreenCaptureDisabledDialogDelegate;->initDialog(Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->setUpDialog(Landroid/app/AlertDialog;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    return-void

    :cond_7
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    const/high16 v7, 0x42280000    # 42.0f

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v7, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/systemui/util/Utils;->isHeadlessRemoteDisplayProvider(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const v0, 0x7f130bf1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f130bf0

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object v3, v5

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    move v7, v4

    :goto_4
    if-ge v7, v6, :cond_b

    invoke-virtual {v3, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->getType(I)I

    move-result v10

    const/16 v11, 0xd

    if-eq v10, v11, :cond_a

    const/16 v11, 0xf

    if-eq v10, v11, :cond_a

    const/16 v11, 0xe

    if-ne v10, v11, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_4

    :cond_a
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u2026"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v3, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    :cond_c
    const/high16 v6, 0x43fa0000    # 500.0f

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v0, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f130be2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_d

    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v6, v7, v3, v9, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    const v3, 0x7f130be1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object v3, v0

    move-object v0, v6

    :goto_6
    sget-boolean v6, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FLIP:Z

    if-eqz v6, :cond_e

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v7, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v6, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v6, v6, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManager;

    const-string v7, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v6

    array-length v7, v6

    if-le v7, v8, :cond_e

    aget-object v6, v6, v8

    invoke-virtual {v1, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v6

    goto :goto_7

    :cond_e
    move-object v6, v1

    :goto_7
    iget-object v7, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v8, Lcom/android/systemui/flags/Flags;->WM_ENABLE_PARTIAL_SCREEN_SHARING:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast v7, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v7, v8}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v0, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLaunchedFromUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    const-wide/32 v7, 0x12e3782a

    invoke-static {v7, v8, v0, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v15

    new-instance v0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_f

    :goto_8
    move-object v11, v5

    goto :goto_9

    :cond_f
    const-string v5, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION_CONFIG"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/media/projection/MediaProjectionConfig;

    goto :goto_8

    :goto_9
    new-instance v12, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;)V

    new-instance v13, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity$$ExternalSyntheticLambda1;

    invoke-direct {v13, v1}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;)V

    iget v4, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUid:I

    iget-object v5, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    move-object v9, v0

    move-object v10, v6

    move-object v14, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;-><init>(Landroid/content/Context;Landroid/media/projection/MediaProjectionConfig;Ljava/util/function/Consumer;Ljava/lang/Runnable;Ljava/lang/String;ZILcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/AlertDialogWithDelegate;

    invoke-direct {v4, v6, v2, v0}, Lcom/android/systemui/statusbar/phone/AlertDialogWithDelegate;-><init>(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/DialogDelegate;)V

    iput-object v4, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    goto :goto_a

    :cond_10
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v6, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0809aa

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f130be0

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    :goto_a
    if-nez p1, :cond_12

    iget-object v0, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iget v2, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUid:I

    if-nez v3, :cond_11

    sget-object v3, Lcom/android/systemui/mediaprojection/SessionCreationSource;->CAST:Lcom/android/systemui/mediaprojection/SessionCreationSource;

    goto :goto_b

    :cond_11
    sget-object v3, Lcom/android/systemui/mediaprojection/SessionCreationSource;->APP:Lcom/android/systemui/mediaprojection/SessionCreationSource;

    :goto_b
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->notifyProjectionInitiated(ILcom/android/systemui/mediaprojection/SessionCreationSource;)V

    :cond_12
    iget-object v0, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->setUpDialog(Landroid/app/AlertDialog;)V

    iget-object v0, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    if-nez p1, :cond_13

    iget-object v0, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mMediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iget v1, v1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mUid:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;->notifyPermissionRequestDisplayed(I)V

    :cond_13
    return-void

    :goto_c
    const-string v3, "Error checking projection permissions"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    return-void

    :goto_d
    const-string v3, "Unable to look up package name"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->finish(ILandroid/media/projection/IMediaProjection;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final setUpDialog(Landroid/app/AlertDialog;)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->applyFlags(Landroid/app/AlertDialog;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setDialogSize(Landroid/app/Dialog;)V

    new-instance v0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->create()V

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 p1, 0x80000

    invoke-virtual {p0, p1}, Landroid/view/Window;->addSystemFlags(I)V

    return-void
.end method
