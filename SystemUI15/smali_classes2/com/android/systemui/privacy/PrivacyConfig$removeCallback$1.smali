.class public final Lcom/android/systemui/privacy/PrivacyConfig$removeCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Ljava/lang/ref/WeakReference;

.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyConfig;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyConfig;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/privacy/PrivacyConfig;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/privacy/PrivacyConfig$Callback;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyConfig$removeCallback$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyConfig$removeCallback$1;->$callback:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyConfig$removeCallback$1;->this$0:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyConfig;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyConfig$removeCallback$1$1;

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyConfig$removeCallback$1;->$callback:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Lcom/android/systemui/privacy/PrivacyConfig$removeCallback$1$1;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method
