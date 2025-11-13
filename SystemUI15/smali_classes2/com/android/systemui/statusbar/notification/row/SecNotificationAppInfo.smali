.class public Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.implements Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;


# instance fields
.field public final GOOGLE_SPORTS_APP_NAME:Ljava/lang/String;

.field public mActualHeight:I

.field public mAlertAllowed:Z

.field public mAppName:Ljava/lang/String;

.field public mAppUid:I

.field public mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

.field public mContentContainer:Landroid/view/View;

.field public mContentIcon:Lcom/android/internal/widget/CachingIconView;

.field public mContentNameContainer:Landroid/view/View;

.field public mContentText:Landroid/widget/TextView;

.field public mContentTitle:Landroid/widget/TextView;

.field public mDoneButton:Landroid/widget/TextView;

.field public mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field public mGutsIcon:Lcom/android/internal/widget/CachingIconView;

.field public mGutsNameContainer:Landroid/view/View;

.field public mINotificationManager:Landroid/app/INotificationManager;

.field public mIsDeviceProvisioned:Z

.field public mIsNonblockable:Z

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mNumTotalChannels:I

.field public mNumUniqueChannelsInRow:I

.field public final mOnCancelSettings:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;

.field public mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

.field public mPackageIsBlocked:Z

.field public mPackageName:Ljava/lang/String;

.field public mPkgIcon:Landroid/graphics/drawable/Drawable;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mPressedApply:Z

.field public mSbn:Landroid/service/notification/StatusBarNotification;

.field public mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field mSkipPost:Z

.field public mToggleButtonContainer:Landroid/view/View;

.field public mToggleSettingsButton:Landroid/widget/ImageView;

.field public mTurnOffButton:Landroid/widget/ImageView;

.field public mTurnOffConFirmButton:Landroid/widget/TextView;

.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSkipPost:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f130d37

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->GOOGLE_SPORTS_APP_NAME:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnCancelSettings:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final bindInlineControls$1()V
    .locals 6

    const v0, 0x7f0a0817

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mToggleSettingsButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mToggleSettingsButton:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsDeviceProvisioned:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mNumUniqueChannelsInRow:I

    if-le v5, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    :goto_0
    new-instance v5, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4, v2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Landroid/app/NotificationChannel;I)V

    move-object v4, v5

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0816

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsNonblockable:Z

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsNonblockable:Z

    if-eqz v2, :cond_2

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsNonblockable:Z

    if-eqz v2, :cond_3

    const/16 v1, 0x8

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->updateBottomButtonContainer(Z)V

    return-void
.end method

