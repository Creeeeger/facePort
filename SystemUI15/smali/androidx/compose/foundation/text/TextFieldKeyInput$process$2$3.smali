.class final Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;
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


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;

    invoke-direct {v0}, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    new-instance p0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    iget-wide v0, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->selection:J

    sget-object v2, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    long-to-int v4, v4

    iget-object p1, p1, Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;->annotatedString:Landroidx/compose/ui/text/AnnotatedString;

    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0, p1}, Landroidx/compose/foundation/text/StringHelpers_androidKt;->findPrecedingBreak(ILjava/lang/String;)I

    move-result p1

    sub-int/2addr v4, p1

    const/4 p1, 0x0

    invoke-direct {p0, v4, p1}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    return-object p0
.end method
