.class public final synthetic Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    sget p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->$r8$clinit:I

    iget-object p0, p1, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestAccessibilityFocus()Z

    return-void
.end method
