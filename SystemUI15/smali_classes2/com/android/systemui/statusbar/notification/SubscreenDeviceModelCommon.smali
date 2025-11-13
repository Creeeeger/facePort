.class public Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;
.super Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public isNightMode:Ljava/lang/Boolean;

.field public mMoreNotificationCount:I

.field public mPopUpViewLayout:Landroid/view/View;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mUpdateMonitorCallback$1;

.field public needsRedaction:Z

.field public popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/settings/UserContextProvider;",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Lcom/android/systemui/log/LogBuffer;",
            "Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;",
            "Lcom/android/systemui/bixby2/controller/NotificationController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct/range {p0 .. p16}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->isNightMode:Ljava/lang/Boolean;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mUpdateMonitorCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mUpdateMonitorCallback$1;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mSettingsListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mSettingsListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method


# virtual methods
.method public final dimissTopPopupNotification()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->presentationShowing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    :cond_1
    return-void
.end method

.method public foldStateChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "FOLD "

    goto :goto_0

    :cond_0
    const-string v0, "UNFOLD "

    :goto_0
    const-string v1, " FOLD STATE common- "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S.S.N."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->foldStateChanged(Z)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isCoverscreenShowNotificationTip()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_3

    const-string v1, "SubscreenSubRoomNotification"

    const-string v2, "initTipData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubRoomNotificationTipAdapter:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initData()V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsChangedToFoldState:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->isNightMode:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->isNightMode:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderView(Landroid/widget/LinearLayout;)V

    :cond_4
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFolded:Z

    return-void
.end method

.method public final getMoreNotificationCount()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mMoreNotificationCount:I

    return p0
.end method

.method public final getTopPopupLp()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1020120

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    iget p0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    const-string p0, "SubscreenNotification"

    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p0, 0x30

    iput p0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v6
.end method

.method public hideDetailNotificationIfCallback()V
    .locals 0

    return-void
.end method

