.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;
.super Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mClearCoverHeaderLayout:Landroid/view/View;

.field public mPopUpViewLayout:Landroid/view/View;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public mTopPopupHeight:I

.field public final mUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mUpdateMonitorCallback$1;


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

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mUpdateMonitorCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mUpdateMonitorCallback$1;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initKeyguardStateConroller$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initKeyguardStateConroller$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;)V

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mSettingsListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mSettingsListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method


# virtual methods
.method public final getDetailAdapterContentViewResource()I
    .locals 0

    const p0, 0x7f0d0085

    return p0
.end method

.method public final getDetailAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    if-eq p2, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const p0, 0x7f0d0087

    goto :goto_0

    :cond_1
    const p0, 0x7f0d0086

    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getGroupAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    if-eqz p2, :cond_3

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x4

    if-eq p2, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const p0, 0x7f0d049c

    goto :goto_0

    :cond_1
    const p0, 0x7f0d0083

    goto :goto_0

    :cond_2
    const p0, 0x7f0d0082

    goto :goto_0

    :cond_3
    const p0, 0x7f0d008a

    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getListAdapterGroupItemResource()I
    .locals 0

    const p0, 0x7f0d008d

    return p0
.end method

.method public final getListAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;
    .locals 0

    if-eqz p2, :cond_5

    const/4 p0, 0x1

    if-eq p2, p0, :cond_4

    const/4 p0, 0x2

    if-eq p2, p0, :cond_3

    const/4 p0, 0x3

    if-eq p2, p0, :cond_2

    const/4 p0, 0x4

    if-eq p2, p0, :cond_1

    const/4 p0, 0x5

    if-eq p2, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const p0, 0x7f0d008c

    goto :goto_0

    :cond_1
    const p0, 0x7f0d008e

    goto :goto_0

    :cond_2
    const p0, 0x7f0d0084

    goto :goto_0

    :cond_3
    const p0, 0x7f0d008b

    goto :goto_0

    :cond_4
    const p0, 0x7f0d0082

    goto :goto_0

    :cond_5
    const p0, 0x7f0d008f

    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getPopUpViewDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 5

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mTopPopupHeight:I

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->topPopupAnimationListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public final getPopUpViewShowAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mTopPopupHeight:I

    mul-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x0

    const/4 v2, 0x1

    aput p0, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public final getTopPopupLp()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1020120

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v0, "SubscreenNotification"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x30

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    return-object p0
.end method

.method public final initDisplay()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    if-eqz v1, :cond_1

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    const-string v0, "S.S.N."

    const-string v1, "Cover - fail to get subDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mTopPopupHeight:I

    return-void
.end method

