.class public final synthetic Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final synthetic f$1:Ldagger/Lazy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p2, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda2;->f$1:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda2;->f$1:Ldagger/Lazy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->addCallback(Lcom/android/systemui/keyguard/KeyguardFoldController$StateListener;IZ)Z

    return-void
.end method
