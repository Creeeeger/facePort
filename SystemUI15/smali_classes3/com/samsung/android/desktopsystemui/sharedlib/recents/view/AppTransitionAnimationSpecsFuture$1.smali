.class Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecCompat;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;


# direct methods
.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture$1;->call()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecCompat;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture$1;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-virtual {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/view/AppTransitionAnimationSpecsFuture;->composeSpecs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
