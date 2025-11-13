.class public final synthetic Lcom/android/systemui/qs/SecPageIndicator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/SecPageIndicator;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SecPageIndicator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecPageIndicator;

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/SecPageIndicator;

    iget p0, p0, Lcom/android/systemui/qs/SecPageIndicator$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, p1, Lcom/android/systemui/qs/SecPageIndicator;->mCallback:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$4;

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/android/systemui/qs/SecPageIndicator;->mQsExpansion:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$4;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method
