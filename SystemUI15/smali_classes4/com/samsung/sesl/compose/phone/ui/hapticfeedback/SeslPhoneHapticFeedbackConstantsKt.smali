.class public abstract Lcom/samsung/sesl/compose/phone/ui/hapticfeedback/SeslPhoneHapticFeedbackConstantsKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SeslPhoneHapticFeedbackConstants:Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;

    new-instance v1, Lcom/samsung/sesl/compose/phone/ui/hapticfeedback/SeslPhoneHapticFeedbackConstantsKt$SeslPhoneHapticFeedbackConstants$1;

    sget-object v2, Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;->INSTANCE:Lcom/samsung/sesl/sep/compat/view/SepHapticFeedbackConstantsCompat;

    invoke-direct {v1, v2}, Lcom/samsung/sesl/compose/phone/ui/hapticfeedback/SeslPhoneHapticFeedbackConstantsKt$SeslPhoneHapticFeedbackConstants$1;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/sesl/sep/reflect/view/SepHapticFeedbackConstantsReflector;->INSTANCE:Lcom/samsung/sesl/sep/reflect/view/SepHapticFeedbackConstantsReflector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/samsung/sesl/sep/reflect/SepBaseReflector;->INSTANCE:Lcom/samsung/sesl/sep/reflect/SepBaseReflector;

    sget-object v3, Lcom/samsung/sesl/sep/reflect/view/SepHapticFeedbackConstantsReflector;->mClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "hidden_semGetVibrationIndex"

    invoke-static {v3, v2, v4}, Lcom/samsung/sesl/sep/reflect/SepBaseReflector;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x1b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/samsung/sesl/sep/reflect/SepBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;-><init>(Lkotlin/jvm/functions/Function1;I)V

    sput-object v0, Lcom/samsung/sesl/compose/phone/ui/hapticfeedback/SeslPhoneHapticFeedbackConstantsKt;->SeslPhoneHapticFeedbackConstants:Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;

    return-void
.end method
