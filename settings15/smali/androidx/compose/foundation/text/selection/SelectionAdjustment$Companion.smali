.class public final Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/foundation/text/selection/BoundaryFunction;


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

.field public static final CharacterWithWordAccelerate:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

.field public static final INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

.field public static final INSTANCE$1:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

.field public static final None:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

.field public static final Paragraph:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

.field public static final Word:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->INSTANCE$1:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->None:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->Word:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->Paragraph:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->CharacterWithWordAccelerate:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundary-fzxv0v0(Landroidx/compose/foundation/text/selection/SelectableInfo;I)J
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide p0

    return-wide p0

    :pswitch_0
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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
