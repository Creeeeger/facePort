.class final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger$logUpdateEvent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $animationState:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger$logUpdateEvent$2;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;

    iput p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger$logUpdateEvent$2;->$animationState:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getStr1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool1()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result v2

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool2()Z

    move-result p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger$logUpdateEvent$2;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;

    iget p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger$logUpdateEvent$2;->$animationState:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLogger;->name(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Updating current event from: "

    const-string v4, "(forceVisible="

    const-string v5, ", priority="

    invoke-static {v3, v0, v4, v5, v1}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "), animationState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
