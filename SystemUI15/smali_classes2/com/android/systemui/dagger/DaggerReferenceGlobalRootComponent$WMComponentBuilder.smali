.class public final Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/dagger/WMComponent$Builder;


# instance fields
.field public final referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

.field public setShellMainThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/dagger/WMComponent;
    .locals 3

    new-instance v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->referenceGlobalRootComponentImpl:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->setShellMainThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl;-><init>(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceGlobalRootComponentImpl;Landroid/os/HandlerThread;I)V

    return-object v0
.end method

.method public final setShellMainThread(Landroid/os/HandlerThread;)Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentBuilder;->setShellMainThread:Landroid/os/HandlerThread;

    return-object p0
.end method
