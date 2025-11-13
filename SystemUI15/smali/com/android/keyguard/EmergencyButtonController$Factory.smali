.class public final Lcom/android/keyguard/EmergencyButtonController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/shade/ShadeController;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p2, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p4, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mPowerManager:Landroid/os/PowerManager;

    iput-object p6, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iput-object p7, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    iput-object p8, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelecomManager:Landroid/telecom/TelecomManager;

    iput-object p9, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object p10, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p11, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p12, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p13, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;
    .locals 16

    move-object/from16 v0, p0

    new-instance v15, Lcom/android/keyguard/EmergencyButtonController;

    iget-object v3, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mPowerManager:Landroid/os/PowerManager;

    iget-object v7, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iget-object v9, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v10, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v11, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v12, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object v13, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object v14, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v2, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v5, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v8, v0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v14}, Lcom/android/keyguard/EmergencyButtonController;-><init>(Lcom/android/keyguard/EmergencyButton;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/shade/ShadeController;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    return-object v15
.end method
