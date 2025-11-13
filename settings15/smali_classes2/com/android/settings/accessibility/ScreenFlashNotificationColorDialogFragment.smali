.class public Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/accessibility/ColorSelectorLayout$OnCheckedChangeListener;


# instance fields
.field public mConsumer:Ljava/util/function/Consumer;

.field public mCurrentColor:I

.field public mIsPreview:Ljava/lang/Boolean;

.field public mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mCurrentColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mTimer:Ljava/util/Timer;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mIsPreview:Ljava/lang/Boolean;

    return-void
.end method

.method public static getInstance(ILjava/util/function/Consumer;)Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;
    .locals 1

    new-instance v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;-><init>()V

    iput p0, v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mCurrentColor:I

    iput-object p1, v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mConsumer:Ljava/util/function/Consumer;

    return-object v0
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d044b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a03c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/ColorSelectorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorSelectorLayout;->setOnCheckedChangeListener(Lcom/android/settings/accessibility/ColorSelectorLayout$OnCheckedChangeListener;)V

    iget v2, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mCurrentColor:I

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/ColorSelectorLayout;->setCheckedColor(I)V

    :cond_0
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    const p1, 0x7f141fdd

    invoke-virtual {v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    new-instance p1, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const v3, 0x7f1409a3

    invoke-virtual {v2, v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const p1, 0x7f140fca

    invoke-virtual {v2, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;Lcom/android/settings/accessibility/ColorSelectorLayout;)V

    const v0, 0x7f1409a4

    invoke-virtual {v2, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.FLASH_NOTIFICATION_STOP_PREVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mIsPreview:Ljava/lang/Boolean;

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final showColor()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mIsPreview:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;-><init>(Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const/16 v0, 0xfa

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;-><init>(Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;I)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$1;-><init>(Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment;I)V

    add-int/lit16 v0, v0, 0x13ec

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
