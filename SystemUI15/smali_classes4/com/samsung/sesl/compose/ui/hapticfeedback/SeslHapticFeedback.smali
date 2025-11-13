.class public final Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/hapticfeedback/HapticFeedback;


# instance fields
.field public final seslHapticFeedbackConstants:Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedback;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedback;->seslHapticFeedbackConstants:Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;

    return-void
.end method


# virtual methods
.method public final performHapticFeedback-CdsT49E(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedback;->seslHapticFeedbackConstants:Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;

    iget-object v1, v0, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;->canHapticFeedback:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedback;->view:Landroid/view/View;

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedback;->view:Landroid/view/View;

    sget-object v1, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackType;->INSTANCE:Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    if-nez p1, :cond_0

    iget p1, v0, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;->effectSwitch:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method
