.class public final synthetic Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(IIIIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$0:I

    iput p2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$1:I

    iput p3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$2:I

    iput p4, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$3:I

    iput p5, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$4:I

    iput-boolean p6, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$5:Z

    iput-boolean p7, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$6:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v1, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$0:I

    iget v2, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$1:I

    iget v3, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$2:I

    iget v4, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$3:I

    iget v5, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$4:I

    iget-boolean v6, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$5:Z

    iget-boolean v7, p0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager$$ExternalSyntheticLambda10;->f$6:Z

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorBase;->setFancyClipping(IIIIIZZ)V

    return-void
.end method
