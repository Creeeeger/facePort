.class public final Lcom/android/systemui/qs/customize/view/QSFullTileCustomizer;
.super Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;-><init>(Landroid/content/Context;)V

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableColumns:I

    :cond_0
    return-void
.end method
