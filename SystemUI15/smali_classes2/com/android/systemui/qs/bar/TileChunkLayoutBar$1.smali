.class public final Lcom/android/systemui/qs/bar/TileChunkLayoutBar$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/TileChunkLayoutBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar$1;->this$0:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar$1;->this$0:Lcom/android/systemui/qs/bar/TileChunkLayoutBar;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "settingsHelper onChanged() Settings:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p1, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isQSButtonGridPopupEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getQSButtonGridWidth()I

    move-result v1

    sget v2, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->BUTTON_WIDTH_MAX_RATIO:F

    sget v3, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->BUTTON_WIDTH_MIN_RATIO:F

    sub-float v4, v2, v3

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v4

    sub-float v5, v2, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->getDefaultProgress()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    sub-float/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QUICKSTAR_QS_TILE_LAYOUT_CUSTOM_MATRIX result[P:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", R:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] dP:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->getDefaultProgress()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iR:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cDR:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/SecTileChunkLayout;->updateTileWidth(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->mTileLayout:Lcom/android/systemui/qs/SecTileChunkLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecTileChunkLayout;->updateTileWidth(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/TileChunkLayoutBar;->calculateContainerHeight()V

    return-void
.end method
