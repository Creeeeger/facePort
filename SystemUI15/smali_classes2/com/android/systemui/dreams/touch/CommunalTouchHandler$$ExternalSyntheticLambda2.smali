.class public final synthetic Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final synthetic f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p2, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGlanceableHubContainerController:Lcom/android/systemui/shade/GlanceableHubContainerController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/GlanceableHubContainerController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    invoke-virtual {p0}, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->pop()V

    :cond_0
    return-void
.end method
