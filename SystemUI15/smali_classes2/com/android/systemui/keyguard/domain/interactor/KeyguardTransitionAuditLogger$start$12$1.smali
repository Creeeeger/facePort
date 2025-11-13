.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$12$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$12$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger$start$12$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLogger;->logger:Lcom/android/keyguard/logging/KeyguardLogger;

    sget-object p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionAuditLoggerKt;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    const-string p1, "keyguardTranslationY"

    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/keyguard/logging/KeyguardLogger;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
