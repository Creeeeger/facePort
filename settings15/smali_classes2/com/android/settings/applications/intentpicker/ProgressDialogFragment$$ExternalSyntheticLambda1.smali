.class public final synthetic Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;

    packed-switch v0, :pswitch_data_0

    const-string v0, "mProgressAlertDialog.dismiss() and isShowing: "

    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mHandle:Landroid/os/Handler;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mProgressAlertDialog:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$ProgressAlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mProgressAlertDialog:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$ProgressAlertDialog;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mProgressAlertDialog:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$ProgressAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->launchSupportedLinksDialogFragment()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    iget-object v3, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mPackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getLinksList(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v4

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {v7, v6}, Landroid/content/pm/verify/domain/DomainVerificationManager;->getOwnersForDomain(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    new-instance v9, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v6, v9, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mHost:Ljava/lang/String;

    iput-object v7, v9, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mOwnerSet:Ljava/util/SortedSet;

    const/4 v6, 0x1

    iput-boolean v6, v9, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mIsEnabled:Z

    const-string v11, ""

    iput-object v11, v9, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mLastOwnerName:Ljava/lang/String;

    iput-boolean v4, v9, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mIsChecked:Z

    invoke-interface {v7}, Ljava/util/SortedSet;->size()I

    move-result v11

    if-lez v11, :cond_4

    invoke-interface {v7}, Ljava/util/SortedSet;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper$$ExternalSyntheticLambda0;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/stream/Stream;->count()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_2

    move v12, v6

    goto :goto_3

    :cond_2
    move v12, v4

    :goto_3
    iput-boolean v12, v9, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mIsEnabled:Z

    if-lez v11, :cond_3

    invoke-virtual {v9, v10, v4}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->getLastPackageLabel(Landroidx/fragment/app/FragmentActivity;Z)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mLastOwnerName:Ljava/lang/String;

    goto :goto_4

    :cond_3
    invoke-virtual {v9, v10, v6}, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->getLastPackageLabel(Landroidx/fragment/app/FragmentActivity;Z)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mLastOwnerName:Ljava/lang/String;

    :cond_4
    :goto_4
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mProgressAlertDialog:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$ProgressAlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v2, "ProgressDialogFragment"

    const-string v3, "Exit the background thread!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    :cond_5
    mul-int/lit8 v6, v5, 0x64

    div-int/2addr v6, v3

    iget-object v8, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mHandle:Landroid/os/Handler;

    new-instance v9, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0, v6}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-interface {v7}, Ljava/util/SortedSet;->size()I

    move-result v6

    if-nez v6, :cond_1

    const-wide/16 v6, 0x14

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_2

    :cond_6
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryLinksInBackground : SupportedLinkWrapperList size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mSupportedLinkWrapperList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryLinksInBackground take time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mProgressAlertDialog:Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$ProgressAlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->mHandle:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