.method public final initDetailAdapterBackButton(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f0a013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterBackButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterBackButton$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p1
.end method

.method public initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    iget-object p1, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mCallBackButton:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;

    invoke-direct {v0, p2, p3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterItemViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final initGroupAdapterHeaderViewHolder(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initGroupAdapterHeaderViewHolder(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;)V

    const v0, 0x7f0a013d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1312e2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->mBackButton:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initGroupAdapterHeaderViewHolder$1;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initGroupAdapterHeaderViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final initialize()V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initialize()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$mUpdateMonitorCallback$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->updateShowNotificationTip()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "lock_screen_show_notifications"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "turn_on_cover_screen_for_notification"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "cover_screen_show_notification"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFolded:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final makePopupDetailView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/widget/FrameLayout;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "makePopupDetailView Common- "

    const-string v3, "S.S.N."

    invoke-static {v2, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setPopupViewLayout(Landroid/content/Context;ZLandroid/widget/FrameLayout;)V

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setPopupItemInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V

    return-void
.end method

.method public onBindDetailAdapterItemViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 0

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMissedCall:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mHasSemanticCall:Z

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mCallBackButton:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mCallBackButton:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onTipButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NotiShowCoverScreenTip"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->updateShowNotificationTip()V

    return-void
.end method

.method public final panelsEnabled()Z
    .locals 1

    const-class p0, Lcom/android/systemui/statusbar/CommandQueue;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p0

    return p0
.end method

.method public final setDetailAdapterItemHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setDetailAdapterItemHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1312e2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1312ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f13005f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setDetailAdapterTextHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setDetailAdapterTextHolderButtonContentDescription(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1312e2

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setEditButton(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 2

    const/16 v0, 0x8

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mEditButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mEditButton:Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$setEditButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$setEditButton$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setKeyguardStateWhenAddSubscreenNotificationInfoList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsKeyguardStateWhenAddSubscreenNotificationInfoList:Z

    return-void
.end method

.method public setMarqueeItem(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public setPopupItemInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isKeyguardStats()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mUserPublic:Z

    if-eqz v7, :cond_3

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    :cond_3
    :goto_2
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v7, :cond_4

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v7, Landroid/app/Notification;->category:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    const-string v9, "call"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v7, :cond_5

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v7, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_6

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    if-eqz v7, :cond_6

    if-nez p3, :cond_6

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    :cond_6
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v7, :cond_7

    iget-object v9, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mConversationIcon:Landroid/graphics/drawable/Icon;

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    if-eqz v7, :cond_8

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    :goto_6
    if-eqz v7, :cond_9

    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_9
    const/4 v11, 0x0

    :goto_7
    if-eqz v7, :cond_a

    iget-object v12, v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v12, 0x0

    :goto_8
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_b
    const/4 v7, 0x0

    :goto_9
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v13, :cond_c

    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    goto :goto_a

    :cond_c
    const/4 v13, 0x0

    :goto_a
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v14, :cond_d

    const v15, 0x7f0a0c8a

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    goto :goto_b

    :cond_d
    const/4 v14, 0x0

    :goto_b
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v15, :cond_e

    const v4, 0x7f0a0c7f

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    goto :goto_c

    :cond_e
    const/4 v4, 0x0

    :goto_c
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v15, :cond_f

    const v8, 0x7f0a0c82

    invoke-virtual {v15, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    goto :goto_d

    :cond_f
    const/4 v8, 0x0

    :goto_d
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v15, :cond_10

    const v6, 0x7f0a0c81

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    goto :goto_e

    :cond_10
    const/4 v6, 0x0

    :goto_e
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    move-object/from16 v16, v7

    if-eqz v15, :cond_11

    const v7, 0x7f0a0c83

    invoke-virtual {v15, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    goto :goto_f

    :cond_11
    const/4 v7, 0x0

    :goto_f
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v15, :cond_12

    const v1, 0x7f0a0ada

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    :goto_10
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    move-object/from16 v17, v1

    if-eqz v15, :cond_13

    const v1, 0x7f0a0dc1

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_11

    :cond_13
    const/4 v1, 0x0

    :goto_11
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    move-object/from16 v18, v1

    if-eqz v15, :cond_14

    const v1, 0x7f0a0c7b

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    goto :goto_12

    :cond_14
    const/4 v1, 0x0

    :goto_12
    iget-boolean v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    if-eqz v15, :cond_15

    move-object v15, v12

    goto :goto_13

    :cond_15
    move-object/from16 v15, v16

    :goto_13
    if-eqz v14, :cond_16

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    if-eqz v15, :cond_19

    invoke-static {v15}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_18

    goto :goto_14

    :cond_18
    const/4 v15, 0x0

    goto :goto_15

    :cond_19
    :goto_14
    const/4 v15, 0x1

    :goto_15
    if-eqz v13, :cond_1b

    invoke-static {v13}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_1a

    goto :goto_16

    :cond_1a
    move-object/from16 v19, v1

    const/16 v16, 0x0

    goto :goto_17

    :cond_1b
    :goto_16
    move-object/from16 v19, v1

    const/16 v16, 0x1

    :goto_17
    const/16 v1, 0x8

    if-eqz v15, :cond_1e

    if-eqz v4, :cond_1c

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1c
    if-eqz v14, :cond_1d

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    if-eqz v16, :cond_1e

    if-eqz v14, :cond_1e

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    if-eqz v16, :cond_20

    if-nez v4, :cond_1f

    goto :goto_18

    :cond_1f
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_20
    :goto_18
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    if-eqz v12, :cond_24

    if-nez v4, :cond_21

    goto :goto_19

    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f1312f3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_19
    if-nez v4, :cond_22

    goto :goto_1b

    :cond_22
    if-eqz p3, :cond_23

    move v12, v1

    goto :goto_1a

    :cond_23
    const/4 v12, 0x0

    :goto_1a
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_24
    :goto_1b
    iget-boolean v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    if-nez v12, :cond_2b

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    if-nez v9, :cond_25

    if-eqz v10, :cond_2b

    :cond_25
    if-nez v7, :cond_26

    goto :goto_1c

    :cond_26
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1c
    if-nez v8, :cond_27

    goto :goto_1d

    :cond_27
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1d
    if-nez v6, :cond_28

    goto :goto_1e

    :cond_28
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1e
    if-eqz v9, :cond_29

    if-eqz v7, :cond_2a

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_1f

    :cond_29
    if-eqz v7, :cond_2a

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_2a
    :goto_1f
    move-object/from16 v1, p1

    const/4 v3, 0x1

    goto/16 :goto_33

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShowNotificationAppIcon()Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz v11, :cond_2e

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->useSmallIcon()Z

    move-result v3

    if-nez v3, :cond_2e

    if-nez v8, :cond_2c

    goto :goto_20

    :cond_2c
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_20
    if-nez v6, :cond_2d

    goto :goto_21

    :cond_2d
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_21
    if-eqz v6, :cond_37

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_28

    :cond_2e
    if-nez v8, :cond_2f

    goto :goto_22

    :cond_2f
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_22
    if-nez v6, :cond_30

    goto :goto_23

    :cond_30
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_23
    if-eqz v8, :cond_31

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_31
    xor-int/lit8 v3, p3, 0x1

    const/4 v7, 0x0

    invoke-virtual {v0, v8, v7, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSmallIconSquircleBg(Landroid/widget/ImageView;ZZ)V

    invoke-virtual {v0, v8, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_28

    :cond_32
    const/4 v7, 0x0

    if-nez v8, :cond_33

    goto :goto_24

    :cond_33
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_24
    if-nez v6, :cond_34

    goto :goto_25

    :cond_34
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_25
    if-nez p3, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->useTopPresentation()Z

    move-result v3

    if-nez v3, :cond_35

    const/4 v3, 0x1

    :goto_26
    const/4 v6, 0x0

    goto :goto_27

    :cond_35
    const/4 v3, 0x0

    goto :goto_26

    :goto_27
    invoke-virtual {v0, v8, v6, v3, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSmallIconBg(Landroid/widget/ImageView;ZZZ)V

    if-eqz v8, :cond_36

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_36
    invoke-virtual {v0, v8, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_37
    :goto_28
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v3, :cond_42

    iget-boolean v6, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsCall:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_42

    move-object/from16 v7, v19

    if-nez v19, :cond_38

    goto :goto_29

    :cond_38
    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShowNotificationAppIcon()Z

    move-result v6

    if-eqz v6, :cond_39

    iget-object v6, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    const/4 v9, 0x0

    goto :goto_2c

    :cond_39
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v6, :cond_3a

    goto :goto_2a

    :cond_3a
    const/4 v6, 0x0

    :goto_2a
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f080d35

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v8, :cond_3b

    goto :goto_2b

    :cond_3b
    move-object v8, v9

    :goto_2b
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0715b0

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_2c
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v6, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    iget-object v15, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p1

    invoke-static {v1, v15}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadAppCustomColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_3c

    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;->processDominantColorInImage(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    invoke-static {v1, v15, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveAppCustomColor(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2d

    :cond_3c
    move/from16 v3, v19

    :goto_2d
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v3, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    invoke-virtual {v13, v12, v3, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v7, :cond_3d

    const v9, 0x7f0a0c7c

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    goto :goto_2e

    :cond_3d
    const/4 v9, 0x0

    :goto_2e
    if-nez v9, :cond_3e

    goto :goto_2f

    :cond_3e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v14, v13, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2f
    invoke-static {v8, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v13, v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    const/4 v12, -0x1

    invoke-direct {v10, v12, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v9, v8, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v7, :cond_3f

    const v6, 0x7f0a0c7d

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    goto :goto_30

    :cond_3f
    const/4 v6, 0x0

    :goto_30
    if-nez v6, :cond_40

    goto :goto_31

    :cond_40
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v9, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_31
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/16 v26, 0x1

    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x40200000    # 2.5f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x40200000    # 2.5f

    const/16 v24, 0x1

    const/high16 v25, 0x3f000000    # 0.5f

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v27}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3e6147ae    # 0.22f

    const/high16 v10, 0x3e800000    # 0.25f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v3, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v8}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v6, v12}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, v13, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3ea8f5c3    # 0.33f

    const v14, 0x3f2b851f    # 0.67f

    invoke-direct {v9, v10, v3, v14, v13}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v9}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v12}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz v7, :cond_41

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_41
    iput-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mCallFullPopupBacgroundView:Landroid/widget/FrameLayout;

    goto :goto_32

    :cond_42
    move-object/from16 v1, p1

    :goto_32
    const/4 v3, 0x0

    :goto_33
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v6, :cond_43

    const v7, 0x7f0a0c88

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    goto :goto_34

    :cond_43
    const/4 v6, 0x0

    :goto_34
    if-eqz v3, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShowNotificationAppIcon()Z

    move-result v7

    if-eqz v7, :cond_45

    if-eqz v6, :cond_44

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_44
    const/4 v7, 0x0

    goto :goto_35

    :cond_45
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v7, v7, v8}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSmallIconBg(Landroid/widget/ImageView;ZZZ)V

    if-eqz v6, :cond_46

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_46
    invoke-virtual {v0, v6, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :goto_35
    if-nez v6, :cond_47

    goto :goto_36

    :cond_47
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_36

    :cond_48
    const/4 v7, 0x0

    if-nez v6, :cond_49

    goto :goto_36

    :cond_49
    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_36
    if-eqz v3, :cond_4a

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4a

    move v6, v3

    goto :goto_37

    :cond_4a
    move v6, v7

    :goto_37
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateImportBadgeIconRing(Landroid/view/View;Z)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-object/from16 v3, v17

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-object/from16 v3, v18

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    if-nez v2, :cond_4b

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setRightIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    :cond_4b
    if-eqz p3, :cond_4c

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->setListItemTextLayout(Landroid/content/Context;Landroid/view/View;)V

    :cond_4c
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setMarqueeItem(Landroid/widget/TextView;)V

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    const-string/jumbo v1, "setPopupItemInfo Common - needsRedaction : "

    const-string v2, "S.S.N."

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setPopupViewLayout(Landroid/content/Context;ZLandroid/widget/FrameLayout;)V
    .locals 0

    return-void
.end method

.method public final setRightIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V
    .locals 1

    const p0, 0x7f0a0c95

    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    if-eqz v0, :cond_1

    if-lez p3, :cond_1

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mUriImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public showUnlockIconAnim()V
    .locals 0

    return-void
.end method

.method public final updateMoreNotificationCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mMoreNotificationCount:I

    return-void
.end method

.method public final updateShowNotificationTip()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mUserContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NotiShowCoverScreenTip"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isCoverscreenShowNotification()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    if-eqz p0, :cond_3

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SettingsHelper;->setCoverscreenShowNotificationTip(Z)V

    :cond_3
    return-void
.end method
