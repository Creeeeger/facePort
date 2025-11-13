.class final synthetic Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$onAttachedToWindow$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;

    const-string v5, "onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "onTaskFragmentInfoChanged"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/window/TaskFragmentInfo;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;

    sget-object v0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->Companion:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/window/TaskFragmentInfo;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->logger:Lcom/android/systemui/dreams/DreamLogger;

    const-string v0, "Finishing dream due to TaskFragment being empty"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->endDream(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
