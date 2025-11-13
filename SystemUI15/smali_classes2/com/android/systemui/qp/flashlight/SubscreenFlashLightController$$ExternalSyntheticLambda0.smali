.class public final synthetic Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->finishFlashLightActivity()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->finishFlashLightActivity()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->showTurnOffView()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
