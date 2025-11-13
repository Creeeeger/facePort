.class final Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $colorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $darkTheme:Z

.field final synthetic $tokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;


# direct methods
.method public constructor <init>(Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;ZLcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;",
            "Z",
            "Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1;->$tokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    iput-boolean p2, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1;->$darkTheme:Z

    iput-object p3, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1;->$colorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    iput-object p4, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1;->$content:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v1, v5

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1;->$tokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    sget-object v2, Lcom/samsung/sesl/compose/phone/ui/hapticfeedback/SeslPhoneHapticFeedbackConstantsKt;->SeslPhoneHapticFeedbackConstants:Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;

    iget-boolean v3, v0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1;->$darkTheme:Z

    iget-object v4, v0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1;->$colorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    new-instance v24, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    move-object/from16 v6, v24

    iget-wide v7, v4, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->controlNormal:J

    move-wide/from16 v21, v7

    iget-wide v7, v4, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->roundedCorner:J

    move-wide/from16 v17, v7

    iget-wide v7, v4, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->ripple:J

    move-wide/from16 v19, v7

    iget-wide v7, v4, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->primary:J

    iget-wide v9, v4, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->mainText:J

    iget-wide v11, v4, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->subText:J

    iget-wide v13, v4, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->pointText:J

    move/from16 p1, v3

    iget-wide v3, v4, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;->background:J

    move-wide v15, v3

    const/16 v23, 0x0

    invoke-direct/range {v6 .. v23}, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1$1;

    iget-object v0, v0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1;->$content:Lkotlin/jvm/functions/Function2;

    invoke-direct {v3, v0}, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v0, -0x509bd65c

    invoke-static {v0, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    const/16 v6, 0x6008

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v2

    move/from16 v2, p1

    move-object/from16 v3, v24

    invoke-static/range {v0 .. v7}, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt;->SeslBasicTheme(Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;ZLcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
