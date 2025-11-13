.class final synthetic Lcom/samsung/sesl/compose/phone/ui/hapticfeedback/SeslPhoneHapticFeedbackConstantsKt$SeslPhoneHapticFeedbackConstants$1;
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

    const-string v5, "canHapticFeedback(Landroid/view/View;)Z"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;

    const-string v4, "canHapticFeedback"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;->SUPPORT_TOUCH_FEEDBACK:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/samsung/sesl/sep/reflect/view/SepViewReflector;->INSTANCE:Lcom/samsung/sesl/sep/reflect/view/SepViewReflector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/samsung/sesl/sep/reflect/SepBaseReflector;->INSTANCE:Lcom/samsung/sesl/sep/reflect/SepBaseReflector;

    sget-object v1, Lcom/samsung/sesl/sep/reflect/view/SepViewReflector;->mClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v3, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "isVisibleToUser"

    invoke-static {v1, p0, v3}, Lcom/samsung/sesl/sep/reflect/SepBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p0, v3}, Lcom/samsung/sesl/sep/reflect/SepBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Boolean;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result p0

    if-nez p0, :cond_2

    move v0, v2

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
