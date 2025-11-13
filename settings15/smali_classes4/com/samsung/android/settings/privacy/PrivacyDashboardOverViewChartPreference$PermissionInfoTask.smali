.class public final Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/Void;

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/privacydashboard/PermissionAccessInformationRequester;->request(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_1
    const-string v1, "get_count"

    invoke-virtual {p1, v1, v0, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "CAMERA_CNT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mCameraUsageCount:I

    const-string v2, "LOCATION_CNT"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLocationUsageCount:I

    const-string v2, "MICROPHONE_CNT"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mMicrophoneUsageCount:I

    const-string v2, "CAMERA_PACKAGES"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mCameraApps:Ljava/util/ArrayList;

    const-string v2, "LOCATION_PACKAGES"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLocationApps:Ljava/util/ArrayList;

    const-string v2, "MICROPHONE_PACKAGES"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mMicrophoneApps:Ljava/util/ArrayList;

    const-string v2, "CAMERA_PACKAGE_UIDS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mCameraAppUids:Ljava/util/ArrayList;

    const-string v2, "LOCATION_PACKAGE_UIDS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLocationAppUids:Ljava/util/ArrayList;

    const-string v2, "MICROPHONE_PACKAGE_UIDS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mMicrophoneAppUids:Ljava/util/ArrayList;

    const-string v2, "DURATION"

    const v3, 0x5265c00

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mDuration:I

    iget v1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mMicrophoneUsageCount:I

    iget v2, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mCameraUsageCount:I

    iget p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mLocationUsageCount:I

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    throw p0

    :cond_0
    :goto_3
    return-object v0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mUpdateFlag:Z

    iget-object v0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a10cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget p1, p1, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mDuration:I

    const v1, 0x5265c00

    if-ne p1, v1, :cond_0

    const p1, 0x7f141c10

    goto :goto_0

    :cond_0
    const p1, 0x7f141c11

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->updateAppIcons()V

    return-void
.end method

.method public final onPreExecute()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference$PermissionInfoTask;->this$0:Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/privacy/PrivacyDashboardOverViewChartPreference;->mUpdateFlag:Z

    return-void
.end method
