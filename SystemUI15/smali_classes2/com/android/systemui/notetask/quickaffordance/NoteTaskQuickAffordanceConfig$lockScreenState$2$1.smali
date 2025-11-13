.class final Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field synthetic Z$3:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;

    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    invoke-direct {v0, p0, p5}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;-><init>(Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->Z$0:Z

    iput-boolean p2, v0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->Z$1:Z

    iput-boolean p3, v0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->Z$2:Z

    iput-boolean p4, v0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->Z$3:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->Z$0:Z

    iget-boolean v0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->Z$1:Z

    iget-boolean v1, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->Z$2:Z

    iget-boolean v2, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->Z$3:Z

    iget-object v3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "lockScreenState:isUserUnlocked="

    invoke-static {v5, v3, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "lockScreenState:isStylusEverUsed="

    invoke-static {v5, v3, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "lockScreenState:isConfigSelected="

    invoke-static {v5, v3, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lockScreenState:isDefaultNotesAppSet="

    invoke-static {v4, v3, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    iget-boolean v3, v3, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->isEnabled:Z

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    new-instance p1, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    iget-object v0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    iget v0, v0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->pickerNameResourceId:I

    invoke-direct {p1, v0}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    new-instance v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget-object p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig$lockScreenState$2$1;->this$0:Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;

    iget p0, p0, Lcom/android/systemui/notetask/quickaffordance/NoteTaskQuickAffordanceConfig;->pickerIconResourceId:I

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Hidden;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Hidden;

    :goto_0
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
