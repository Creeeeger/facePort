.class public final Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ResourceTrimmer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$3;->this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->transitionState:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    sget-object p2, Lcom/android/systemui/keyguard/shared/model/TransitionState;->FINISHED:Lcom/android/systemui/keyguard/shared/model/TransitionState;

    if-ne p1, p2, :cond_0

    sget p1, Lcom/android/systemui/keyguard/ResourceTrimmer;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1$3;->this$0:Lcom/android/systemui/keyguard/ResourceTrimmer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "ResourceTrimmer"

    const-string p2, "Sending TRIM_MEMORY_UI_HIDDEN."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->globalWindowManager:Lcom/android/systemui/utils/GlobalWindowManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p0

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
