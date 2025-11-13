.class public final synthetic Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/doze/DozeTriggers;

.field public final synthetic f$1:Lcom/android/systemui/doze/DozeMachine$State;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeMachine$State;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/doze/DozeMachine$State;

    iput p3, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/doze/DozeTriggers;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/doze/DozeMachine$State;

    iget p0, p0, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    invoke-static {p0}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->fromReason(I)Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/doze/DozeTriggers;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method
