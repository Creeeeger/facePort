.class public final synthetic Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    iget-object p1, p1, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    new-instance p1, Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string v0, "warningDialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    xor-int/lit8 v3, v2, 0x1

    if-eq p1, v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "notification_history_enabled"

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-nez v2, :cond_2

    sget-object v4, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_ON:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OFF:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    :goto_1
    check-cast p1, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {p1, v4}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "onSwitchChange history to "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "NotifHistory"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez v2, :cond_4

    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setChecked(Z)V

    :goto_3
    return-void
.end method
