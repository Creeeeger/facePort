.class public final Lcom/android/systemui/biometrics/ui/binder/Spaghetti$attach$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/binder/Spaghetti;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$attach$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$attach$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDestroy$1()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/Spaghetti$attach$1;->this$0:Lcom/android/systemui/biometrics/ui/binder/Spaghetti;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
