.class public final Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/text/selection/BoundaryFunction;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$1;

    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$1;->INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBoundary-fzxv0v0(Landroidx/compose/foundation/text/selection/SelectableInfo;I)J
    .locals 0

    iget-object p0, p1, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    invoke-static {p2, p0}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphStart(ILjava/lang/CharSequence;)I

    move-result p1

    invoke-static {p2, p0}, Landroidx/compose/foundation/text/StringHelpersKt;->findParagraphEnd(ILjava/lang/CharSequence;)I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    return-wide p0
.end method
