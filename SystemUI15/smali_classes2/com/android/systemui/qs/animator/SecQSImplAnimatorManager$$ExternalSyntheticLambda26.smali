.class public final synthetic Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(FFLcom/android/systemui/shade/PanelSlideEventHandler$Direction;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda26;->f$0:F

    iput p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda26;->f$1:F

    iput-object p3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda26;->f$2:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    iput p4, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda26;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda26;->f$0:F

    iget v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda26;->f$1:F

    iget-object v2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda26;->f$2:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    iget p0, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda26;->f$3:I

    check-cast p1, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->slide(FFLcom/android/systemui/shade/PanelSlideEventHandler$Direction;I)V

    return-void
.end method
