.class public final Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

.field public mKeyguardIconArray:Ljava/util/ArrayList;

.field public final mKeyguardStatusBarNioLayoutRepository:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

.field public final mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

.field public mNPVController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

.field public mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

.field public final mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field public final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field public mScreenOn:Z

.field public final mShadeController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public mSubUiIconArray:Ljava/util/ArrayList;

.field public mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

.field public final mTimeComparator:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;

.field public final mWakefulnessObserver:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    invoke-virtual {p3, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;

    iget-object p3, p3, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginControllerImpl;->mNotificationManager:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mScreenOn:Z

    new-instance p3, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$1;-><init>(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;)V

    new-instance v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mTimeComparator:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mShadeController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    iput-object p5, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iput-object p6, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardStatusBarNioLayoutRepository:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iput-object p7, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iput-object p8, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iput-object p0, p5, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {p0, p3}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getIconContainer()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginNotificationController;->getIconContainer()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onNotificationInfoUpdated(Ljava/util/ArrayList;)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNotificationInfoUpdated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockscreenNotificationIconsOnlyController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    const v2, 0x7f0a0cf9

    const v3, 0x7f0a0cf8

    const v4, 0x7f0a0d05

    const-string v5, "PluginSubScreen updateNotification error!!\n"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v8, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iput v3, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagFreshDrawable:I

    iput v2, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagIsAppColor:I

    iput v4, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagShowConversation:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mTimeComparator:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController$$ExternalSyntheticLambda0;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move v0, v6

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    if-eqz v7, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object v2, v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object v8, v8, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object v9, v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v2, v8, v10}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->createImageViewIcon(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/service/notification/StatusBarNotification;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object p1, p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v6, p1, :cond_7

    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_13

    :try_start_0
    move-object p1, v7

    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p1

    if-eqz p1, :cond_13

    check-cast v7, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {v7}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mSubUiIconArray:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->subLauncherUpdateNotification(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    if-nez v0, :cond_9

    new-instance v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v8, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iput v3, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagFreshDrawable:I

    iput v2, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagIsAppColor:I

    iput v4, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mTagShowConversation:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_c
    move v0, v6

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    if-eqz v7, :cond_d

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_d
    sget v2, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->mCurrentNotificationType:I

    const/4 v8, 0x2

    if-eq v2, v8, :cond_e

    const/4 v8, 0x4

    if-ne v2, v8, :cond_f

    :cond_e
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object v2, v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_f

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object v2, v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mIsReaded:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "skip to show. read notification when dot type. key = "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object v8, v8, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-static {v2, v8, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object v2, v2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object v8, v8, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    iget-object v9, v9, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v2, v8, v10}, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->createImageViewIcon(Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/service/notification/StatusBarNotification;Landroid/widget/ImageView$ScaleType;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object p1, p1, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v6, p1, :cond_12

    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mNotificationIconData:Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;

    iget-object v0, v0, Lcom/android/systemui/statusbar/LockscreenNotificationManager$NotificationIconData;->mIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_12
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardStatusBarNioLayoutRepository:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository;->nioLayoutModel:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    new-instance v2, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$updateKeyguardNioSize$1$1;

    invoke-direct {v2, v0, p1}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$updateKeyguardNioSize$1$1;-><init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->updateValues(Ljava/lang/Runnable;)V

    if-eqz v7, :cond_13

    :try_start_1
    move-object p1, v7

    check-cast p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p1

    if-eqz p1, :cond_13

    check-cast v7, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {v7}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardIconArray:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->updateNotification(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_7
    return-void
.end method

.method public final onNotificationTypeChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mFaceWidgetNotificationController:Lcom/android/systemui/facewidget/FaceWidgetNotificationController;

    if-eqz v0, :cond_0

    :try_start_0
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationManager()Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/aod/PluginAODNotificationManager;->lockscreenNotificationTypeChanged(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->views:Landroid/util/SparseArray;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PluginSubScreen updateNotification error!!\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LockscreenNotificationIconsOnlyController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
