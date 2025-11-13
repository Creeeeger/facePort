.class public final Lcom/android/keyguard/KeyguardKnoxGuardViewController;
.super Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAttemptCount:I

.field public final mCheckPasswordCallback:Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;

.field public final mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;

.field public mCountdownTimer:Landroid/os/CountDownTimer;

.field public mCurrentOrientation:I

.field public final mCustomerAppContainer:Landroid/widget/RelativeLayout;

.field public final mCustomerAppHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public final mCustomerAppImageView:Lcom/android/systemui/widget/SystemUIImageView;

.field public final mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

.field public final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field public final mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public final mMessageContainer:Landroid/widget/LinearLayout;

.field public final mMobileDataObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;

.field public final mOptionContainer:Landroid/widget/RelativeLayout;

.field public final mOptionHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public final mPhoneContainer:Landroid/widget/RelativeLayout;

.field public final mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public final mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public final mPinEditText:Lcom/android/systemui/widget/SystemUIEditText;

.field public final mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

.field public final mReceiver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;

.field public mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mScreenObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public mSkipPin:Z

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mTopContainer:Landroid/widget/LinearLayout;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static -$$Nest$mcheckUnlockAttempts(Lcom/android/keyguard/KeyguardKnoxGuardViewController;IJ)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkUnlockAttempts "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardKnoxGuardView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    if-nez p1, :cond_0

    const/4 p1, 0x3

    :try_start_0
    new-instance p2, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    invoke-direct {p2, p1, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    invoke-virtual {p2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p3

    invoke-virtual {v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-interface {p3, v0, p2}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed KNOXGUARD LOCK clear!!"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTriggerByRemoteLock(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p1

    invoke-virtual {v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {p1, v2, p2, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v2, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v6, p2, v4

    if-lez v6, :cond_1

    iget-wide v6, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    cmp-long v2, v6, p2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "update lockTimeout "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v6, v6, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " => "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iput-wide p2, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget p3, p2, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    if-lez p3, :cond_4

    iget-wide v1, p2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    cmp-long p2, v1, v4

    if-lez p2, :cond_4

    if-lez p1, :cond_4

    rem-int p2, p1, p3

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p2, v0}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p2

    iget-object p3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez p3, :cond_2

    const-wide/16 p2, -0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v4, p3, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v0, v4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    const-string v4, "remotelockscreen.lockoutdeadline"

    invoke-static {v2, v4, p3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(ILjava/lang/String;J)V

    move-wide p2, v0

    :goto_1
    invoke-virtual {v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v1, :cond_3

    const/4 p1, -0x1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    const-string v3, "remotelockscreen.failedunlockcount"

    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(ILjava/lang/String;J)V

    :goto_2
    iput p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mAttemptCount:I

    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->handleAttemptLockout(J)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p2, 0x7f1309fd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda8;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Landroid/view/inputmethod/InputMethodManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/keyguard/ScreenLifecycle;)V
    .locals 3

    move-object v0, p0

    invoke-direct/range {p0 .. p14}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSkipPin:Z

    iput v2, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mAttemptCount:I

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCurrentOrientation:I

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCheckPasswordCallback:Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$3;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v1, p18

    check-cast v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMobileDataObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mReceiver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a0d5b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTopContainer:Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a05d8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a059d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a059f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a05a0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIEditText;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Lcom/android/systemui/widget/SystemUIEditText;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a05a2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a05d3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a0583

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a088f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a00f0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a08d9

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a00f3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a08da

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a08dc

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a088e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionContainer:Landroid/widget/RelativeLayout;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a05c0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mEcaView:Landroid/view/View;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a00fc

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppImageView:Lcom/android/systemui/widget/SystemUIImageView;

    return-void
.end method

.method public static synthetic access$800(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final getInitialMessageResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object p0
.end method

.method public final handleAttemptLockout(J)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v8, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$9;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;JJ)V

    invoke-virtual {v8}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final needsInput()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onPause()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    return-void
.end method

.method public final onUserInput()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewAttached()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMobileDataObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mReceiver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;

    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCurrentOrientation:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Lcom/android/systemui/widget/SystemUIEditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$8;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v1, 0x7f0a08db

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const v2, 0x7f0a0890

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIImageView;

    const v2, 0x7f080bb2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f080bb6

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setKnoxGuardInfo()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$4;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMobileDataObserver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$6;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mReceiver:Lcom/android/keyguard/KeyguardKnoxGuardViewController$7;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardKnoxGuardViewController$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final resetPinErrorMessage()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method

.method public final resetState()V
    .locals 14

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v6, v6, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    const-string v7, "remotelockscreen.lockoutdeadline"

    invoke-static {v6, v7, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    invoke-interface {v6, v3, v4, v5, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v8, v4

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-gtz v3, :cond_1

    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v6, v6, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-static {v6, v7, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(ILjava/lang/String;J)V

    move-wide v2, v4

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v12, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v10, v12

    cmp-long v3, v8, v10

    if-lez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-wide v10, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    add-long/2addr v8, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v6, v6, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-static {v6, v7, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v8, v9}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->setLong(ILjava/lang/String;J)V

    :cond_2
    move-wide v2, v8

    :goto_1
    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-nez v1, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget v6, v6, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    const-string v7, "remotelockscreen.failedunlockcount"

    invoke-static {v6, v7, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    invoke-interface {v6, v1, v4, v5, v0}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    long-to-int v0, v4

    :goto_2
    iput v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mAttemptCount:I

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->handleAttemptLockout(J)V

    :cond_4
    return-void
.end method

.method public final setKnoxGuardInfo()V
    .locals 14

    const-string v0, "KeyguardKnoxGuardView"

    const-string v1, "setKnoxGuardInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    const-string v2, "mRemoteLockInfo is null - dismiss"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v1, v5, v0, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void

    :cond_1
    iget-object v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "mRemoteLockInfo.clientName is empty"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "mRemoteLockInfo.clientName is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCompanyNameTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_4

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v6, v6, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v7, :cond_6

    new-instance v8, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v8}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const-string v6, "mRemoteLockInfo.message is null"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-boolean v6, v6, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    const/16 v7, 0x8

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v6, "mRemoteLockInfo.skipSupportContainer is true"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f1309fe

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mOptionContainer:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v1, v9}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/Object;I)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v6, v6, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    if-eqz v6, :cond_c

    const-string v8, "customer_package_name"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_c

    iget-object v9, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v9, v9, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "customer_app_name"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    :try_start_0
    invoke-virtual {v10, v8, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "NameNotFoundException while updating icon : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v11, v5

    iget-object v12, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppImageView:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v4, :cond_a

    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v4, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10, v5, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07057a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f070578

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    invoke-virtual {v5, v3, v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_a
    if-eqz v11, :cond_b

    goto :goto_5

    :cond_b
    move-object v9, v8

    :goto_5
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f080bb5

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "customerPackageName : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",  isAppNameExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_e

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v8, v1, v6}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;I)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_c
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_d

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_d
    const-string v4, "mRemoteLockInfo.bundle is null"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_7
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-object v4, v4, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    if-eqz v4, :cond_10

    iget-object v5, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneSubTextTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v5, :cond_10

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneHeaderTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_8

    :cond_f
    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f1309fb

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v1, v5}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_10
    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v1, "mRemoteLockInfo.phoneNumber is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mRemoteLockInfo:Lcom/android/internal/widget/RemoteLockInfo;

    iget-boolean v0, v0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSkipPin:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateNetworkSettingsButton()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSkipPin:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Lcom/android/systemui/widget/SystemUIEditText;

    if-eqz v0, :cond_11

    invoke-virtual {v2, v7}, Lcom/android/systemui/widget/SystemUIEditText;->setVisibility(I)V

    invoke-virtual {v1, v7}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    goto :goto_9

    :cond_11
    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText;->setVisibility(I)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    iput v2, v0, Landroid/content/res/Configuration;->fontScale:F

    :cond_12
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public final setLong(ILjava/lang/String;J)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    invoke-interface {p0, p2, p3, p4, p1}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Couldn\'t write long "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardKnoxGuardView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final showToast(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mHandler:Lcom/android/keyguard/KeyguardKnoxGuardViewController$5;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showToast : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardKnoxGuardView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final updateLayout$1()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout$1()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->updateTopContainer()V

    return-void
.end method

.method public final updateNetworkSettingsButton()V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice()Z

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAllSimState()Z

    move-result v4

    const-string/jumbo v5, "updateNetworkSettingsButton wifi : "

    const-string v6, ",  mobileData : "

    const-string v7, ",  wifiOnly : "

    invoke-static {v5, v6, v7, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  noSimState : "

    const-string v7, "KeyguardKnoxGuardView"

    invoke-static {v5, v3, v6, v4, v7}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mWifiButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v6, :cond_3

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {v6, v0}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mDataButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p0, :cond_6

    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    if-nez v4, :cond_5

    :cond_4
    move v2, v5

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public final updateTopContainer()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    int-to-float v0, v0

    const v2, 0x7f07058c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTopContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const v4, 0x7f070597

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f07058e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    const v5, 0x7f07058d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mTopContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mLockMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mMessageContainer:Landroid/widget/LinearLayout;

    const v3, 0x7f070582

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const p0, 0x7f070581

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPhoneContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCustomerAppContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const p0, 0x7f07057f

    goto :goto_1

    :cond_3
    :goto_0
    const p0, 0x7f070580

    :goto_1
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setMaxHeight(I)V

    :cond_4
    return-void
.end method

.method public final verifyPasswordAndUnlock()V
    .locals 7

    const-string v0, "KeyguardKnoxGuardView"

    const-string/jumbo v1, "verifyPasswordAndUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinEditText:Lcom/android/systemui/widget/SystemUIEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->charSequenceToByteArray(Ljava/lang/CharSequence;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardKnoxGuardView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->resetPinErrorMessage()V

    array-length v2, v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-gt v2, v4, :cond_1

    array-length v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f1309fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mPinMessageTextView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {v0, v5, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPasswordText(ZZ)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->setPasswordEntryInputEnabled(Z)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v6, v3}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->mCheckPasswordCallback:Lcom/android/keyguard/KeyguardKnoxGuardViewController$2;

    invoke-interface {v2, v4, v1, v3, v6}, Lcom/android/internal/widget/ILockSettings;->checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardKnoxGuardView;

    invoke-virtual {p0, v5, v5}, Lcom/android/keyguard/KeyguardKnoxGuardView;->resetPasswordText(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Can\'t connect KNOX_GUARD"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
