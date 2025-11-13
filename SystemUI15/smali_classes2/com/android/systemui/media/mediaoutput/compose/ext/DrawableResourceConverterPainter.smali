.class public final Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;
.super Lcom/android/systemui/media/mediaoutput/compose/ext/ConverterPainter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter$Companion;


# instance fields
.field public final resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter$Companion;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConverterPainter;-><init>()V

    iput p1, p0, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;->resId:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/mediaoutput/compose/ext/DrawableResourceConverterPainter;-><init>(I)V

    return-void
.end method
