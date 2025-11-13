.class public final Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$2;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$2;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVrStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$2;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mVrModeEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iget-object v0, v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mHandler:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$2;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mHandler:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
