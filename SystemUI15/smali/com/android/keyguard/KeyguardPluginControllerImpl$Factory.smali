.class public final Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDesktopManager:Lcom/android/systemui/util/DesktopManager;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iput-object p5, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iput-object p6, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p7, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p8, p0, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method
