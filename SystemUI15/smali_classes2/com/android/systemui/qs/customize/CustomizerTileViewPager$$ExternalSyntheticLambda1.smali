.class public final synthetic Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/systemui/qs/customize/CustomTileInfo;

.field public final synthetic f$5:Lcom/android/systemui/qs/customize/CustomTileInfo;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;IIILcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/CustomTileInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$4:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iput-object p6, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$5:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iput p7, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$4:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$5:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;->f$6:I

    sget v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cur "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "pageOffset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "CSTMPagedTileLayout"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    iget-object v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    iget-object v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v2, v5, p0, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;IZ)V

    iget-object p0, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCircle:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method
