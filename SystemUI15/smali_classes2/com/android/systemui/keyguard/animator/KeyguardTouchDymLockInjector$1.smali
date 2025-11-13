.class public final Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLockStarEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mLockStarEnabled:Z

    return-void
.end method

.method public final onViewModeChanged(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;->this$0:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mViewMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KeyguardTouchDymLockInjector"

    const-string v2, "onViewModeChanged mViewMode[%d], newMode[%d]"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mViewMode:I

    return-void
.end method
