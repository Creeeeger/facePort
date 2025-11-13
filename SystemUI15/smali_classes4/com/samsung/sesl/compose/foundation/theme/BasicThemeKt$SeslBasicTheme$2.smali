.class final Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;
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
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $colorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $darkTheme:Z

.field final synthetic $hapticFeedbackConstants:Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;

.field final synthetic $tokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;


# direct methods
.method public constructor <init>(Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;ZLcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;Lkotlin/jvm/functions/Function2;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;",
            "Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;",
            "Z",
            "Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;",
            "Lkotlin/jvm/functions/Function2;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$tokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    iput-object p2, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$hapticFeedbackConstants:Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;

    iput-boolean p3, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$darkTheme:Z

    iput-object p4, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$colorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    iput-object p5, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$content:Lkotlin/jvm/functions/Function2;

    iput p6, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$$changed:I

    iput p7, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$tokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    iget-object v1, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$hapticFeedbackConstants:Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;

    iget-boolean v2, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$darkTheme:Z

    iget-object v3, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$colorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    iget-object v4, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$content:Lkotlin/jvm/functions/Function2;

    iget p1, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    iget v7, p0, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt$SeslBasicTheme$2;->$$default:I

    invoke-static/range {v0 .. v7}, Lcom/samsung/sesl/compose/foundation/theme/BasicThemeKt;->SeslBasicTheme(Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;Lcom/samsung/sesl/compose/ui/hapticfeedback/SeslHapticFeedbackConstants;ZLcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
