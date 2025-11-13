.class public final Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field public mInstaller:Landroid/content/ComponentName;

.field public mManageIntent:Landroid/app/PendingIntent;

.field public mReportButton:Landroid/widget/Button;

.field public mRootView:Landroid/view/View;

.field public mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

.field public mStopButton:Landroid/widget/Button;

.field public final synthetic this$0:Lcom/android/settings/applications/RunningServiceDetails;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    const-string v0, "Can\'t read service dump: "

    const-string v1, "Can\'t dump service: "

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const/4 v3, 0x0

    const-string v4, "RunningServicesDetails"

    if-ne p1, v2, :cond_6

    new-instance p1, Landroid/app/ApplicationErrorReport;

    invoke-direct {p1}, Landroid/app/ApplicationErrorReport;-><init>()V

    const/4 v2, 0x5

    iput v2, p1, Landroid/app/ApplicationErrorReport;->type:I

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v2, p1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    iput-object v2, p1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p1, Landroid/app/ApplicationErrorReport;->time:J

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    move v3, v5

    :cond_0
    iput-boolean v3, p1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    new-instance v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v5, v3, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v7, v3, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v5, v7

    iput-wide v5, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto :goto_0

    :cond_1
    const-wide/16 v5, -0x1

    iput-wide v5, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "service_dump.txt"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v8, "activity"

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    const-string v10, "-a"

    const-string v11, "service"

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v6, v7

    goto/16 :goto_8

    :catch_0
    move-exception v8

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_8

    :catch_1
    move-exception v8

    move-object v7, v6

    :goto_2
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_2

    goto :goto_1

    :catch_2
    :cond_2
    :goto_3
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v6, v6, [B

    invoke-virtual {v1, v6}, Ljava/io/FileInputStream;->read([B)I

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v7, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object v6, v1

    goto :goto_7

    :catch_3
    move-exception v6

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception v1

    move-object v13, v6

    move-object v6, v1

    move-object v1, v13

    :goto_5
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_3

    goto :goto_4

    :catch_5
    :cond_3
    :goto_6
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Details: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    :goto_7
    if-eqz v6, :cond_4

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_6
    :cond_4
    throw p0

    :goto_8
    if-eqz v6, :cond_5

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_5
    throw p0

    :cond_6
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_7

    :try_start_a
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget-object p0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    const/high16 v9, 0x80000

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10080000

    invoke-virtual/range {v5 .. v10}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    goto :goto_9

    :catch_9
    move-exception p0

    goto :goto_a

    :catch_a
    move-exception p0

    goto :goto_b

    :goto_9
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :goto_a
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :goto_b
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_7
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    if-eqz p1, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    goto :goto_c

    :cond_8
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-boolean v0, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish$2()V

    goto :goto_c

    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish$2()V

    :goto_c
    return-void
.end method

.method public final stopActiveService(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "comp"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "confirmstop"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v0, p1, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningState;->updateNow()V

    iget-object p0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish$2()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p1, p1, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningState;->updateNow()V

    iget-object p0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->finish$2()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object p0, p0, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningState;->updateNow()V

    :goto_0
    return-void
.end method
