.class public final Lcom/android/systemui/process/condition/SystemProcessCondition;
.super Lcom/android/systemui/shared/condition/Condition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mProcessWrapper:Lcom/android/systemui/process/ProcessWrapper;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/process/ProcessWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/condition/Condition;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    iput-object p2, p0, Lcom/android/systemui/process/condition/SystemProcessCondition;->mProcessWrapper:Lcom/android/systemui/process/ProcessWrapper;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/process/condition/SystemProcessCondition;->mProcessWrapper:Lcom/android/systemui/process/ProcessWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/process/ProcessWrapper;->isSystemUser()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/condition/Condition;->updateCondition(Z)V

    return-void
.end method

.method public final stop()V
    .locals 0

    return-void
.end method
