.class public final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final alternateBouncerDependencies:Ldagger/Lazy;

.field public alternateBouncerView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final alternateBouncerWindowViewModel:Ldagger/Lazy;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final layoutInflater:Ldagger/Lazy;

.field public final onAttachAddBackGestureHandler:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;

.field public final windowManager:Ldagger/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerWindowViewModel:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerDependencies:Ldagger/Lazy;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->windowManager:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->layoutInflater:Ldagger/Lazy;

    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;-><init>(Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->onAttachAddBackGestureHandler:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$start$$inlined$launch$default$1;

    const-string v2, "AlternateBouncerViewBinder#alternateBouncerWindowViewModel"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$start$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;)V

    const/4 v2, 0x2

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v0, v3, v1, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
