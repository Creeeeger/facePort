.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;
.super Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final DISPLAY_LANG_CODE_DELIMITER:Ljava/lang/String;

.field public final SR_LLM_PACKAGE_NAME:Ljava/lang/String;

.field public final SUPPORT_FUNCTION_SMART_REPLY:Ljava/lang/String;

.field public aiDisclaimerBtn:Landroid/widget/ImageView;

.field public final aodTspUpdateReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;

.field public final broadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$broadcastReceiver$1;

.field public callBackButtonText:Landroid/widget/TextView;

.field public childGraduateAge:I

.field public clearButtonText:Landroid/widget/TextView;

.field public currentAccount:Landroid/accounts/Account;

.field public detailButtonContainer:Landroid/widget/LinearLayout;

.field public detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

.field public isAiInfoConfirmed:Z

.field public isChildAccount:Z

.field public final isDebug:Z

.field public isPossibleAiReply:Z

.field public isRDUMode:Z

.field public isSALoggedIn:Z

.field public isSuggestResponsesEnabled:Z

.field public isUnusableAccount:Z

.field public keyboardReplyButton:Landroid/widget/ImageView;

.field public mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

.field public mHeaderViewLayout:Landroid/view/View;

.field public mIsClickedPopupKeyguardUnlockShowing:Z

.field public mIsContentScroll:Z

.field public mIsNaviBarBackButtonClicked:Z

.field public mIsReplySendButtonLoading:Z

.field public mIsStartedReplyActivity:Z

.field public final mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

.field public mProgressScaleAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mProgressScaleAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mPromptSB:Ljava/lang/StringBuilder;

.field public final mPromptSBForLog:Ljava/lang/StringBuilder;

.field public mReplyLayoutCurrentPostionY:F

.field public mSmartReplyClickedByUser:Z

.field public final mSmartReplyHashMap:Ljava/util/LinkedHashMap;

.field public mSmartReplyResult:I

.field public mSmartReplyResultCompleteMsg:Ljava/lang/StringBuilder;

.field public mSmartReplyResultFailureMsg:Ljava/lang/String;

.field public final mSrPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

.field public final mSrResponseCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;

.field public mUnlockNotificationPendingIntentItemKey:Ljava/lang/String;

.field public metaData:Ljava/lang/String;

.field public final onDeviceLanguageList:Ljava/util/List;

.field public openAppButtonText:Landroid/widget/TextView;

.field public final pkgBroadcastReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$pkgBroadcastReceiver$1;

.field public progressLayout:Landroid/widget/LinearLayout;

.field public progressingVi:Lcom/airbnb/lottie/LottieAnimationView;

.field public replyButtonText:Landroid/widget/TextView;

.field public sendButtonPopupWindow:Landroid/widget/PopupWindow;

.field public smartReplyAiLogoText:Landroid/widget/TextView;

.field public smartReplyErrorMessageView:Landroid/widget/TextView;

.field public smartReplyStatus:I

.field public smartReplyTriggerBtn:Landroid/widget/ImageView;

.field public smartReplyTriggerBtnText:Landroid/widget/TextView;

.field public suggestResponsesBtn:Landroid/widget/LinearLayout;

