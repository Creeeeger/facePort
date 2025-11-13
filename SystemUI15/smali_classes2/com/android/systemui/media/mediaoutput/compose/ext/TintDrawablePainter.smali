.class public final Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;
.super Lcom/android/systemui/media/mediaoutput/compose/ext/ConverterPainter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;


# instance fields
.field public final drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/compose/ext/ConverterPainter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/mediaoutput/compose/ext/TintDrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
