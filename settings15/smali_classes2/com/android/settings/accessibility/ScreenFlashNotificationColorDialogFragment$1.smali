.class public final Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;
.super Ljava/util/TimerTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;->this$0:Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;->this$0:Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mIsPreview:Ljava/lang/Boolean;

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;->this$0:Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mIsPreview:Ljava/lang/Boolean;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.intent.action.FLASH_NOTIFICATION_START_PREVIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.android.internal.intent.extra.FLASH_NOTIFICATION_PREVIEW_COLOR"

    iget v3, v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mCurrentColor:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
