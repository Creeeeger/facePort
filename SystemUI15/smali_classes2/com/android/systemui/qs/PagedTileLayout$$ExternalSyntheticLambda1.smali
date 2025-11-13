.class public final synthetic Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/PagedTileLayout;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/PagedTileLayout;

    iput p2, p0, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/PagedTileLayout;

    iget p0, p0, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda1;->f$1:I

    sget-object v1, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit()V

    return-void
.end method
