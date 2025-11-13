.class public final synthetic Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView;->mListener:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOffView$ClickListener;

    check-cast p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v0, 0x0

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    const-string p1, "SubroomFlashLightSettingsActivity"

    const-string v0, "onTurnOffClick: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->finishFlashLightActivity()V

    return-void
.end method
