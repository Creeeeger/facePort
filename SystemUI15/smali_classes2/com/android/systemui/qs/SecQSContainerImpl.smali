.class public final Lcom/android/systemui/qs/SecQSContainerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final fancyClippingPath:Landroid/graphics/Path;

.field public keyguardShowing:Z

.field public final panelSplitHepler$delegate:Lkotlin/Lazy;

.field public panelSplitIntercepted:Z

.field public final resourcePicker$delegate:Lkotlin/Lazy;

.field public final shadeRepository$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSContainerImpl;->fancyClippingPath:Landroid/graphics/Path;

    sget-object p1, Lcom/android/systemui/qs/SecQSContainerImpl$resourcePicker$2;->INSTANCE:Lcom/android/systemui/qs/SecQSContainerImpl$resourcePicker$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSContainerImpl;->resourcePicker$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/qs/SecQSContainerImpl$shadeRepository$2;->INSTANCE:Lcom/android/systemui/qs/SecQSContainerImpl$shadeRepository$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSContainerImpl;->shadeRepository$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/android/systemui/qs/SecQSContainerImpl$panelSplitHepler$2;->INSTANCE:Lcom/android/systemui/qs/SecQSContainerImpl$panelSplitHepler$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSContainerImpl;->panelSplitHepler$delegate:Lkotlin/Lazy;

    return-void
.end method
