.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$2;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    return-void
.end method
