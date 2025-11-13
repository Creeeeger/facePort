.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/ambient/touch/dagger/InputSessionComponent;


# instance fields
.field public final gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field public final inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

.field public final inputSessionComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;

.field public final name:Ljava/lang/String;

.field public final pilferOnGestureConsume:Ljava/lang/Boolean;

.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public final referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Ljava/lang/String;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/GestureDetector$OnGestureListener;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->inputSessionComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iput-object p2, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iput-object p3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    iput-object p4, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    iput-object p6, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->pilferOnGestureConsume:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Ljava/lang/String;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/GestureDetector$OnGestureListener;Ljava/lang/Boolean;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;Ljava/lang/String;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/GestureDetector$OnGestureListener;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final gestureDetector()Landroid/view/GestureDetector;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v0
.end method

.method public final getInputSession()Lcom/android/systemui/ambient/touch/InputSession;
    .locals 8

    new-instance v7, Lcom/android/systemui/ambient/touch/InputSession;

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->inputMonitorCompat()Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->gestureDetector()Landroid/view/GestureDetector;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;->providesChoreographerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/Choreographer;

    invoke-static {}, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;->provideMainLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->pilferOnGestureConsume:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/ambient/touch/InputSession;-><init>(Lcom/android/systemui/shared/system/InputMonitorCompat;Landroid/view/GestureDetector;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/Choreographer;Landroid/os/Looper;Z)V

    return-object v7
.end method

.method public final inputMonitorCompat()Lcom/android/systemui/shared/system/InputMonitorCompat;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$InputSessionComponentImpl;->referenceSysUIComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl;->provideDisplayTrackerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/DisplayTracker;

    new-instance v1, Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method
