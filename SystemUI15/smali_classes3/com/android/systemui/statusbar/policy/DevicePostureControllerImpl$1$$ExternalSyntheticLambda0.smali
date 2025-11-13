.class public final synthetic Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->getDevicePosture()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;->onPostureChanged(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
