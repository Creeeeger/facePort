.class public final synthetic Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;

.field public final synthetic f$1:Lcom/android/systemui/animation/Expandable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;Lcom/android/systemui/animation/Expandable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/animation/Expandable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/animation/Expandable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_QUICK_TILE:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    if-eqz p0, :cond_0

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/systemui/animation/Expandable;->activityTransitionController(Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SecDeviceControlsTile;->mSecDeviceControlsController:Lcom/android/systemui/controls/controller/SecDeviceControlsController;

    check-cast v0, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/controller/SecDeviceControlsControllerImpl;->start(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    return-void
.end method
