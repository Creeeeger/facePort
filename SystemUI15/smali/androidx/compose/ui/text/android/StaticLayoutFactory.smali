.class public final Landroidx/compose/ui/text/android/StaticLayoutFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory;

.field public static final delegate:Landroidx/compose/ui/text/android/StaticLayoutFactory23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutFactory;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/StaticLayoutFactory;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory;

    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutFactory23;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/StaticLayoutFactory23;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactory;->delegate:Landroidx/compose/ui/text/android/StaticLayoutFactory23;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)Landroid/text/StaticLayout;
    .locals 22

    move-object/from16 v1, p0

    move/from16 v5, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v3, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutParams;

    move-object/from16 p0, v0

    invoke-direct/range {v0 .. v21}, Landroidx/compose/ui/text/android/StaticLayoutParams;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[I)V

    sget-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactory;->delegate:Landroidx/compose/ui/text/android/StaticLayoutFactory23;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->text:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->paint:Landroid/text/TextPaint;

    iget v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->width:I

    iget v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->start:I

    iget v5, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->end:I

    invoke-static {v1, v4, v5, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->textDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    iget-object v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->alignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->maxLines:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    iget-object v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsizedWidth:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingExtra:F

    iget v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingMultiplier:F

    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    iget-boolean v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->includePadding:Z

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->breakStrategy:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->hyphenationFrequency:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    iget-object v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->leftIndents:[I

    iget-object v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->rightIndents:[I

    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    sget v2, Landroidx/compose/ui/text/android/StaticLayoutFactory26;->$r8$clinit:I

    iget v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->justificationMode:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    sget v2, Landroidx/compose/ui/text/android/StaticLayoutFactory28;->$r8$clinit:I

    iget-boolean v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->useFallbackLineSpacing:Z

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    sget v2, Landroidx/compose/ui/text/android/StaticLayoutFactory33;->$r8$clinit:I

    new-instance v2, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v2}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    iget v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakStyle:I

    invoke-virtual {v2, v3}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v2

    iget v0, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineBreakWordStyle:I

    invoke-virtual {v2, v0}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method