.method public final initMainHeaderView(Landroid/widget/LinearLayout;)V
    .locals 2

    const v0, 0x7f0a0299

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mClearCoverHeaderLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x7f0a013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1312e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$initMainHeaderView$backButton$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final initialize()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initialize()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mUpdateMonitorCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover$mUpdateMonitorCallback$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/Uri;

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "turn_on_cover_screen_for_notification"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "cover_screen_show_notification"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public final isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isProper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsCovered:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final makePopupDetailView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLandroid/widget/FrameLayout;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "makePopupDetailView Cover- "

    const-string v6, "S.S.N."

    invoke-static {v5, v4, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0089

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0088

    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_1
    iput-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v4, :cond_4

    const v5, 0x7f0a0c8a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v5, :cond_5

    const v6, 0x7f0a0c7f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v6, :cond_6

    const v7, 0x7f0a0c82

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v7, :cond_7

    const v8, 0x7f0a0dc1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    :goto_7
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v8, :cond_8

    const v9, 0x7f0a0ada

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    const/4 v9, 0x0

    if-nez v4, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    if-nez v5, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    const/4 v10, 0x1

    if-eqz v2, :cond_b

    iget-boolean v11, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    if-ne v11, v10, :cond_b

    move v11, v10

    goto :goto_b

    :cond_b
    move v11, v9

    :goto_b
    if-eqz v2, :cond_c

    iget-object v12, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_c

    :cond_c
    const/4 v12, 0x0

    :goto_c
    if-eqz v2, :cond_d

    iget-object v13, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mConversationIcon:Landroid/graphics/drawable/Icon;

    goto :goto_d

    :cond_d
    const/4 v13, 0x0

    :goto_d
    if-eqz v2, :cond_e

    iget-object v14, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_e

    :cond_e
    const/4 v14, 0x0

    :goto_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v15

    goto :goto_f

    :cond_f
    const/4 v15, 0x0

    :goto_f
    if-eqz v2, :cond_10

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    goto :goto_10

    :cond_10
    const/4 v3, 0x0

    :goto_10
    if-eqz v1, :cond_11

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v9

    if-ne v9, v10, :cond_11

    move v9, v10

    goto :goto_11

    :cond_11
    const/4 v9, 0x0

    :goto_11
    const/16 v10, 0x8

    if-eqz v9, :cond_14

    if-eqz v2, :cond_12

    iget-object v15, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    goto :goto_12

    :cond_12
    const/4 v15, 0x0

    :goto_12
    if-nez v5, :cond_13

    goto :goto_13

    :cond_13
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_14
    :goto_13
    if-nez v4, :cond_15

    goto :goto_14

    :cond_15
    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->removeSpannableColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_14
    if-nez v5, :cond_16

    goto :goto_15

    :cond_16
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->removeSpannableColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    if-eqz v15, :cond_18

    invoke-static {v15}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_17

    goto :goto_16

    :cond_17
    const/4 v10, 0x0

    goto :goto_17

    :cond_18
    :goto_16
    const/4 v10, 0x1

    :goto_17
    if-eqz v3, :cond_1a

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_19

    goto :goto_18

    :cond_19
    const/4 v15, 0x0

    goto :goto_19

    :cond_1a
    :goto_18
    const/4 v15, 0x1

    :goto_19
    if-eqz v10, :cond_1f

    if-nez v5, :cond_1b

    goto :goto_1a

    :cond_1b
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1a
    if-nez v4, :cond_1c

    goto :goto_1b

    :cond_1c
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1b
    if-eqz v15, :cond_1f

    if-nez v4, :cond_1d

    goto :goto_1d

    :cond_1d
    if-eqz v2, :cond_1e

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    goto :goto_1c

    :cond_1e
    const/4 v3, 0x0

    :goto_1c
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1f
    :goto_1d
    if-eqz v15, :cond_21

    if-nez v5, :cond_20

    goto :goto_1e

    :cond_20
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_21
    :goto_1e
    if-nez v9, :cond_23

    if-nez p3, :cond_23

    if-eqz v11, :cond_23

    if-eqz v13, :cond_23

    if-eqz v6, :cond_22

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_22
    const/4 v10, 0x1

    goto :goto_20

    :cond_23
    if-eqz v14, :cond_24

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->useSmallIcon()Z

    move-result v3

    if-nez v3, :cond_24

    if-eqz v6, :cond_26

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    :cond_24
    if-eqz v6, :cond_25

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_25
    xor-int/lit8 v3, p3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v6, v4, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateSmallIconSquircleBg(Landroid/widget/ImageView;ZZ)V

    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_26
    :goto_1f
    const/4 v10, 0x0

    :goto_20
    if-nez p3, :cond_2c

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mPopUpViewLayout:Landroid/view/View;

    if-eqz v1, :cond_27

    const v3, 0x7f0a0c88

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    goto :goto_21

    :cond_27
    const/4 v3, 0x0

    :goto_21
    if-eqz v10, :cond_2a

    if-eqz v3, :cond_28

    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_28
    if-nez v3, :cond_29

    :goto_22
    const/16 v1, 0x8

    goto :goto_23

    :cond_29
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_22

    :cond_2a
    if-nez v3, :cond_2b

    goto :goto_22

    :cond_2b
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_23
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    invoke-static {v8, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    goto :goto_24

    :cond_2c
    const/16 v1, 0x8

    :goto_24
    if-eqz p3, :cond_2e

    if-nez v5, :cond_2d

    goto :goto_25

    :cond_2d
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2e
    :goto_25
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewNotiTemplate:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;

    if-nez v0, :cond_2f

    goto :goto_26

    :cond_2f
    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mMarqueeText:Landroid/widget/TextView;

    :goto_26
    return-void
.end method

.method public final onDisplayReady()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    xor-int/2addr v1, v3

    if-eqz v1, :cond_1

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "S.S.N."

    const-string v1, " CC screen - onDisplayReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_4

    sput-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iput-object p0, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iput-object p0, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v2, 0x7f0d04af

    invoke-virtual {p0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getDeviceModel()Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-result-object p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    const v2, 0x7f0a0c73

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->initMainHeaderView(Landroid/widget/LinearLayout;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initRecyclerView()V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final removeSpannableColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v0, 0x7f0609bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/16 p1, 0x21

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setListAdpaterFirstChildTopMargin(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mListAdapterItemPosition:I

    if-nez v0, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701f3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final setListAdpaterPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mListAdapterItemPosition:I

    return-void
.end method

.method public final smallIconPadding(ZZZ)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p2, :cond_1

    const p1, 0x7f0701e6

    goto :goto_1

    :cond_1
    const p1, 0x7f0701ec

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final squircleRadius(ZZ)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p2, :cond_1

    const p1, 0x7f0701f5

    goto :goto_1

    :cond_1
    const p1, 0x7f0701f4

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final updateMainHeaderViewVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCover;->mClearCoverHeaderLayout:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
