.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository$refreshBlueprint$scheduleCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository$refreshBlueprint$scheduleCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository$refreshBlueprint$scheduleCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->assert:Lcom/android/systemui/util/ThreadAssert;

    invoke-virtual {v0}, Lcom/android/systemui/util/ThreadAssert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository$refreshBlueprint$scheduleCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;

    iget-object v1, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->targetTransitionConfig:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->refreshTransition:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "refreshBlueprint: Failed to emit blueprint refresh: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBlueprintRepository"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository$refreshBlueprint$scheduleCallback$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardBlueprintRepository;->targetTransitionConfig:Lcom/android/systemui/keyguard/ui/view/layout/blueprints/transitions/IntraBlueprintTransition$Config;

    return-void
.end method
