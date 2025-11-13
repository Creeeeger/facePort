.class public final Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final mNotificationPanelLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->mNotificationPanelLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070354

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method


# virtual methods
.method public startDragAndDrop(Landroid/view/View;)V
    .locals 12

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ExpandableNotificationRowDragController"

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const v10, 0xc2200

    :try_start_0
    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_2

    :cond_3
    const-string v10, " application info is null "

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "can not find package with : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_2
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-virtual {v7, v6, v6, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v7, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070354

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7, v6, v6, v8, v8}, Landroid/widget/ImageView;->layout(IIII)V

    new-instance v8, Landroid/content/ClipDescription;

    const-string v9, "application/vnd.android.activity"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "Drag And Drop"

    invoke-direct {v8, v10, v9}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "android.intent.extra.PENDING_INTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.USER"

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v9}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    new-instance v9, Lcom/android/internal/logging/InstanceIdSequence;

    const v10, 0x7fffffff

    invoke-direct {v9, v10}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    invoke-virtual {v9}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.extra.LOGGING_INSTANCE_ID"

    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v9, Landroid/content/ClipData;

    invoke-direct {v9, v8, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v3, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v3, v7}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    new-instance v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    const/16 v7, 0x900

    invoke-virtual {p1, v9, v3, v1, v7}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->mNotificationPanelLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;

    check-cast v3, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLoggerImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger;->toNotificationProto(Ljava/util/List;)Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;->NOTIFICATION_DRAG:Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/logging/NotificationPanelLogger$NotificationPanelEvent;->getId()I

    move-result v3

    iget-object v7, v1, Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$NotificationList;->notifications:[Lcom/android/systemui/statusbar/notification/logging/nano/Notifications$Notification;

    array-length v7, v7

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v3, v7, v1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II[B)V

    invoke-virtual {p1, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast p0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->releaseAllImmediately()V

    goto :goto_3

    :cond_4
    invoke-interface {v2, v4, v6, v5, v6}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(FIZZ)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    :goto_4
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsPinned:Z

    if-nez p1, :cond_7

    invoke-interface {v2, v4, v6, v5, v6}, Lcom/android/systemui/shade/ShadeController;->animateCollapseShade(FIZZ)V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowDragController;->mContext:Landroid/content/Context;

    const p1, 0x7f130558

    invoke-static {p0, p1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
