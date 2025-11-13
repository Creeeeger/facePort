.class public final Lcom/android/wm/shell/freeform/SmartPopupViewItem;
.super Lcom/android/wm/shell/freeform/FreeformContainerItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mNotification:Landroid/app/Notification;

.field public final mNotificationKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;I)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mItemType:I

    iput-object p3, p0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    iput-object p4, p0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;->mNotificationKey:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mAnimationCompleted:Z

    return-void
.end method


# virtual methods
.method public final getTaskId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final launch()V
    .locals 5

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NOT_SUPPORT_FOR_COVER_DISPLAY:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x5

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    const-string v4, "MESSAGE_KT_TWO_PHONE_OPPOSITE_RECEIVED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->preserveTaskWindowingMode()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    iget-object p0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    sget-object v1, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda3;-><init>(Landroid/app/PendingIntent;Landroid/app/ActivityOptions;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW_SA_LOGGING:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p0

    if-ne p0, v3, :cond_2

    const-string p0, "2004"

    const-string v0, "From Smart Popup"

    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final loadShowingIcon(Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mComponentName:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mUserId:I

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getAppIcon(Landroid/content/Context;Landroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->getShowingIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final needLoading(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SMART_POPUP_VIEW:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    instance-of v2, v0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;

    iget-object v0, v0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;->mNotificationKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmartPopupViewItem {mPackageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationKey= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/SmartPopupViewItem;->mNotificationKey:Ljava/lang/String;

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
