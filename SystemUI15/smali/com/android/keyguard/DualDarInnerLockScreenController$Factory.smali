.class public final Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

.field public final mLayoutInflater:Landroid/view/LayoutInflater;

.field public final mParent:Lcom/android/keyguard/KeyguardSecSecurityContainer;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mParent:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iput-object p3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p6, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    iput-object p7, p0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method
