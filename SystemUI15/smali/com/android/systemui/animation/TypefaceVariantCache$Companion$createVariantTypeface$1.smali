.class public final Lcom/android/systemui/animation/TypefaceVariantCache$Companion$createVariantTypeface$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $baseTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/TypefaceVariantCache$Companion$createVariantTypeface$1;->$baseTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/graphics/fonts/FontVariationAxis;

    iget-object p0, p0, Lcom/android/systemui/animation/TypefaceVariantCache$Companion$createVariantTypeface$1;->$baseTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Typeface;->isSupportedAxes(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
