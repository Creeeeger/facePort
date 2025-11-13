.class public final Lcom/android/systemui/statusbar/core/StatusBarInitializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final collapsedStatusBarFragmentProvider:Ljavax/inject/Provider;

.field public final creationListeners:Ljava/util/Set;

.field public statusBarViewUpdatedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

.field public final windowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/window/StatusBarWindowController;Ljavax/inject/Provider;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowController;",
            "Ljavax/inject/Provider;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/core/StatusBarInitializer$OnStatusBarViewInitializedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->windowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->collapsedStatusBarFragmentProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->creationListeners:Ljava/util/Set;

    return-void
.end method
