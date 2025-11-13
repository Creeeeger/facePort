.class public final Lcom/android/systemui/dreams/conditions/DreamCondition;
.super Lcom/android/systemui/shared/condition/Condition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDreamManager:Landroid/app/DreamManager;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/app/DreamManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/condition/Condition;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    new-instance p1, Lcom/android/systemui/dreams/conditions/DreamCondition$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/conditions/DreamCondition$1;-><init>(Lcom/android/systemui/dreams/conditions/DreamCondition;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p2, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mDreamManager:Landroid/app/DreamManager;

    iput-object p3, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mDreamManager:Landroid/app/DreamManager;

    invoke-virtual {v0}, Landroid/app/DreamManager;->isDreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object p0, p0, Lcom/android/systemui/dreams/conditions/DreamCondition;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
