.class public interface abstract Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public abstract getActualHeight()I
.end method

.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract handleCloseControls(ZZ)Z
.end method

.method public isLeavebehind()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract needsFalsingProtection()Z
.end method

.method public onFinishedClosing()V
    .locals 0

    return-void
.end method

.method public abstract setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
.end method

.method public abstract setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
.end method

.method public abstract shouldBeSavedOnClose()Z
.end method

.method public abstract willBeRemoved()Z
.end method
