.class public final Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAppUid:I

.field public final mCurrentAlertAllowed:Z

.field public final mINotificationManager:Landroid/app/INotificationManager;

.field public final mPackageBlocked:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mUpdateAlertAllowed:Z


# direct methods
.method public constructor <init>(Landroid/app/INotificationManager;Ljava/lang/String;IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mAppUid:I

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mCurrentAlertAllowed:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mUpdateAlertAllowed:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageBlocked:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mUpdateAlertAllowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mAppUid:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mCurrentAlertAllowed:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/app/INotificationManager;->setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageBlocked:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mAppUid:I

    invoke-interface {v0, v2, p0, v1}, Landroid/app/INotificationManager;->setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "InfoGuts"

    const-string v1, "Unable to update notification importance"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    return-void
.end method
