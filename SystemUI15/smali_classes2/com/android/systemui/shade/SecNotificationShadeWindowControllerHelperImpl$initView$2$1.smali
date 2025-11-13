.class public final Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$2$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    iget-object p2, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->DEBUG_TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$2$1;->this$0:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->applyBouncer(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
