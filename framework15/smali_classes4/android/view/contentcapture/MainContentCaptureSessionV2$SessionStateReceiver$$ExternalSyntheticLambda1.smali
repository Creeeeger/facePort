.class public final synthetic Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/contentcapture/MainContentCaptureSessionV2;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/contentcapture/MainContentCaptureSessionV2;ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver$$ExternalSyntheticLambda1;->f$0:Landroid/view/contentcapture/MainContentCaptureSessionV2;

    iput p2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver$$ExternalSyntheticLambda1;->f$2:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver$$ExternalSyntheticLambda1;->f$0:Landroid/view/contentcapture/MainContentCaptureSessionV2;

    iget v1, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver$$ExternalSyntheticLambda1;->f$2:Landroid/os/IBinder;

    invoke-static {v0, v1, v2}, Landroid/view/contentcapture/MainContentCaptureSessionV2$SessionStateReceiver;->lambda$send$1(Landroid/view/contentcapture/MainContentCaptureSessionV2;ILandroid/os/IBinder;)V

    return-void
.end method
