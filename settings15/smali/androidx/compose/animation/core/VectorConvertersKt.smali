.class public abstract Landroidx/compose/animation/core/VectorConvertersKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DpOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final IntToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final OffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final RectToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

.field public static final SizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/animation/core/VectorConvertersKt$FloatToVector$1;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$FloatToVector$1;

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt$FloatToVector$2;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$FloatToVector$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/VectorConvertersKt$IntToVector$1;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$IntToVector$1;

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt$IntToVector$2;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$IntToVector$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->IntToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/VectorConvertersKt$DpToVector$1;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$DpToVector$1;

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt$DpToVector$2;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$DpToVector$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/VectorConvertersKt$DpOffsetToVector$1;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$DpOffsetToVector$1;

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt$DpOffsetToVector$2;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$DpOffsetToVector$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->DpOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$2;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->SizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/VectorConvertersKt$OffsetToVector$1;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$OffsetToVector$1;

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt$OffsetToVector$2;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$OffsetToVector$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->OffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/VectorConvertersKt$IntOffsetToVector$1;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$IntOffsetToVector$1;

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt$IntOffsetToVector$2;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$IntOffsetToVector$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/VectorConvertersKt$IntSizeToVector$1;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$IntSizeToVector$1;

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt$IntSizeToVector$2;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$IntSizeToVector$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->IntSizeToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    sget-object v0, Landroidx/compose/animation/core/VectorConvertersKt$RectToVector$1;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$RectToVector$1;

    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt$RectToVector$2;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$RectToVector$2;

    new-instance v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {v2, v0, v1}, Landroidx/compose/animation/core/TwoWayConverterImpl;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    sput-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->RectToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    return-void
.end method
