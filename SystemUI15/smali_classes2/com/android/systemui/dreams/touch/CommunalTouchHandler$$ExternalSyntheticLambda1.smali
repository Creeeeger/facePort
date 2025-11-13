.class public final synthetic Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/touch/CommunalTouchHandler;

.field public final synthetic f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/touch/CommunalTouchHandler;Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/touch/CommunalTouchHandler;

    iput-object p2, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/touch/CommunalTouchHandler;

    iget-object p0, p0, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda1;->f$1:Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;

    check-cast p1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;)V

    iget-object p1, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mEventListeners:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$1;

    invoke-direct {p1, v0}, Lcom/android/systemui/dreams/touch/CommunalTouchHandler$1;-><init>(Lcom/android/systemui/dreams/touch/CommunalTouchHandler;)V

    iget-object p0, p0, Lcom/android/systemui/ambient/touch/TouchMonitor$TouchSessionImpl;->mGestureListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
