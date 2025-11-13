.class public final synthetic Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->mSubscreenFlashlightController:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->finishFlashLightActivity()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->showUnavailableMessage()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
