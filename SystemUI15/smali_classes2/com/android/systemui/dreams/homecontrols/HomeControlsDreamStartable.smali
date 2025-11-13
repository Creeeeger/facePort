.class public final Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final bgScope:Lkotlinx/coroutines/CoroutineScope;

.field public final componentName:Landroid/content/ComponentName;

.field public final homeControlsComponentInteractor:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;

.field public final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;->packageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;->homeControlsComponentInteractor:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;

    iput-object p4, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Landroid/content/ComponentName;

    const-class p3, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;

    invoke-direct {p2, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;->componentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    new-instance v0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1;-><init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
