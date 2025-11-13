.class public abstract Landroidx/compose/ui/text/SaversKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final AnnotatedStringSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final AnnotationRangeListSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final AnnotationRangeSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final BaselineShiftSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final ClickableSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final ColorSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

.field public static final FontWeightSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final LinkSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final LocaleListSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final LocaleSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final OffsetSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

.field public static final ParagraphStyleSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final ShadowSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final SpanStyleSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final TextDecorationSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final TextGeometricTransformSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final TextIndentSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final TextLinkStylesSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final TextRangeSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

.field public static final UrlAnnotationSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

.field public static final VerbatimTtsAnnotationSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;

    sget-object v2, Landroidx/compose/runtime/saveable/SaverKt;->AutoSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->AnnotatedStringSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LinkSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->LinkSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$ClickableSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ClickableSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$ClickableSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ClickableSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->ClickableSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextLinkStylesSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextIndentSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextIndentSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$FontWeightSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$FontWeightSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$FontWeightSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$FontWeightSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextRangeSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextRangeSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextRangeSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextRangeSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->TextRangeSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$ColorSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ColorSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$ColorSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ColorSaver$2;

    new-instance v2, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextUnitSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextUnitSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextUnitSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextUnitSaver$2;

    new-instance v2, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$OffsetSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$OffsetSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$OffsetSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$OffsetSaver$2;

    new-instance v2, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleListSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LocaleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleSaver$2;

    new-instance v2, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v2, v1, v0}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    sput-object v2, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    return-void
.end method

.method public static final save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2, p0}, Landroidx/compose/runtime/saveable/Saver;->save(Landroidx/compose/runtime/saveable/SaveableHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    return-object p0
.end method
