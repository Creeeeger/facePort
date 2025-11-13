.class public Lcom/android/systemui/qs/customize/CustomizerActiveTileViewPager;
.super Lcom/android/systemui/qs/customize/CustomizerTileViewPager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final setIsTopEdit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsTopEdit:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mIsScrollView:Z

    return-void
.end method
