.class public interface abstract Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
.implements Lcom/android/systemui/CoreStartable;


# virtual methods
.method public setState(I)V
    .locals 1

    const/4 v0, 0x0

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setState(IZ)Z

    return-void
.end method
