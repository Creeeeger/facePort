.class final Landroid/view/contentcapture/ChildContentCaptureSession;
.super Landroid/view/contentcapture/ContentCaptureSession;
.source "ChildContentCaptureSession.java"


# instance fields
.field private final blacklist mParent:Landroid/view/contentcapture/ContentCaptureSession;


# direct methods
.method protected constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/view/contentcapture/ContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureContext;)V

    iput-object p1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    return-void
.end method


# virtual methods
.method blacklist flush(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->flush(I)V

    return-void
.end method

.method blacklist getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    return-object v0
.end method

.method blacklist internalNotifyChildSessionFinished(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyChildSessionFinished(II)V

    return-void
.end method

.method blacklist internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V

    return-void
.end method

.method blacklist internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V

    return-void
.end method

.method blacklist internalNotifySessionPaused()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionPaused()V

    return-void
.end method

.method blacklist internalNotifySessionResumed()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifySessionResumed()V

    return-void
.end method

.method blacklist internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewAppeared(ILandroid/view/contentcapture/ViewNode$ViewStructureImpl;)V

    return-void
.end method

.method blacklist internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewDisappeared(ILandroid/view/autofill/AutofillId;)V

    return-void
.end method

.method blacklist internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {v0, v1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewInsetsChanged(ILandroid/graphics/Insets;)V

    return-void
.end method

.method blacklist internalNotifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTextChanged(ILandroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public blacklist internalNotifyViewTreeEvent(IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->internalNotifyViewTreeEvent(IZ)V

    return-void
.end method

.method blacklist isContentCaptureEnabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->isContentCaptureEnabled()Z

    move-result v0

    return v0
.end method

.method blacklist isDisabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureSession;->isDisabled()Z

    move-result v0

    return v0
.end method

.method blacklist newChild(Landroid/view/contentcapture/ContentCaptureContext;)Landroid/view/contentcapture/ContentCaptureSession;
    .locals 3

    new-instance v0, Landroid/view/contentcapture/ChildContentCaptureSession;

    invoke-direct {v0, p0, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;-><init>(Landroid/view/contentcapture/ContentCaptureSession;Landroid/view/contentcapture/ContentCaptureContext;)V

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    iget v2, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    invoke-virtual {p0, v1, v2, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;->internalNotifyChildSessionStarted(IILandroid/view/contentcapture/ContentCaptureContext;)V

    return-object v0
.end method

.method public blacklist notifyContentCaptureEvents(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->notifyContentCaptureEvents(Landroid/util/SparseArray;)V

    return-void
.end method

.method public blacklist notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/contentcapture/ContentCaptureSession;->notifyWindowBoundsChanged(ILandroid/graphics/Rect;)V

    return-void
.end method

.method blacklist onDestroy()V
    .locals 2

    iget-object v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mParent:Landroid/view/contentcapture/ContentCaptureSession;

    iget v0, v0, Landroid/view/contentcapture/ContentCaptureSession;->mId:I

    iget v1, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, v1}, Landroid/view/contentcapture/ChildContentCaptureSession;->internalNotifyChildSessionFinished(II)V

    return-void
.end method

.method blacklist setDisabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/ContentCaptureSession;->setDisabled(Z)Z

    move-result v0

    return v0
.end method

.method blacklist start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/contentcapture/ChildContentCaptureSession;->getMainCaptureSession()Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/contentcapture/ContentCaptureSession;->start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public blacklist updateContentCaptureContext(Landroid/view/contentcapture/ContentCaptureContext;)V
    .locals 1

    iget v0, p0, Landroid/view/contentcapture/ChildContentCaptureSession;->mId:I

    invoke-virtual {p0, v0, p1}, Landroid/view/contentcapture/ChildContentCaptureSession;->internalNotifyContextUpdated(ILandroid/view/contentcapture/ContentCaptureContext;)V

    return-void
.end method
