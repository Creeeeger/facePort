.class public final synthetic Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/DoubleSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .locals 2

    iget v0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    int-to-double v0, p0

    return-wide v0

    :pswitch_0
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeExpandedFraction:F

    float-to-double v0, p0

    return-wide v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getEdgePosition()F

    move-result p0

    float-to-double v0, p0

    return-wide v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result p0

    float-to-double v0, p0

    return-wide v0

    :pswitch_3
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    float-to-double v0, p0

    return-wide v0

    :pswitch_4
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    float-to-double v0, p0

    return-wide v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getCurrentVelocity()F

    move-result p0

    float-to-double v0, p0

    return-wide v0

    :pswitch_6
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    int-to-double v0, p0

    return-wide v0

    :pswitch_7
    iget p0, p0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    float-to-double v0, p0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
