.class public Landroidx/picker/features/observable/ObservableProperty;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty;"
        }
    .end annotation
.end field


# instance fields
.field private final onAfterChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2;",
            ">;"
        }
    .end annotation
.end field

.field private final onBeforeChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2;",
            ">;"
        }
    .end annotation
.end field

.field private onBindCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final onUpdated:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final state$delegate:Landroidx/picker/features/observable/MutableState;


# direct methods
.method public static synthetic $r8$lambda$V08Y67k_jLy1HG6o6GQPWDQ2zMA(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->registerAfterChangeUpdateListener$lambda$2(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWm58bvahOiJ9_aNPT9IxPbEY2I(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->registerBeforeChangeUpdateListener$lambda$1(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$otjzE_lCdGyp0N87oJSWKFgXjuw(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->bind$lambda$0(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v1, "getState()Ljava/lang/Object;"

    const/4 v2, 0x0

    const-class v3, Landroidx/picker/features/observable/ObservableProperty;

    const-string/jumbo v4, "state"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Landroidx/picker/features/observable/ObservableProperty;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/picker/features/observable/MutableState;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/picker/features/observable/ObservableProperty;->onUpdated:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Landroidx/picker/features/observable/ObservableProperty;->state$delegate:Landroidx/picker/features/observable/MutableState;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/picker/features/observable/ObservableProperty;->onAfterChangeListenerList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/picker/features/observable/ObservableProperty;->onBeforeChangeListenerList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/picker/features/observable/ObservableProperty;-><init>(Landroidx/picker/features/observable/MutableState;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final afterChange(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/picker/features/observable/ObservableProperty;->onAfterChangeListenerList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final beforeChange(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroidx/picker/features/observable/ObservableProperty;->onBeforeChangeListenerList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private static final bind$lambda$0(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/features/observable/ObservableProperty;->onBindCallback:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setOnBindCallback(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public static synthetic bind$picker_app_release$default(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->bind$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: bind"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final registerAfterChangeUpdateListener$lambda$2(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/observable/ObservableProperty;->onAfterChangeListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final registerBeforeChangeUpdateListener$lambda$1(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/features/observable/ObservableProperty;->onBeforeChangeListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private final setOnBindCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/picker/features/observable/ObservableProperty;->onBindCallback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/picker/features/observable/ObservableProperty;->getState()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setOnBindCallback(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/Function;I)V

    return-object v0
.end method

.method public final getState()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/picker/features/observable/ObservableProperty;->state$delegate:Landroidx/picker/features/observable/MutableState;

    sget-object v0, Landroidx/picker/features/observable/ObservableProperty;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, Landroidx/picker/features/observable/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getValue$picker_app_release(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/picker/features/observable/ObservableProperty;->getState()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final registerAfterChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DisposableHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            ")",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/picker/features/observable/ObservableProperty;->onAfterChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/Function;I)V

    return-object v0
.end method

.method public final registerBeforeChangeUpdateListener$picker_app_release(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DisposableHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            ")",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/picker/features/observable/ObservableProperty;->onBeforeChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/picker/features/observable/ObservableProperty$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/features/observable/ObservableProperty;Lkotlin/Function;I)V

    return-object v0
.end method

.method public final setState(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/picker/features/observable/ObservableProperty;->state$delegate:Landroidx/picker/features/observable/MutableState;

    sget-object v0, Landroidx/picker/features/observable/ObservableProperty;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0, p1}, Landroidx/picker/features/observable/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/picker/features/observable/ObservableProperty;->getState()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/picker/features/observable/ObservableProperty;->getState()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/picker/features/observable/ObservableProperty;->beforeChange(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/features/observable/ObservableProperty;->getState()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setState(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Landroidx/picker/features/observable/ObservableProperty;->afterChange(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/picker/features/observable/ObservableProperty;->onUpdated:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Landroidx/picker/features/observable/ObservableProperty;->onBindCallback:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final setValue$picker_app_release(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setValueSilence$picker_app_release(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setState(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/picker/features/observable/ObservableProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method
