.class public final synthetic Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView;->mListener:Lcom/android/systemui/qp/flashlight/SubroomFlashLightTurnOnView$TurnOnClickListener;

    check-cast p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mSecFlashlightController:Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecFlashlightControllerImpl;->showUnavailableMessage()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->showTurnOffView()V

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 p1, 0x1

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :goto_0
    return-void
.end method
