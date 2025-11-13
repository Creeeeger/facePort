.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl$SwitchingProvider$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl$SwitchingProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler;
    .locals 0

    new-instance p0, Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler;

    invoke-direct {p0}, Lcom/android/systemui/unfold/progress/UnfoldFrameCallbackScheduler;-><init>()V

    return-object p0
.end method
