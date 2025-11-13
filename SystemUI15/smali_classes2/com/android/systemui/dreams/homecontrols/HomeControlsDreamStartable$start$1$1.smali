.class public final Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1$1;->this$0:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/content/ComponentName;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable$start$1$1;->this$0:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;->packageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamStartable;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
