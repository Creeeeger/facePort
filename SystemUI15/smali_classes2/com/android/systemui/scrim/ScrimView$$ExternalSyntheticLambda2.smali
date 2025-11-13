.class public final synthetic Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/scrim/ScrimView;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/scrim/ScrimView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/scrim/ScrimView;

    iput p2, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda2;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/scrim/ScrimView;

    iget p0, p0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda2;->f$1:F

    iget v1, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    cmpl-float v1, p0, v1

    if-eqz v1, :cond_0

    iput p0, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    iget-object v1, v0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, v0, Lcom/android/systemui/scrim/ScrimView;->mQSScrimViewSwitch:Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/QSScrimViewSwitch;->_scrimBehindAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
