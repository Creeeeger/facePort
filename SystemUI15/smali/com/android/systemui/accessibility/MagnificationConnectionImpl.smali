.class public final Lcom/android/systemui/accessibility/MagnificationConnectionImpl;
.super Landroid/view/accessibility/IMagnificationConnection$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mConnectionCallback:Landroid/view/accessibility/IMagnificationConnectionCallback;

.field public final mHandler:Landroid/os/Handler;

.field public final mMagnification:Lcom/android/systemui/accessibility/Magnification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/Magnification;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/IMagnificationConnection$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mMagnification:Lcom/android/systemui/accessibility/Magnification;

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 11

    move-object v1, p0

    iget-object v9, v1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda10;

    move-object v0, v10

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final moveWindowMagnifier(IFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;IFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onFullscreenMagnificationActivationChanged(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;IZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onUserMagnificationScaleChanged(IIF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;IIF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeMagnificationButton(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeMagnificationSettingsPanel(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final secSetCursorVisible(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;IZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IMagnificationConnectionCallback;

    return-void
.end method

.method public final setScaleForWindowMagnification(IF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final showMagnificationButton(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationConnectionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/accessibility/MagnificationConnectionImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
