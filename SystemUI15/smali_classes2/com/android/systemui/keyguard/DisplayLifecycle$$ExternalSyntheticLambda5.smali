.class public final synthetic Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;->f$1:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda11;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method
