.class public final Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "contentTranslation"

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget p0, p1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->contentTranslation:F

    return p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    sget-object p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    invoke-virtual {p1, p2}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->setContentTranslation(F)V

    return-void
.end method