.field public titleText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 10
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

    invoke-direct/range {p0 .. p16}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManager;Lcom/android/systemui/bixby2/controller/NotificationController;Landroid/os/UserManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v1

    sget v2, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result v1

    sget v2, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_HIGH:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isDebug:Z

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsContentScroll:Z

    const-string v1, ""

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->titleText:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSB:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSBForLog:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyHashMap:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$broadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$broadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$pkgBroadcastReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$pkgBroadcastReceiver$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    new-instance v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->aodTspUpdateReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.action.UNLOCK_NOTIFICATION_PENDING_INTENT"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.samsung.android.action.INTELLIGENCE_SERVICE_SETTINGS_START_INTENT"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz v5, :cond_2

    const-string v6, "com.samsung.android.action.INTELLIGENCE_SERVICE_PROCESSING_ONLINE_INTENT"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object p2, p1

    move-object p3, v1

    move-object p4, v6

    move-object p5, v4

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move/from16 p8, v7

    invoke-virtual/range {p2 .. p8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object p2, v2

    move-object p3, v6

    move-object p4, v1

    move-object p5, v7

    move/from16 p7, v4

    invoke-virtual/range {p1 .. p7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initKeyguardStateConroller$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initKeyguardStateConroller$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateSmartReplyVariables()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->onDeviceLanguageList:Ljava/util/List;

    const-string v1, "com.samsung.android.offline.languagemodel"

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->SR_LLM_PACKAGE_NAME:Ljava/lang/String;

    const-string v1, "SmartReply"

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->SUPPORT_FUNCTION_SMART_REPLY:Ljava/lang/String;

    const-string v1, "-"

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->DISPLAY_LANG_CODE_DELIMITER:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    if-eqz v5, :cond_4

    new-instance v1, Lnotification/src/com/android/systemui/CloudPromptProcessor;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lnotification/src/com/android/systemui/CloudPromptProcessor;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    new-instance v1, Lnotification/src/com/android/systemui/SrPromptProcessor;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lnotification/src/com/android/systemui/SrPromptProcessor;-><init>(Landroid/content/Context;)V

    :goto_2
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrResponseCallback:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$mSrResponseCallback$1;

    return-void
.end method

.method public static final access$handleTextLinkClick(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&applicationRegion="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "&language="

    invoke-static {v3, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "&region="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&type="

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://policies.account.samsung.com/terms?appKey=j5p7ll8g33"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const/high16 v1, 0xc000000

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "runOnCover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ignoreKeyguardState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "showCoverToast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static final access$handleTurnOnClick(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setSuggestResponsesEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setSuggestResponsesUsed(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSmartReplyUnusable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->suggestResponsesBtn:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleTurnOnClick$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleTurnOnClick$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static final access$isSupportableLanguage(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->onDeviceLanguageList:Ljava/util/List;

    if-eqz p0, :cond_2

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->language:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final access$showReplyActivity(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsStartedReplyActivity:Z

    const-string v1, "S.S.N."

    if-eqz v0, :cond_0

    const-string/jumbo p0, "showReplyActivity mIsStartedReplyActivity is true"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsStartedReplyActivity:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    if-eqz v2, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    const-string v5, "key"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputMaxLength:I

    const-string v5, "maxLength"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputIsSms:Z

    const-string v5, "isSms"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputSignature:Ljava/lang/String;

    const-string/jumbo v5, "signature"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x14000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "com.android.systemui"

    const-string v6, "com.android.systemui.statusbar.notification.SubscreenNotificationReplyActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v3, v0}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1;

    invoke-direct {v0, p1, v4, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    const-string/jumbo p1, "start SubscreenNotificationReplyActivity. key: "

    invoke-static {p1, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    const-string p1, "QPNE0203"

    const-string p2, "app"

    const-string v0, "QPN102"

    invoke-static {v0, p1, p2, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static bindContent(Landroid/view/View;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 1

    const v0, 0x7f0a035b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    :cond_3
    :goto_2
    return-void
.end method

.method public static bindTime(Landroid/view/View;JLcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0358

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/DateTimeView;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView;->setVisibility(I)V

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Landroid/widget/DateTimeView;->setTime(J)V

    :cond_2
    iget-object p1, p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/DateTimeView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    return-void
.end method

.method public static isCallNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.skt.prod.dialer"

    const-string v2, "com.samsung.android.incallui"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "call"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static showErrorMessageWithAnim(Landroid/view/View;)V
    .locals 2

    const-string v0, "S.S.N."

    const-string/jumbo v1, "showErrorMessageWithAnim - B5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelReplySendButtonAnimator()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public final clickAdapterItem(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 4

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isCallNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    const-string v1, "S.S.N."

    if-eqz v0, :cond_0

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startNotificationIntent(Landroid/app/PendingIntent;)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "callNotificationLaunchApp B5 - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "QPN100"

    const-string p1, "QPNE0213"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsCall:Z

    if-nez v2, :cond_1

    const-string v2, "alarm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "clickAdapterItem B5 - put fullscreenIntent : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->makeSubScreenNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->showSubscreenNotification()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showBouncer(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    if-eqz v2, :cond_8

    iput v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    iput-object p2, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardUnlockShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "keyguard"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    if-eqz v2, :cond_8

    iput v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    iput-object p2, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    goto :goto_1

    :cond_5
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clickKnoxItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, " clickAdapterItem - clickKnoxItem is true"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, p1, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->animateClickNotification(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final clickKnoxItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " clickKnoxItem - isKnoxSecurity : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S.S.N."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz p0, :cond_2

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final closeFullscreenFullPopupWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mPresentation:Lcom/android/systemui/statusbar/notification/SubscreenNotificationPresentation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFullscreenFullPopupWindowClosing:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->dismissImmediately(I)V

    :cond_0
    return-void
.end method

.method public final detailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " DETAIL CLICKED B5 - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S.S.N."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->skipDetailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->closeFullscreenFullPopupWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsContentScroll:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    const/4 v5, 0x4

    if-eqz v1, :cond_6

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showBouncer(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    if-eqz v4, :cond_5

    iput v5, v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    iput-object p1, v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardUnlockShowing()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsClickedPopupKeyguardUnlockShowing:Z

    if-eqz v4, :cond_a

    iput v5, v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    iput-object p1, v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clickKnoxItem(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " detailClicked - clickKnoxItem is true"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsClickedPopupKeyguardUnlockShowing:Z

    if-eqz v1, :cond_9

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsClickedPopupKeyguardUnlockShowing:Z

    :cond_9
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->detailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_a
    :goto_1
    if-eqz p1, :cond_b

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_2

    :cond_b
    move-object v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPopupViewEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v2, :cond_c

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    :cond_c
    invoke-static {v1, v0, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isCoverBriefAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_e

    :cond_d
    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {p0}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    :cond_e
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x14

    if-eq v0, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v5, 0x13

    if-eq v0, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-eqz v5, :cond_8

    if-eq v5, v2, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v7, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsNaviBarBackButtonClicked:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->performBackClick()Z

    move-result v3

    goto/16 :goto_6

    :cond_3
    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_6

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    goto/16 :goto_6

    :cond_5
    new-array v1, v6, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071572

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    rsub-int v4, v4, 0x2d0

    if-le v0, v4, :cond_7

    sub-int/2addr v0, v4

    invoke-virtual {p1, v3, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    move-result p0

    aget v0, v1, v2

    if-ge v0, p0, :cond_10

    sub-int/2addr v0, p0

    invoke-virtual {p1, v3, v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v7, :cond_b

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsNaviBarBackButtonClicked:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    move v2, v3

    :goto_3
    const-string p0, "dispatchKeyEvent() - navi back click, ret: "

    const-string p1, "S.S.N."

    invoke-static {p0, p1, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    move v3, v2

    goto :goto_6

    :cond_b
    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    if-eq p1, v4, :cond_e

    if-ne p1, v1, :cond_d

    goto :goto_4

    :cond_d
    move v2, v3

    :cond_e
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_10

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    if-eqz v2, :cond_f

    goto :goto_5

    :cond_f
    const/4 v6, -0x2

    :goto_5
    add-int/2addr p1, v6

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_10
    :goto_6
    return v3
.end method

.method public final enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    cmpg-float v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p2, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;

    invoke-direct {v5, v0, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$enableSmartReplyTriggerBtn$1$1$1;-><init>(Landroid/widget/ImageView;F)V

    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    const-string/jumbo v3, "unsupportedLanguage"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "emptyMessage"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move p1, p2

    goto :goto_4

    :cond_4
    :goto_3
    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    const/4 p1, 0x0

    goto :goto_4

    :cond_5
    const/4 p1, 0x1

    :goto_4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtnText:Landroid/widget/TextView;

    if-eqz p0, :cond_8

    if-eqz p2, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method public final foldStateChanged(Z)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getTopActivityName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui.subscreen.SubHomeActivity"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-ne v1, v2, :cond_7

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v1, :cond_3

    const-string v3, "SubscreenNotificationDetailAdapter"

    if-nez v2, :cond_1

    const-string v1, "notificationActivityStarter is null"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startNotificationActivity  mSelectNotificationInfo : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->onNotificationClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v2}, Lcom/android/systemui/shade/ShadeController;->makeExpandedInvisible()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "startNotificationActivity no select holder..."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_7

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    :cond_4
    const-string v1, "QPNE0212"

    const-string v2, "app"

    const-string v3, "QPN102"

    invoke-static {v3, v1, v2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsClickedPopupKeyguardUnlockShowing:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz v2, :cond_6

    iput v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    iput-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iput-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mContext:Landroid/content/Context;

    :cond_6
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mUnlockNotificationPendingIntentItemKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateSmartReplyVariables()V

    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->foldStateChanged(Z)V

    return-void
.end method

.method public final getDetailAdapterAutoScrollCurrentPositionByReceive(Landroid/view/View;)I
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const-string v1, "S.S.N."

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-nez v3, :cond_0

    const-string p0, "getDetailAdapterAutoScrollCurrentPositionByReceive B5 - return - mSubRoomNotification?.isShownDetail is false"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mController:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->replyActivity:Lcom/android/systemui/statusbar/notification/SubscreenNotificationReplyActivity;

    if-eqz v3, :cond_1

    const-string p0, "getDetailAdapterAutoScrollCurrentPositionByReceive B5 - return - show reply activity"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz p0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getDetailAdapterAutoScrollCurrentPositionByReceive B5 - return - value is null  View : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", selectNotificationInfo : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    :goto_1
    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, v3

    :goto_2
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    if-eqz v0, :cond_17

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    const-string p0, "getDetailAdapterAutoScrollCurrentPositionByReceive B5 - size is zero"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    move-object v4, v3

    :goto_3
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f071572

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v5, :cond_9

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    :cond_9
    move-object v5, v3

    :goto_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    move-result v6

    rsub-int v6, v6, 0x2d0

    sub-int/2addr v6, v4

    add-int/2addr v6, v5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    goto :goto_5

    :cond_a
    move-object p0, v3

    :goto_5
    if-eqz p0, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    goto :goto_6

    :cond_b
    move-object v4, v3

    :goto_6
    if-nez v4, :cond_c

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-static {v2, v4}, Landroidx/core/view/ViewGroupKt;->get(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_c
    if-eqz p0, :cond_d

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    goto :goto_7

    :cond_d
    move-object v4, v3

    :goto_7
    const/4 v7, 0x1

    if-nez v4, :cond_e

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    sub-int/2addr v0, v7

    invoke-static {v0, p1}, Landroidx/core/view/ViewGroupKt;->get(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_e
    if-eqz p0, :cond_f

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    goto :goto_8

    :cond_f
    move-object p1, v3

    :goto_8
    if-eqz p1, :cond_11

    if-eqz p0, :cond_10

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    goto :goto_9

    :cond_10
    move-object p1, v3

    :goto_9
    if-nez p1, :cond_14

    :cond_11
    if-eqz p0, :cond_12

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    goto :goto_a

    :cond_12
    move-object p1, v3

    :goto_a
    if-eqz p0, :cond_13

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getDetailAdapterAutoScrollCurrentPositionByReceive B5 - prevItem is null,scrollInfo?.prevFirstHistoryView :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", scrollInfo?.prevLastHistoryView : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v0, 0x3

    div-int/2addr p1, v0

    int-to-float p1, p1

    add-float/2addr p0, p1

    int-to-float p1, v6

    cmpl-float v1, p1, p0

    if-lez v1, :cond_15

    int-to-float v1, v5

    cmpg-float v1, v1, p0

    if-gez v1, :cond_15

    return v0

    :cond_15
    cmpg-float p1, p1, p0

    if-gez p1, :cond_16

    return v7

    :cond_16
    int-to-float p1, v5

    cmpl-float p0, p1, p0

    if-lez p0, :cond_17

    const/4 p0, 0x2

    return p0

    :cond_17
    return v2
.end method

.method public final getDetailAdapterContentViewResource()I
    .locals 0

    const p0, 0x7f0d048b

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
    const p0, 0x7f0d0496

    goto :goto_0

    :cond_1
    const p0, 0x7f0d0494

    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getDetailAdapterReplyWordResource()I
    .locals 0

    const p0, 0x7f0d0490

    return p0
.end method

.method public final getDispalyHeight()I
    .locals 0

    const/16 p0, 0x2d0

    return p0
.end method

.method public final getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->DISPLAY_LANG_CODE_DELIMITER:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x6

    invoke-static {p1, p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getFullPopupWindowType()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x7ea

    return p0

    :cond_0
    const/16 p0, 0x7f8

    return p0
.end method

.method public final getGroupAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v0, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f0d04a0

    goto :goto_0

    :cond_1
    const v1, 0x7f0d049b

    goto :goto_0

    :cond_2
    const v1, 0x7f0d049d

    goto :goto_0

    :cond_3
    const v1, 0x7f0d0487

    goto :goto_0

    :cond_4
    const v1, 0x7f0d0485

    goto :goto_0

    :cond_5
    const v1, 0x7f0d049f

    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v2, 0x0

    invoke-virtual {p3, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eq p2, v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    const p2, 0x7f081417

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-object p1
.end method

.method public final getHistoryInfo(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    if-eqz v1, :cond_0

    const-string p0, "S.S.N."

    const-string p1, "getHistoryInfo() - this is reply notification. so do not call AI"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSBForLog:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    :goto_1
    if-ge v2, v4, :cond_9

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-wide v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    :goto_2
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    add-int/lit8 v7, v4, -0x1

    if-ge v2, v7, :cond_3

    invoke-virtual {v5}, Ljava/util/Date;->getYear()I

    move-result v7

    invoke-virtual {v9}, Ljava/util/Date;->getYear()I

    move-result v8

    if-gt v7, v8, :cond_8

    invoke-virtual {v5}, Ljava/util/Date;->getMonth()I

    move-result v7

    invoke-virtual {v9}, Ljava/util/Date;->getMonth()I

    move-result v8

    if-gt v7, v8, :cond_8

    invoke-virtual {v5}, Ljava/util/Date;->getDay()I

    move-result v7

    invoke-virtual {v9}, Ljava/util/Date;->getDay()I

    move-result v8

    if-gt v7, v8, :cond_8

    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v7

    invoke-virtual {v9}, Ljava/util/Date;->getHours()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v7, v3, :cond_3

    goto/16 :goto_4

    :cond_3
    sget-boolean v7, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz v7, :cond_5

    iget-boolean v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v8, 0x7f131312

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v8, 0x7f13130c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    if-eqz v7, :cond_7

    const-string v7, "User: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string v7, "Others: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-static {v6, v8}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getIsoCountryCode()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance p0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_2

    return-object p0

    :goto_1
    const-string v0, "getIsoCountryCode: "

    const-string v1, "S.S.N."

    invoke-static {v0, p0, v1}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLayoutInDisplayCutoutMode()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final getListAdapterGroupItemResource()I
    .locals 0

    const p0, 0x7f0d04a8

    return p0
.end method

.method public final getListAdapterLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/view/View;
    .locals 2

    packed-switch p2, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0d04ad

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0d04a6

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0d04aa

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0d0489

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0d04a3

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0d0485

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0d04ac

    :goto_0
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/4 p3, 0x6

    if-eq p2, p3, :cond_1

    const/4 p3, 0x5

    if-eq p2, p3, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    const p2, 0x7f081417

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMainHeaderViewHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getOnDeviceMetaData()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "S.S.N."

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->SR_LLM_PACKAGE_NAME:Ljava/lang/String;

    const-string v3, "On-Device LLM MetaData : "

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->metaData:Ljava/lang/String;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".FUNCTION_INFO"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->metaData:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->metaData:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "On-Device LLM Not Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method public final getPopUpViewDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 4

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->popupViewShowing:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->topPopupAnimationListener:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$topPopupAnimationListener$1;

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object v2

    :array_0
    .array-data 4
        0x0
        -0x3d720000    # -71.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x0
    .end array-data
.end method

.method public final getPopUpViewShowAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p1, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v1, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getPopUpViewShowAnimator$lambda$3$$inlined$doOnStart$1;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getPopUpViewShowAnimator$lambda$3$$inlined$doOnStart$1;-><init>()V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        -0x3d720000    # -71.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f733333    # 0.95f
    .end array-data
.end method

.method public final getReplyButtonView()Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubScreenManagerLazy:Ldagger/Lazy;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/subscreen/SubScreenManager;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    if-eqz v1, :cond_5

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d048d

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0af3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsReplySendButtonLoading:Z

    if-eqz p0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    return-object v0

    :cond_5
    const-string p0, "S.S.N."

    const-string v1, "can\'t inflate ReplyButtonView."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final getSelectedReplyBGColor()I
    .locals 0

    const p0, 0x7f0609c2

    return p0
.end method

.method public final getSubIconVisible(ZZ)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public final getSubscreenNotificationTipResource()I
    .locals 0

    const p0, 0x7f0d04b5

    return p0
.end method

.method public final getTopPresentationDismissAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {p1, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v1, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        -0x3d720000    # -71.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x0
    .end array-data
.end method

.method public final handleProgressLayout(Z)V
    .locals 2

    const-string v0, "handleProgressLayout() - show : "

    const-string v1, "S.S.N."

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleProgressLayout$runnable$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleProgressLayout$runnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startProgressSpringAnimation(Landroid/view/View;ZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleProgressLayout$runnable$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$handleProgressLayout$runnable$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startProgressSpringAnimation(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final hideSmartReplyErrorMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final inflateSmartReplyAI(Ljava/lang/String;)V
    .locals 11

    const-string v0, "S.S.N."

    const-string v1, "inflateSmartReplyAI()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v4, "\n"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {p1, v4, v1, v5}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v7, "~"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "!"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "#"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "$"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "^"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "&"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "*"

    const-string v9, "("

    invoke-static {v6, v7, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ")"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "`"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\""

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v6

    :goto_4
    if-ge v8, v7, :cond_8

    if-eq v6, v8, :cond_7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v5, v1

    :goto_7
    if-ge v5, p1, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x3

    if-lt p1, v2, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_8
    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception p1

    sget v3, Lkotlin/Result;->$r8$clinit:I

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_9
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    instance-of v4, v3, Lkotlin/Result$Failure;

    if-eqz v4, :cond_f

    move-object v3, p1

    :cond_f
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_b

    :cond_10
    :goto_a
    move-object p1, v0

    :goto_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v2, :cond_11

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_11
    if-eqz p1, :cond_19

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v4, :cond_13

    goto :goto_d

    :cond_13
    move-object v4, v0

    :goto_d
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    goto :goto_e

    :cond_14
    move-object v5, v0

    :goto_e
    const v6, 0x7f0d048f

    invoke-virtual {v4, v6, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0c6a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_15

    goto :goto_f

    :cond_15
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v3, :cond_16

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_16

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_16
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v3, :cond_12

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v3, :cond_12

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v5, :cond_12

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    if-nez v6, :cond_17

    goto :goto_c

    :cond_17
    new-instance v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3, v5, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c

    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_10

    :cond_19
    move p1, v1

    :goto_10
    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v3, :cond_1a

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getY()F

    :cond_1a
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1b

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startProgressSpringAnimation(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v2, :cond_1c

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1d

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    goto :goto_11

    :cond_1d
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$inflateSmartReplyAI$runnable$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "QPN102"

    const-string v2, "QPNE0215"

    const-string v3, "count"

    invoke-static {v0, v2, v3, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    return-void
.end method

.method public final initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->initDetailAdapterItemViewHolder(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    const-string p2, "S.S.N."

    const-string v0, "initDetailAdapterItemViewHolder() - B5"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0356

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0566

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$1$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->keyboardReplyButton:Landroid/widget/ImageView;

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a023e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->callBackButtonText:Landroid/widget/TextView;

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0567

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->replyButtonText:Landroid/widget/TextView;

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0103

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openAppButtonText:Landroid/widget/TextView;

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0298

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clearButtonText:Landroid/widget/TextView;

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0bb1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtnText:Landroid/widget/TextView;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0bb0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0ba7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0bae

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->suggestResponsesBtn:Landroid/widget/LinearLayout;

    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0b9e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$4$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p2

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->aiDisclaimerBtn:Landroid/widget/ImageView;

    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0ba1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyAiLogoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isAiInfoConfirmed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isAiInfoConfirmed:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSmartReplyUnusable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    return-void
.end method

.method public final initDetailAdapterTextViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openAppButtonText:Landroid/widget/TextView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0298

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clearButtonText:Landroid/widget/TextView;

    return-void
.end method

.method public final initKeyguardActioninfo()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mAction:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mSubscreenParentItemViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->isShowBouncer:Z

    :cond_0
    return-void
.end method

.method public final initMainHeaderView(Landroid/widget/LinearLayout;)V
    .locals 4

    const v0, 0x7f0a04e1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d0487

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final initMainHeaderViewItems(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v4, 0x7f0a013d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-eqz v4, :cond_1

    const v5, 0x7f0a0c71

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-eqz v5, :cond_2

    const v6, 0x7f0a0ada

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-eqz v6, :cond_3

    const v7, 0x7f0a0dc1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    goto :goto_3

    :cond_3
    move-object v6, v3

    :goto_3
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    const v9, 0x7f0a04d9

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_4

    :cond_4
    move-object v7, v3

    :goto_4
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    const/16 v10, 0x8

    if-eqz v9, :cond_5

    const v11, 0x7f0a0c70

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_5

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_5
    move-object v9, v3

    :goto_5
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-eqz v11, :cond_6

    const v12, 0x7f0a0c72

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_6

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v11}, Landroid/widget/ImageView;->clearColorFilter()V

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_6
    move-object v11, v3

    :goto_6
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-eqz v12, :cond_7

    const v13, 0x7f0a0c83

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_7

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_7
    move-object v12, v3

    :goto_7
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-eqz v13, :cond_8

    const v14, 0x7f0a0c88

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_8

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v13, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v13}, Landroid/widget/ImageView;->clearColorFilter()V

    invoke-virtual {v13, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_8
    move-object v13, v3

    :goto_8
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-eqz v14, :cond_9

    const v15, 0x7f0a073a

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_9

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    const/4 v14, 0x1

    if-eqz v1, :cond_a

    iget-object v15, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v15

    if-ne v15, v14, :cond_a

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v15, v8}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateMoreShadowIconColor(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_a
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-eqz v8, :cond_b

    const v15, 0x7f0a0c84

    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_b

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_9

    :cond_b
    move-object v8, v3

    :goto_9
    if-eqz v1, :cond_c

    iget-object v15, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mConversationIcon:Landroid/graphics/drawable/Icon;

    goto :goto_a

    :cond_c
    move-object v15, v3

    :goto_a
    if-eqz v1, :cond_d

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    goto :goto_b

    :cond_d
    const/4 v3, 0x0

    :goto_b
    if-eqz v1, :cond_e

    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_c

    :cond_e
    const/4 v10, 0x0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    move-result v16

    if-eqz v16, :cond_10

    if-eqz v1, :cond_f

    iget-object v14, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v14

    goto :goto_d

    :cond_f
    const/4 v14, 0x0

    :goto_d
    move-object/from16 v17, v6

    goto :goto_e

    :cond_10
    move-object/from16 v17, v6

    const/4 v14, 0x0

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v18, v5

    const v5, 0x7f1312e2

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v2, :cond_11

    goto :goto_f

    :cond_11
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_f
    if-nez p3, :cond_14

    if-eqz v2, :cond_12

    new-instance v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setBackKeyClickListener$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setBackKeyClickListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    if-eqz v2, :cond_13

    new-instance v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setBackKeyClickListener$2;

    invoke-direct {v6, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setBackKeyClickListener$2;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    :cond_13
    if-eqz v7, :cond_14

    new-instance v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initMainHeaderViewItems$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initMainHeaderViewItems$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    if-nez v2, :cond_15

    goto :goto_10

    :cond_15
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_10
    if-eqz v1, :cond_16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isConversation(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_16

    const/4 v2, 0x1

    goto :goto_11

    :cond_16
    const/4 v2, 0x0

    :goto_11
    if-nez v4, :cond_17

    goto :goto_13

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result v5

    if-eqz v5, :cond_18

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->titleText:Ljava/lang/CharSequence;

    goto :goto_12

    :cond_18
    if-eqz v1, :cond_19

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    goto :goto_12

    :cond_19
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_13
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-nez v2, :cond_1a

    goto :goto_15

    :cond_1a
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_14

    :cond_1b
    const/4 v4, 0x0

    :goto_14
    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_15
    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_1c
    if-nez v14, :cond_21

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    if-nez v15, :cond_1d

    if-eqz v3, :cond_21

    :cond_1d
    if-nez v12, :cond_1e

    goto :goto_16

    :cond_1e
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_16
    if-eqz v15, :cond_1f

    if-eqz v12, :cond_20

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_17

    :cond_1f
    if-eqz v12, :cond_20

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_20
    :goto_17
    const/4 v2, 0x1

    goto/16 :goto_21

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isShowNotificationAppIcon()Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz v9, :cond_23

    if-eqz v1, :cond_23

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->useSmallIcon()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    if-eqz v8, :cond_22

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_20

    :cond_22
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_20

    :cond_23
    if-eqz v1, :cond_25

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    if-eqz v8, :cond_25

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v11, v8

    const/4 v2, 0x0

    :cond_24
    :goto_18
    const/4 v3, 0x1

    goto :goto_1a

    :cond_25
    const/4 v2, 0x0

    if-eqz v11, :cond_24

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_26

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_19

    :cond_26
    const/4 v3, 0x0

    :goto_19
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    :goto_1a
    invoke-virtual {v0, v11, v3, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateSmallIconSquircleBg(Landroid/widget/ImageView;ZZ)V

    if-eqz v1, :cond_27

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_27

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_1b

    :cond_27
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v0, v11, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_20

    :cond_28
    if-eqz v1, :cond_2a

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    if-eqz v8, :cond_2a

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v11, v8

    const/4 v2, 0x0

    :cond_29
    :goto_1c
    const/4 v3, 0x1

    goto :goto_1e

    :cond_2a
    const/4 v2, 0x0

    if-eqz v11, :cond_29

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_2b

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1d

    :cond_2b
    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1c

    :goto_1e
    invoke-virtual {v0, v11, v3, v2, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateSmallIconBg(Landroid/widget/ImageView;ZZZ)V

    if-eqz v1, :cond_2c

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_2c

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_1f

    :cond_2c
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v0, v11, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :goto_20
    const/4 v2, 0x0

    :goto_21
    if-eqz v2, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isShowNotificationAppIcon()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-eqz v13, :cond_32

    if-eqz v1, :cond_2d

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_22

    :cond_2d
    const/4 v3, 0x0

    :goto_22
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_25

    :cond_2e
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v13, v3, v3, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateSmallIconBg(Landroid/widget/ImageView;ZZZ)V

    if-eqz v13, :cond_30

    if-eqz v1, :cond_2f

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_23

    :cond_2f
    const/4 v3, 0x0

    :goto_23
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_30
    if-eqz v1, :cond_31

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_31

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_24

    :cond_31
    const/4 v3, 0x0

    :goto_24
    invoke-virtual {v0, v13, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateIconColor(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_32
    :goto_25
    const/4 v3, 0x0

    if-nez v13, :cond_33

    goto :goto_26

    :cond_33
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_26

    :cond_34
    const/4 v3, 0x0

    if-nez v13, :cond_35

    goto :goto_26

    :cond_35
    const/16 v4, 0x8

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_26
    if-eqz v2, :cond_36

    if-eqz v1, :cond_36

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_36

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v2, :cond_36

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_36

    const/4 v8, 0x1

    goto :goto_27

    :cond_36
    move v8, v3

    :goto_27
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    invoke-virtual {v0, v2, v8}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateImportBadgeIconRing(Landroid/view/View;Z)V

    move-object/from16 v3, v18

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    move-object/from16 v3, v17

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->updateTwoPhoneIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    if-eqz v1, :cond_38

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    if-nez v7, :cond_37

    goto :goto_28

    :cond_37
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_38
    :goto_28
    return-void
.end method

.method public final initSmartReplyStatus()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultCompleteMsg:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultFailureMsg:Ljava/lang/String;

    return-void
.end method

.method public final isConversation(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)Z
    .locals 4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mUserPublic:Z

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz v0, :cond_2

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final isCoverBriefAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isPopStyleBrief()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isDismissiblePopup()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->useTopPresentation()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isKeyguardStats()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-ne v2, v1, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isKeyguardUnlockShowing()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    check-cast p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mUsersWithSeparateWorkChallenge:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public final isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/app/IActivityTaskManager;->isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isCallNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKidsModeRunning()Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mUserPublic:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isPreventOnlineProcessing()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "prevent_online_processing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final isReplyLayoutShowing()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071572

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    move-result v2

    rsub-int v2, v2, 0x2d0

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    :cond_3
    add-float/2addr v0, v1

    :cond_4
    int-to-float p0, v2

    cmpl-float p0, p0, v0

    if-lez p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final isSamsungAccountLoggedIn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    return p0
.end method

.method public final isShowNotificationAppIcon()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    move-result p0

    return p0
.end method

.method public final isSkipFullscreenIntentClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mFullScreenIntentEntries:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFullscreenFullPopupWindowClosing:Z

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->useTopPresentation()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSmartReplyUnusable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isRDUMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isAiInfoConfirmed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPreventOnlineProcessing()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isSupportRemoteView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 7

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v5, "com.sec.android.app.voicerecorder"

    const-string v6, "com.samsung.android.app.interpreter"

    const-string v1, "com.skt.prod.dialer"

    const-string v2, "com.samsung.android.incallui"

    const-string v3, "com.sec.android.app.clockpackage"

    const-string v4, "com.sec.android.app.voicenote"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final launchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    const-string v0, "S.S.N."

    const-string v1, "launchApp B5 -  Run App : "

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isLaunchApp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startNotificationIntent(Landroid/app/PendingIntent;)I

    move-result p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "unable to get isPackageEnabledForCoverLauncher()"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final launchFullscreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    const-string v0, "S.S.N."

    const-string v1, "launchFullscreenIntent B5 -  Run FullscreenIntent : "

    :try_start_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityTaskManager;->isPackageEnabledForCoverLauncher(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->startNotificationIntent(Landroid/app/PendingIntent;)I

    move-result p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "unable to get isPackageEnabledForCoverLauncher()"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final loadOnDeviceMetaData()V
    .locals 14

    const-string/jumbo v0, "}"

    const-string v1, "S.S.N."

    const-string v2, ""

    const-string/jumbo v3, "{ \"list\" : "

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->onDeviceLanguageList:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getOnDeviceMetaData()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "\\s+"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ",}"

    invoke-static {v3, v4, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ",]"

    const-string v4, "]"

    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-static {v0}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v3, "list"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonElement;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    new-instance v13, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3f

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v4, "order"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v4

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    const/4 v4, -0x1

    :goto_1
    iput v4, v13, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->order:I

    const-string v4, "language"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    move-object v4, v2

    :cond_3
    iput-object v4, v13, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->language:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->languageDisplayName:Ljava/lang/String;

    const-string/jumbo v4, "supportToneConversion"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v4

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    iput-boolean v4, v13, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportToneConversion:Z

    const-string/jumbo v4, "supportCorrection"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v4

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    iput-boolean v4, v13, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportCorrection:Z

    const-string/jumbo v4, "supportReply"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v4

    goto :goto_5

    :cond_6
    move v4, v6

    :goto_5
    iput-boolean v4, v13, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportReply:Z

    const-string/jumbo v4, "supportFunction"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    iget-object v3, v3, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->SUPPORT_FUNCTION_SMART_REPLY:Ljava/lang/String;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v6, v5

    goto :goto_6

    :cond_8
    iget v3, v13, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->order:I

    if-ltz v3, :cond_0

    iget-boolean v3, v13, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportReply:Z

    if-nez v3, :cond_9

    if-eqz v6, :cond_0

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->onDeviceLanguageList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->onDeviceLanguageList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadOnDeviceMetaData : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    const-string v0, "loadOnDeviceMetaData e: "

    invoke-static {v0, p0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method public final moveDetailAdapterContentScroll(Landroid/view/View;ZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "S.S.N."

    if-nez v4, :cond_2

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveDetailAdapterContentScroll B5 - return - value is null  View : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectNotificationInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsContentScroll:Z

    if-nez v4, :cond_3

    const-string v0, "moveDetailAdapterContentScroll B5 - return mIsContentScroll : "

    invoke-static {v0, v5, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsContentScroll:Z

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    instance-of v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    if-eqz v2, :cond_2b

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    if-eqz v2, :cond_2b

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_6

    const-string v0, "moveDetailAdapterContentScroll B5 - size is zero"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f071572

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    move-result v7

    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v9, v2, -0x1

    invoke-static {v9, v8}, Landroidx/core/view/ViewGroupKt;->get(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    int-to-float v7, v7

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v10

    add-float/2addr v10, v7

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v10, v7

    rsub-int v7, v6, 0x2d0

    int-to-float v7, v7

    cmpl-float v7, v10, v7

    if-ltz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    move v7, v4

    :goto_5
    iget-object v12, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v12

    const-string v13, "moveDetailAdapterContentScroll B5 - cuttent body height : "

    invoke-static {v12, v13, v5}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getY()F

    move-result v2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    goto :goto_6

    :cond_9
    move v1, v4

    :goto_6
    int-to-float v1, v1

    sub-float/2addr v2, v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_a

    float-to-int v1, v2

    invoke-virtual {v0, v4, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveDetailAdapterContentScroll B5 - isQuickReply scroll : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_b
    if-eqz p3, :cond_27

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v10, :cond_c

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_7

    :cond_c
    const/4 v10, 0x0

    :goto_7
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    move-result v12

    rsub-int v12, v12, 0x2d0

    sub-int/2addr v12, v6

    add-int/2addr v12, v10

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v6, :cond_d

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v6, :cond_d

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_e

    iget-object v13, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    goto :goto_9

    :cond_e
    const/4 v13, 0x0

    :goto_9
    if-nez v13, :cond_f

    iget-object v13, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-static {v4, v13}, Landroidx/core/view/ViewGroupKt;->get(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    :cond_f
    if-eqz v6, :cond_10

    iget-object v14, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    goto :goto_a

    :cond_10
    const/4 v14, 0x0

    :goto_a
    if-nez v14, :cond_11

    iget-object v14, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-static {v9, v14}, Landroidx/core/view/ViewGroupKt;->get(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    :cond_11
    if-eqz v6, :cond_12

    iget v9, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevHistoryCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_b

    :cond_12
    const/4 v9, 0x0

    :goto_b
    if-eqz v6, :cond_13

    iget-object v15, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    goto :goto_c

    :cond_13
    const/4 v15, 0x0

    :goto_c
    if-eqz v15, :cond_15

    if-eqz v6, :cond_14

    iget-object v15, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    goto :goto_d

    :cond_14
    const/4 v15, 0x0

    :goto_d
    if-nez v15, :cond_18

    :cond_15
    if-eqz v6, :cond_16

    iget-object v15, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    goto :goto_e

    :cond_16
    const/4 v15, 0x0

    :goto_e
    if-eqz v6, :cond_17

    iget-object v3, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "moveDetailAdapterContentScroll B5 - prevItem is null,scrollInfo?.prevFirstHistoryView :"

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", scrollInfo?.prevLastHistoryView : "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    add-float/2addr v3, v4

    if-eqz v6, :cond_19

    iget v4, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryViewBottomMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_10
    const/4 v6, 0x1

    goto :goto_11

    :cond_19
    const/4 v4, 0x0

    goto :goto_10

    :goto_11
    if-le v2, v6, :cond_1a

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v11, v2, -0x2

    invoke-static {v11, v6}, Landroidx/core/view/ViewGroupKt;->get(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_12

    :cond_1a
    const/4 v6, 0x0

    :goto_12
    int-to-float v11, v12

    cmpl-float v12, v11, v3

    if-lez v12, :cond_1e

    int-to-float v12, v10

    cmpg-float v12, v12, v3

    if-gez v12, :cond_1e

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v2, :cond_1c

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1b

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v6

    sub-int/2addr v2, v1

    neg-int v1, v2

    const-string v2, "latest prevFirstView?.height!! > lastItem.height"

    goto/16 :goto_16

    :cond_1b
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    const-string v2, "latest prevFirstView?.height!! <= lastItem.height"

    goto/16 :goto_16

    :cond_1c
    const-string v2, "latest normal"

    if-eqz v7, :cond_1d

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    goto/16 :goto_16

    :cond_1d
    :goto_13
    const/4 v1, 0x0

    goto/16 :goto_16

    :cond_1e
    cmpg-float v7, v11, v3

    if-gez v7, :cond_1f

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v2, :cond_24

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    neg-int v1, v2

    const-string v2, "postion top"

    goto/16 :goto_16

    :cond_1f
    int-to-float v7, v10

    cmpl-float v3, v7, v3

    if-lez v3, :cond_24

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v2, :cond_21

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_20

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v6

    sub-int/2addr v2, v1

    neg-int v1, v2

    const-string v2, "postion bottom History Max - prevFirstView > lastitem"

    goto :goto_16

    :cond_20
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    const-string v2, "postion bottom History Max - prevFirstView <= lastitem"

    goto :goto_16

    :cond_21
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v2, :cond_22

    goto :goto_14

    :cond_22
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071585

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v3, :cond_23

    goto :goto_15

    :cond_23
    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071578

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    add-int/2addr v2, v3

    if-gt v2, v1, :cond_24

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v6

    const-string v2, "postion bottom History Not Max"

    goto :goto_16

    :cond_24
    const-string v2, ""

    goto/16 :goto_13

    :goto_16
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v3, :cond_25

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v3, :cond_25

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_25
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mScrollInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryView:Landroid/view/View;

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevLastHistoryView:Landroid/view/View;

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevHistoryCount:I

    iput v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevFirstHistoryViewBottomMargin:I

    iput v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ScrollInfo;->mPrevBodyLayoutHeght:I

    :cond_26
    const-string v0, "moveDetailAdapterContentScroll B5 - isReceive scroll : "

    const-string v3, ", receiveMoveScroll : "

    invoke-static {v1, v0, v2, v3, v5}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_27
    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "moveDetailAdapterContentScroll B5 - totalY : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_28

    if-nez p4, :cond_28

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2b

    :cond_28
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getY()F

    move-result v2

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    if-eqz p4, :cond_2a

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_29

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_29
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moveDetailAdapterContentScroll B5 - updated : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_2b

    float-to-int v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    :cond_2b
    :goto_17
    return-void
.end method

.method public final onBindDetailAdapterItemViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->onBindDetailAdapterItemViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    const-string v0, "S.S.N."

    const-string v1, "onBindDetailAdapterItemViewHolder - B5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0bab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0bac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressingVi:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyAiLogoText:Landroid/widget/TextView;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isConversation(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1d

    iget p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mItemPostionInGroup:I

    if-gt p1, v2, :cond_1d

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI:Z

    if-nez p1, :cond_6

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz p1, :cond_4

    goto :goto_5

    :cond_4
    const-string p1, " NOT SUPPORT SMART REPLY AI"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    goto/16 :goto_8

    :cond_6
    :goto_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    if-nez p1, :cond_b

    sget-boolean p1, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesUsed()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_7
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isRDUMode:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    if-nez p1, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    if-nez p1, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    if-nez p1, :cond_f

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_f

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getHistoryInfo(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;-><init>(Landroid/content/Context;)V

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->refresh()Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    move-result-object p1

    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1;

    invoke-direct {v5, v1, v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$onBindDetailAdapterItemViewHolder$1;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {p1, v5}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    goto :goto_8

    :cond_e
    :goto_7
    const-string p1, "emptyMessage"

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    :cond_f
    :goto_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->keyboardReplyButton:Landroid/widget/ImageView;

    if-nez p1, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->inflateReplyWord()V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setEditButton(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0c6c

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    goto :goto_b

    :cond_12
    move-object v0, v3

    :goto_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07158a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v4, v0, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    goto :goto_c

    :cond_13
    move-object v0, v3

    :goto_c
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_14

    const v1, 0x7f071585

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_d

    :cond_14
    move-object v0, v3

    :goto_d
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_15

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_16

    invoke-virtual {p1, v4, v4}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_16
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p1, :cond_17

    goto :goto_e

    :cond_17
    move-object p1, v3

    :goto_e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071590

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_18

    goto :goto_f

    :cond_18
    move-object v0, v3

    :goto_f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071594

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_10

    :cond_19
    move-object v1, v3

    :goto_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p1, :cond_1a

    goto :goto_11

    :cond_1a
    move-object p1, v3

    :goto_11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07159e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v4, p1, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1b
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p1, :cond_1c

    goto :goto_12

    :cond_1c
    move-object p1, v3

    :goto_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071575

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a0b9f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v1, p1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v4, v1, p1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_1c

    :cond_1d
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->keyboardReplyButton:Landroid/widget/ImageView;

    if-nez p1, :cond_1e

    goto :goto_13

    :cond_1e
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_13
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->keyboardReplyButton:Landroid/widget/ImageView;

    if-nez p1, :cond_1f

    goto :goto_14

    :cond_1f
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_20
    :goto_14
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setEditButton(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_21

    goto :goto_15

    :cond_21
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->suggestResponsesBtn:Landroid/widget/LinearLayout;

    if-nez p1, :cond_22

    goto :goto_16

    :cond_22
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_16
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_23

    goto :goto_17

    :cond_23
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_17

    :cond_24
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move p1, v4

    goto :goto_19

    :cond_25
    :goto_17
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p1, :cond_26

    goto :goto_18

    :cond_26
    move-object p1, v3

    :goto_18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071584

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_19
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f081406

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, p1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_28

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_27

    goto :goto_1a

    :cond_27
    move-object v0, v3

    :goto_1a
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071573

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v4, v4, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_28
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_29

    goto :goto_1b

    :cond_29
    move-object v0, v3

    :goto_1b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071577

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_2a
    :goto_1c
    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->callBackButtonText:Landroid/widget/TextView;

    if-nez p1, :cond_2b

    goto :goto_1d

    :cond_2b
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mCallBackButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1d
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->replyButtonText:Landroid/widget/TextView;

    if-nez p1, :cond_2c

    goto :goto_1e

    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->keyboardReplyButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_2d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1e
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openAppButtonText:Landroid/widget/TextView;

    if-nez p1, :cond_2e

    goto :goto_1f

    :cond_2e
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1f
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clearButtonText:Landroid/widget/TextView;

    if-nez p1, :cond_2f

    goto :goto_20

    :cond_2f
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mClearButton:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_20
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtnText:Landroid/widget/TextView;

    if-nez p1, :cond_30

    goto :goto_21

    :cond_30
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    :cond_31
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_21
    return-void
.end method

.method public final onBindDetailAdapterTextViewHolder(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$TextViewHolder;)V
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openAppButtonText:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->clearButtonText:Landroid/widget/TextView;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mClearButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final onStateChangedInDeviceStateCallback(Landroid/hardware/devicestate/DeviceState;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFlexMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    :cond_1
    return-void
.end method

.method public final openPhonePopupForIntelligenceSettings(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const/high16 v1, 0x14000000

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "runOnCover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ignoreKeyguardState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "showCoverToast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "exception on openPhonePopupForIntelligenceSettings: "

    const-string v0, "S.S.N."

    invoke-static {p1, p0, v0}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final performBackClick()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownDetail()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    const/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    :cond_0
    const-string v0, "QPN102"

    const-string v1, "QPNE0214"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    move v1, v3

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isShownGroup()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mMainViewAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideGroupNotification()V

    goto :goto_0

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    invoke-interface {p0, v2}, Lnotification/src/com/android/systemui/BasePromptProcessor;->setNotificationKey(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "performBackClick() - ret: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "S.S.N."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final registerAODTspReceiver()V
    .locals 8

    const-string v0, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->aodTspUpdateReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;

    const-string v5, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public final releaseSmartReply()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSrPromptProcessor:Lnotification/src/com/android/systemui/BasePromptProcessor;

    invoke-interface {p0}, Lnotification/src/com/android/systemui/BasePromptProcessor;->releaseSmartReply()V

    return-void
.end method

.method public final removeSmartReplyHashMap(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final replyActivityFinished(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateMainHeaderView(Landroid/widget/LinearLayout;)V

    const-string v1, "S.S.N."

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateMainHeaderViewVisibility(I)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const-string p0, "replyActivityFinished() - forcedFinish"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mSelectNotificationInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_0

    :cond_1
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz p1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, p1, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->initMainHeaderViewItems(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Z)V

    :cond_3
    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    if-nez p1, :cond_4

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-eqz p1, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateMainHeaderViewVisibility(I)V

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-eqz p0, :cond_6

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_6
    const-string p0, "replyActivityFinished() - header visibility: "

    invoke-static {v3, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final resetProgressScaleAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public final runSmartReplyUncompletedOperation()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    const-string/jumbo v1, "runSmartReplyUncompletedOperation() - "

    const-string v2, "S.S.N."

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultCompleteMsg:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showSmartReplyResultComplete(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultFailureMsg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showSmartReplyResultFailure(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultCompleteMsg:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultFailureMsg:Ljava/lang/String;

    return-void
.end method

.method public final setClock(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V
    .locals 6

    if-eqz p2, :cond_0

    const p0, 0x7f0a0c7e

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/DateTimeView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_6

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mShowWhen:Z

    if-eqz p2, :cond_5

    iget-wide v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_5

    iget-boolean p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {p2, v1}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-wide p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v4, p1

    :goto_1
    invoke-virtual {p0, v4, v5}, Landroid/widget/DateTimeView;->setTime(J)V

    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-wide v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz p1, :cond_4

    iget-wide v1, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mWhenMillis:J

    :cond_4
    invoke-virtual {p0, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    invoke-virtual {p0, v0}, Landroid/widget/DateTimeView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/DateTimeView;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final setContentViewItem(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isConversation(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)Z

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    const v5, 0x7f0a0c71

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->titleText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v3, 0x0

    const-string v8, "S.S.N."

    if-eqz v2, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f071586

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f071588

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f071587

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f071590

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iget-object v12, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    iget-object v14, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v14, v14, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    const-string/jumbo v15, "setContentViewItem B5 - conversation key : "

    const-string v5, ", size : "

    invoke-static {v13, v15, v14, v5, v8}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v14, v3

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-boolean v6, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsChecked:Z

    if-eqz v6, :cond_3

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget-boolean v7, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    if-eqz v7, :cond_4

    const v7, 0x7f0d0492

    goto :goto_3

    :cond_4
    const v7, 0x7f0d0491

    :goto_3
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const v7, 0x7f0a035c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_5
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mPrevSender:Ljava/lang/String;

    const/16 v17, 0x1

    move-object/from16 v18, v5

    if-eqz v3, :cond_6

    iget-object v5, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move/from16 v3, v17

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    const-class v5, Landroid/app/Notification$MessagingStyle;

    move/from16 v19, v10

    iget-object v10, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v5, :cond_7

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "com.viber.voip"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move/from16 v5, v17

    :goto_7
    iget-boolean v10, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    xor-int/lit8 v10, v10, 0x1

    move/from16 v17, v11

    iget-object v11, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v11, v11, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsGroupConversation:Z

    or-int/2addr v5, v11

    and-int/2addr v5, v10

    if-eqz v5, :cond_11

    if-eqz v3, :cond_c

    if-nez v14, :cond_a

    goto :goto_8

    :cond_a
    if-nez v7, :cond_b

    goto :goto_b

    :cond_b
    const/4 v3, 0x4

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :cond_c
    :goto_8
    iget-object v3, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    const v5, 0x7f0a0360

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez v5, :cond_d

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    if-nez v5, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mPrevSender:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    invoke-static {v5, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mBodyLayoutString:Ljava/lang/String;

    if-nez v7, :cond_f

    goto :goto_b

    :cond_f
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_b
    if-nez v7, :cond_10

    :goto_c
    const/4 v5, 0x0

    goto :goto_d

    :cond_10
    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    :cond_11
    const/16 v3, 0x8

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;->mPrevSender:Ljava/lang/String;

    if-nez v7, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_d
    iget-object v3, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    invoke-static {v4, v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->bindContent(Landroid/view/View;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    iget-object v3, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mUriImage:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_13

    move/from16 v21, v2

    move-object/from16 v20, v6

    goto/16 :goto_14

    :cond_13
    const v7, 0x7f0a0359

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    if-nez v10, :cond_14

    goto :goto_e

    :cond_14
    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_e
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v5, :cond_15

    goto :goto_f

    :cond_15
    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v0, 0x7f071589

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ge v7, v0, :cond_1a

    if-ge v11, v0, :cond_1a

    const-string/jumbo v5, "resizing image. drawable width = "

    move-object/from16 v20, v6

    const-string v6, ", height = "

    move/from16 v21, v2

    const-string v2, " | minimum = "

    invoke-static {v7, v11, v5, v6, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v8, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    if-eqz v10, :cond_16

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_10

    :cond_16
    const/4 v2, 0x0

    :goto_10
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-le v7, v11, :cond_17

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_11

    :cond_17
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_11
    if-nez v10, :cond_18

    goto :goto_12

    :cond_18
    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_12
    if-nez v10, :cond_19

    goto :goto_13

    :cond_19
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_13

    :cond_1a
    move/from16 v21, v2

    move-object/from16 v20, v6

    :goto_13
    if-eqz v10, :cond_1b

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    :goto_14
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v2, 0x0

    if-eq v13, v14, :cond_1f

    iget-boolean v0, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    if-ne v0, v5, :cond_1f

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-wide v5, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    cmp-long v7, v5, v2

    if-lez v7, :cond_1c

    goto :goto_15

    :cond_1c
    iget-wide v5, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    :goto_15
    iget-wide v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    cmp-long v7, v10, v2

    if-lez v7, :cond_1d

    goto :goto_16

    :cond_1d
    iget-wide v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    :goto_16
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v7, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_17

    :cond_1e
    move-object/from16 v6, v20

    goto :goto_19

    :cond_1f
    :goto_17
    iget-wide v2, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-lez v0, :cond_20

    goto :goto_18

    :cond_20
    iget-wide v2, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    :goto_18
    invoke-static {v4, v2, v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->bindTime(Landroid/view/View;JLcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    sub-int v2, v21, v9

    move-object/from16 v6, v20

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_19
    if-ne v14, v13, :cond_21

    const/4 v0, 0x2

    div-int/lit8 v11, v17, 0x2

    add-int v11, v11, v19

    sub-int/2addr v11, v9

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_21
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    move/from16 v11, v17

    move-object/from16 v5, v18

    move/from16 v10, v19

    move/from16 v2, v21

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_22
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setContentViewItem B5 - key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d048b

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBigText:Ljava/lang/String;

    if-eqz v3, :cond_23

    goto :goto_1a

    :cond_23
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    :goto_1a
    invoke-static {v0, v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->bindContent(Landroid/view/View;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_24

    goto/16 :goto_22

    :cond_24
    const v3, 0x7f0a035b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0359

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f071580

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    const/4 v9, 0x2

    int-to-float v9, v9

    mul-float/2addr v9, v7

    const-string v10, "bindImageBitmap bitmapWidth : "

    const-string v11, " bitmapHeight : "

    const-string v12, " viewWidth : "

    invoke-static {v10, v5, v11, v6, v12}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " viewHeight : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object/from16 v16, v6

    goto :goto_1b

    :cond_25
    const/16 v16, 0x0

    :goto_1b
    move-object/from16 v6, v16

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x3

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v8, 0xc8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    const/16 v10, 0x120

    int-to-float v10, v10

    div-float/2addr v8, v10

    cmpl-float v8, v5, v8

    if-lez v8, :cond_26

    float-to-int v5, v7

    goto :goto_1c

    :cond_26
    float-to-int v5, v5

    :goto_1c
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_27

    const/4 v10, 0x0

    goto :goto_1d

    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f071581

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    :goto_1d
    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-nez v4, :cond_28

    goto :goto_1e

    :cond_28
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1e
    if-nez v4, :cond_29

    goto :goto_1f

    :cond_29
    float-to-int v3, v9

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setMaxHeight(I)V

    :goto_1f
    if-nez v4, :cond_2a

    goto :goto_20

    :cond_2a
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_20
    if-nez v4, :cond_2b

    goto :goto_21

    :cond_2b
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_21
    if-eqz v4, :cond_2c

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2c
    :goto_22
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mShowWhen:Z

    if-eqz v3, :cond_2d

    iget-wide v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    invoke-static {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->bindTime(Landroid/view/View;JLcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)V

    :cond_2d
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2e
    return-void
.end method

.method public final setDimOnMainBackground(Landroid/view/View;)V
    .locals 0

    const p0, 0x7f08141a

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public final setFullPopupWindowKeyEventListener(Landroid/widget/FrameLayout;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setFullPopupWindowKeyEventListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setFullPopupWindowKeyEventListener$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    :cond_0
    return-void
.end method

.method public final setGroupAdapterFooterMargin(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0715bc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const/4 p1, 0x0

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setGroupAdapterIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;)V
    .locals 2

    iget-object v0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isNotShwonNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mUserPublic:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v0

    xor-int/2addr v1, v0

    :cond_1
    :goto_0
    invoke-virtual {p3, p2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->setIconView(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;Z)V

    iget-object p2, p3, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setRightIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    return-void
.end method

.method public final setIsReplySendButtonLoading()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsReplySendButtonLoading:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->mReplyButtonView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    const v0, 0x7f0a0af3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setItemDecoration(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0715dd    # 1.795593E38f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0715ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0715e0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0715df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    move-object v1, v0

    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0715f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$setItemDecoration$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;IIIII)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public final setListItemTextLayout(Landroid/content/Context;Landroid/view/View;)V
    .locals 8

    const p0, 0x7f0a0c89

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0c8a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c7e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DateTimeView;

    const v2, 0x7f0a0c95

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0dc1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a0ada

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0de4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07161e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/DateTimeView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f071568

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f071611

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v1

    sub-int/2addr v5, v6

    :cond_0
    const v1, 0x7f0715aa

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f0715d2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v5, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f071625

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v5, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0715f7

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v5, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f071571

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v5, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07156e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_5
    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_0
    return-void
.end method

.method public final setPopupItemInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->setPopupItemInfo(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZ)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsGroupConversation:Z

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    const/4 p4, 0x0

    if-nez p3, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->needsRedaction:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    if-eqz p1, :cond_2

    const v0, 0x7f0a0c87

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p4

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->useTopPresentation()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->popupInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->setClock(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;Landroid/view/View;)V

    iget p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mNotiPopupType:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_5

    new-instance p1, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {p1, p2}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const p4, 0x7f060063

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    const/16 p4, 0x20

    if-ne p2, p4, :cond_4

    const/16 p2, 0x7a

    goto :goto_2

    :cond_4
    const/16 p2, 0x71

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f07161b

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    if-eqz p0, :cond_8

    const p2, 0x7f0a0c8e

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    goto :goto_3

    :cond_5
    const/4 p2, 0x1

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    if-eqz p1, :cond_6

    const p2, 0x7f0a0c8d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p4, p1

    check-cast p4, Landroid/widget/FrameLayout;

    :cond_6
    if-nez p4, :cond_7

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const p1, 0x7f08140f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final setPopupViewLayout(Landroid/content/Context;ZLandroid/widget/FrameLayout;)V
    .locals 0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->useTopPresentation()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0498

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d049a

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;->mPopUpViewLayout:Landroid/view/View;

    return-void
.end method

.method public final setQuickReplyFocusBackground(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const v0, 0x7f08141b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setSmartReplyResultValue(ILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResult:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultCompleteMsg:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyResultFailureMsg:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setStartedReplyActivity()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsStartedReplyActivity:Z

    return-void
.end method

.method public final showAIReply()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isConversation(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isReplyLayoutShowing()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_13

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v7, :cond_12

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    const-string v3, "callAIReply() - start smartReplyStatus : "

    const-string v9, "S.S.N."

    invoke-static {v0, v3, v9}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    if-eqz v0, :cond_2

    const-string v0, "callAIReply() return - CallAIReply is already running"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getHistoryInfo(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;)Ljava/lang/String;

    move-result-object v8

    const-string v0, ""

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v8, :cond_b

    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyHashMap:Ljava/util/LinkedHashMap;

    iget-object v6, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;

    if-eqz v5, :cond_6

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;->prevPrompt:Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    if-eqz v6, :cond_5

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    const-string v5, "callAIReply() continue - isAlreadyAiReply but click button by user"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v0, v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;->replyText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->inflateSmartReplyAI(Ljava/lang/String;)V

    const-string v0, "callAIReply() return - isAlreadyAiReply"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    goto/16 :goto_8

    :cond_6
    :goto_2
    iget v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    if-eq v5, v1, :cond_7

    const-string v0, "callAIReply() return - it\'s already progressing... "

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_7
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v5, :cond_8

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mReplyLayoutCurrentPostionY:F

    iget-object v4, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-direct {v6, v5}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;-><init>(Landroid/content/Context;)V

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v10, v10, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    sub-int/2addr v4, v1

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    iput-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->refresh()Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1;

    move-object v3, v1

    move-object v4, v6

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$callAIReply$1;-><init>(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;

    goto :goto_4

    :cond_a
    iput v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    :goto_4
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    const-string v1, "callAIReply() - end smartReplyStatus : "

    invoke-static {v0, v1, v9}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->handleProgressLayout(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_6
    if-eqz v8, :cond_d

    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_d
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    goto :goto_7

    :cond_e
    move v1, v2

    :cond_f
    :goto_7
    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    if-eqz v1, :cond_11

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateVisibilityForSmartReplyLayout(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    const v1, 0x7f131305

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showErrorMessageWithAnim(Landroid/view/View;)V

    :cond_11
    iput v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyStatus:I

    const-string v0, "callAIReply() return - history is null or empty"

    invoke-static {v0, v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_8
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    :cond_13
    return-void
.end method

.method public final showBouncer(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isKeyguardStats()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "showBouncer B5 -isMethodSecure : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUnlocked : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "S.S.N."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz v1, :cond_5

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    if-eqz v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.action.UNLOCK_NOTIFICATION_PENDING_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    const-string v4, "key"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v4, 0x14000000

    invoke-static {p1, v1, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "runOnCover"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "ignoreKeyguardState"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "showCoverToast"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->isShowBouncer:Z

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showBouncer$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showBouncer$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    :cond_3
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide/16 v1, 0x12c

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x0

    :goto_2
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_5
    const-string p0, "keyguard"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->semDismissKeyguard()V

    :cond_6
    :goto_3
    return-void
.end method

.method public final showReplyButtonViewPopupWindow(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 4

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->getMainHeaderViewHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const v3, 0x7f07159c

    invoke-static {v0, v3, p2}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mIsFlexMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mSubscreenMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int v0, v0, 0x2d0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    :cond_3
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    move-object v2, v3

    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071590

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_5

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;

    invoke-direct {v3, v0, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyButtonViewPopupWindow$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->sendButtonPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public final showSmartReplyResultComplete(Ljava/lang/StringBuilder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;->prevPrompt:Ljava/lang/String;

    iput-object p1, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$SmartReplyData;->replyText:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->inflateSmartReplyAI(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget p1, Lkotlin/Result;->$r8$clinit:I

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    return-void
.end method

.method public final showSmartReplyResultFailure(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->enableSmartReplyTriggerBtn(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->resetProgressScaleAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->progressingVi:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mPromptSB:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_5

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showErrorMessageWithAnim(Landroid/view/View;)V

    goto :goto_5

    :cond_4
    if-eqz p1, :cond_5

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    const-string v0, "Blocked by input safety filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v0, 0x7f131307

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    const-string v0, "Input is too long"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v0, 0x7f131304

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v0, 0x7f131305

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyErrorMessageView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showErrorMessageWithAnim(Landroid/view/View;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public final showUnlockIconAnim()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mKeyguardActionInfo:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$KeyguardActionInfo;->isShowBouncer:Z

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "S.S.N."

    if-nez v0, :cond_2

    const-string/jumbo p0, "showUnlockIconAnim() return - not in notiRoom"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz v2, :cond_3

    const-string/jumbo p0, "showUnlockIconAnim() return - show bouncer"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubScreenManagerLazy:Ldagger/Lazy;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/subscreen/SubScreenManager;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/android/systemui/subscreen/SubScreenManager;->mActivity:Lcom/android/systemui/subscreen/SubHomeActivity;

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d04b6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    const v2, 0x7f0a0ddd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    new-instance v4, Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-direct {v4, v0, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_5

    move-object v3, p0

    :cond_5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f071628

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/16 v3, 0x31

    invoke-virtual {v4, v0, v3, v1, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showUnlockIconAnim$1$1;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showUnlockIconAnim$1$1;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_6
    const-string p0, "can\'t inflate unlock icon"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    if-eqz p1, :cond_1

    const p1, 0x7f0715c8

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f0715ae

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    const p1, 0x7f071604

    goto :goto_1

    :cond_3
    const p1, 0x7f0715d0

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

    if-eqz p1, :cond_1

    const p1, 0x7f0715cc

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f0715f3

    goto :goto_1

    :cond_2
    const p1, 0x7f0715ec

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final startNotificationIntent(Landroid/app/PendingIntent;)I
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubDisplay:Landroid/view/Display;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getActivityOptions(ILandroid/view/RemoteAnimationAdapter;)Landroid/os/Bundle;

    move-result-object v9

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    move-object v3, p0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final startProgressSpringAnimation(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 8

    const-wide/16 v0, 0xc8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mReplyLayoutCurrentPostionY:F

    const/16 v7, 0x130

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    :cond_3
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v3, v6, v7

    invoke-static {v5, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    const v4, 0x3f59999a    # 0.85f

    move v5, v2

    move v2, v4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v3

    move v5, v4

    move v3, v2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->resetProgressScaleAnimation()V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$1;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, v5}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v1, p1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v0, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {v1, p1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$2;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$2;-><init>(ZLjava/lang/Runnable;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {v1, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p0, :cond_5

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_5
    return-void
.end method

.method public final unregisterAODTspReceiver()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->aodTspUpdateReceiver:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$aodTspUpdateReceiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, " unregisterAODTspReceiver IllegalArgumentException: "

    const-string v1, "S.S.N."

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final updateContentScroll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mIsContentScroll:Z

    return-void
.end method

.method public final updateIconContainer(Landroid/view/View;Z)V
    .locals 3

    const p0, 0x7f0a0508

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const v0, 0x7f0a0be0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final updateImportBadgeIconRing(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_6

    const v0, 0x7f0a0c85

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    const v1, 0x1060212

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isShowNotificationAppIcon()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    move-object v0, p0

    :cond_2
    const p0, 0x7f08127f

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_4

    move-object v0, p0

    :cond_4
    const p0, 0x7f0813fa

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final updateMainHeaderView(Landroid/widget/LinearLayout;)V
    .locals 1

    const v0, 0x7f0a04e1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    return-void
.end method

.method public final updateMainHeaderViewVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mHeaderViewLayout:Landroid/view/View;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method public final updateMoreShadowIconColor(Landroid/view/View;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const p2, 0x7f0a073a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v0, 0x7f08127d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v0, 0x7f080d35

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v0, 0x7f0604f5

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_4

    const/16 p0, 0x46

    goto :goto_3

    :cond_4
    const/16 p0, 0x19

    :goto_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p0, v0, v1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    return-void
.end method

.method public final updateSamsungAccount()V
    .locals 6

    const-string v0, "S.S.N."

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.osp.app.signin"

    iget v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentUserId:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    aget-object v2, v1, v3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->currentAccount:Landroid/accounts/Account;

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    goto :goto_2

    :cond_2
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v4

    :goto_2
    if-nez v1, :cond_5

    const-string/jumbo p0, "updateSamsungAccount() : No Change"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->currentAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_6

    move v3, v4

    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getChildAccount$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    const-string/jumbo v1, "updateSamsungAccount() : isSALoggedIn "

    invoke-static {v1, v0, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateSmallIconBg(Landroid/widget/ImageView;ZZZ)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smallIconPadding(ZZZ)I

    move-result p2

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p3

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p4, 0x7f080d35

    invoke-virtual {p0, p4, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public final updateSmallIconSquircleBg(Landroid/widget/ImageView;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smallIconPadding(ZZZ)I

    move-result p2

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const p3, 0x7f08127d

    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public final updateSmartReplyVariables()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAiInfoConfirmed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isAiInfoConfirmed:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSuggestResponsesEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shopdemo"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isRDUMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->updateSamsungAccount()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isRDUMode:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isAiInfoConfirmed:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    sget-boolean v7, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPreventOnlineProcessing()Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v1

    :cond_1
    const-string p0, "isRDUMode: "

    const-string v1, " isSALoggedIn: "

    const-string v7, " isChildAccount: "

    invoke-static {p0, v1, v7, v0, v3}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " isAiInfoConfirmed: "

    const-string v1, " isSuggestionResponsesEnabled: "

    invoke-static {p0, v4, v0, v5, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v0, " isPreventOnlineProcessing: "

    const-string v1, "S.S.N."

    invoke-static {p0, v6, v0, v2, v1}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public final updateVisibilityForSmartReplyLayout(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSmartReplyLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->aiDisclaimerBtn:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    sget-boolean v0, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyAiLogoText:Landroid/widget/TextView;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final useTopPresentation()Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentPresentationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v2, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v3, "call"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Landroid/app/Notification$CallStyle;

    invoke-virtual {p0, v2}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method
