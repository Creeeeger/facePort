.class public final Lcom/android/keyguard/KeyguardArrowViewController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mView:Lcom/android/keyguard/KeyguardArrowView;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mView:Lcom/android/keyguard/KeyguardArrowView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method
