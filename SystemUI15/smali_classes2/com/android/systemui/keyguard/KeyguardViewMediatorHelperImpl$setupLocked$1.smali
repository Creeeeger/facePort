.class final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$setupLocked$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "onPanelStateChanged(II)V"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const-string v4, "onPanelStateChanged"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->getShadeWindowControllerHelper()Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelper;

    move-result-object p0

    const/4 p1, 0x0

    check-cast p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->resetForceInvisible(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
