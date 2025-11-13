.class public final Lcom/android/systemui/animation/FontInterpolator$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/FontInterpolator$Companion;-><init>()V

    return-void
.end method

.method public static canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
