.class public final Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;
.super Lcom/android/systemui/media/mediaoutput/compose/ext/ConverterPainter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;


# instance fields
.field public final imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConverterPainter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;)V

    return-void
.end method
