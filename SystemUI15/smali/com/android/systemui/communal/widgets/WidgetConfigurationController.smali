.class public final Lcom/android/systemui/communal/widgets/WidgetConfigurationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/widgets/WidgetConfigurator;


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final activity:Landroidx/activity/ComponentActivity;

.field public final appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final result$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v1, "getResult()Lkotlinx/coroutines/CompletableDeferred;"

    const/4 v2, 0x0

    const-class v3, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    const-string v4, "result"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity;Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->activity:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iput-object p3, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, p2, p1}, Lcom/android/systemui/util/ReferenceExtKt;->nullableAtomicReference$default(Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/properties/ReadWriteProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->result$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method


# virtual methods
.method public final configureWidget(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/communal/widgets/WidgetConfigurationController$configureWidget$2;-><init>(Lcom/android/systemui/communal/widgets/WidgetConfigurationController;ILkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getResult()Lkotlinx/coroutines/CompletableDeferred;
    .locals 2

    sget-object v0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->result$delegate:Lkotlin/properties/ReadWriteProperty;

    invoke-interface {v1, p0, v0}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method