.method public final bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;Lcom/android/internal/logging/UiEventLogger;ZZLcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
    .locals 1

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p2, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    iput-boolean p9, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsNonblockable:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsDeviceProvisioned:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean p4, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    const/4 p5, 0x0

    const/4 p6, 0x0

    if-eqz p4, :cond_2

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-nez p2, :cond_0

    move-object p2, p5

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    move p7, p6

    :goto_1
    if-ge p7, p4, :cond_2

    invoke-interface {p2, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p9, p8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p9, p9, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p9}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p9

    iget-object p8, p8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p8, p8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p8}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p10

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p10

    if-eqz p10, :cond_1

    invoke-virtual {p8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p8

    iget-object p10, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p10, p10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p10}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p10

    invoke-virtual {p8, p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_1

    invoke-virtual {p1, p9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mNumUniqueChannelsInRow:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    invoke-interface {p1, p3, p2, p6}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mNumTotalChannels:I

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mNumUniqueChannelsInRow:I

    if-eqz p1, :cond_6

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, "miscellaneous"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mNumTotalChannels:I

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p4

    invoke-interface {p1, p3, p4}, Landroid/app/INotificationManager;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p3, "InfoGuts"

    const-string p4, "Unable to getNotificationAlertsEnabledForPackage"

    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, p2

    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertAllowed:Z

    const p1, 0x7f0a0814

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mToggleButtonContainer:Landroid/view/View;

    const p1, 0x7f0a0805

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentContainer:Landroid/view/View;

    const p1, 0x7f0a080b

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentTitle:Landroid/widget/TextView;

    const p3, 0x7f1310ae

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a080a

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentText:Landroid/widget/TextView;

    const p3, 0x7f1310af

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a080c

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/CachingIconView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsIcon:Lcom/android/internal/widget/CachingIconView;

    const p1, 0x7f0a080f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsNameContainer:Landroid/view/View;

    const p1, 0x7f0a0806

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/CachingIconView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentIcon:Lcom/android/internal/widget/CachingIconView;

    const p1, 0x7f0a0809

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentNameContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentTitle:Landroid/widget/TextView;

    const p3, 0x7f070b50

    const p4, 0x3f4ccccd    # 0.8f

    const p7, 0x3fa66666    # 1.3f

    invoke-static {p1, p3, p4, p7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentText:Landroid/widget/TextView;

    const p3, 0x7f070b4f

    invoke-static {p1, p3, p4, p7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mToggleButtonContainer:Landroid/view/View;

    invoke-virtual {p1, p6}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentContainer:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->updateIconNameVisibility(Z)V

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    const p5, 0xc2200

    invoke-virtual {p1, p3, p5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->checkGoogleSports()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsIcon:Lcom/android/internal/widget/CachingIconView;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentIcon:Lcom/android/internal/widget/CachingIconView;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/CachingIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0a080e

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f0a0808

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x105033d

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p1, p5, p4, p7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    invoke-static {p2, p5, p4, p7}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindInlineControls$1()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->updateTextColorOnOpenThemeOrColoring()V

    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_OPEN:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz p2, :cond_5

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p2

    iget-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p5}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p5

    invoke-interface {p3, p1, p2, p4, p5}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->notificationControlsLogMaker$1()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bindNotification requires at least one channel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkGoogleSports()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.samsung.android.app.aodservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "google_sports_nowbar_ongoing_channel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "com.google.android.googlequicksearchbox"

    const v3, 0xc2200

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->GOOGLE_SPORTS_APP_NAME:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final getActualHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mActualHeight:I

    return p0
.end method

.method public final getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final handleCloseControls(ZZ)Z
    .locals 7

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertAllowed:Z

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;IZZZ)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    if-eqz p1, :cond_0

    const-string p1, "QPNE0025"

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p1, p0}, Lcom/android/systemui/util/NotificationSAUtil;->sendTypeLog(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final initializeGutContentView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 13

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    :try_start_0
    const-class v1, Landroid/app/INotificationManager;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/INotificationManager;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v5, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v5, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-object v7, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v8, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v8, v8, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0, v1, v7, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    move-object v7, v8

    :goto_1
    const-class v1, Lcom/android/internal/logging/UiEventLogger;

    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v8, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/internal/logging/UiEventLogger;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    sget-object v9, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v9, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIsNonPackageBlockable()Z

    move-result v10

    const-class v1, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    sget-object v11, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v11, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v12, 0x1

    invoke-virtual {v1, p1, v12}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;Z)Z

    const-class p1, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->isFavoriteNotif(Ljava/lang/String;)Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;Lcom/android/internal/logging/UiEventLogger;ZZLcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v12

    :catch_0
    move-exception p0

    const-string p1, "InfoGuts"

    const-string v0, "error binding guts"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isAnimating()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final needsFalsingProtection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notificationControlsLogMaker$1()Landroid/metrics/LogMaker;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    const/16 v0, 0x655

    if-nez p0, :cond_0

    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    :goto_0
    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public final onFinishedClosing()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindInlineControls$1()V

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_CLOSE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->notificationControlsLogMaker$1()Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f130d1c

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f130d1b

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mActualHeight:I

    return-void
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSkipPost:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public final shouldBeSavedOnClose()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPressedApply:Z

    return p0
.end method

.method public final updateBottomButtonContainer(Z)V
    .locals 3

    const v0, 0x7f0a0800

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    xor-int/lit8 p1, p1, 0x1

    const v0, 0x7f0a080e

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070b61

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v2, v1, p0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public final updateIconNameVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsIcon:Lcom/android/internal/widget/CachingIconView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsNameContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentIcon:Lcom/android/internal/widget/CachingIconView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/CachingIconView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mContentNameContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateTextColorOnOpenThemeOrColoring()V
    .locals 5

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v0}, Lnoticolorpicker/NotificationColorPicker;->getGutsTextColor()I

    move-result v1

    invoke-virtual {v0}, Lnoticolorpicker/NotificationColorPicker;->getGutsTextColor()I

    move-result v2

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0604f1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    if-eqz v1, :cond_9

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lnoticolorpicker/NotificationColorPicker;->getNotificationBgColor$1()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f05008a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f06057b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_2
    const v0, 0x7f0a080e

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const v0, 0x7f0a080b

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    const v0, 0x7f0a080a

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    const v0, 0x7f0a0808

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    const v0, 0x7f0a0800

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f080d32

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public final willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
