.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public currentHeight:F

.field public currentSizeIndex:I

.field public currentWidth:F

.field public final initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

.field public final sizes:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/surfaceeffects/ripple/RippleShader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->sizes:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    return-void
.end method

.method public static synthetic getCurrentSizeIndex$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getInitialSize$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSizes$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final varargs setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->sizes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentSizeIndex:I

    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->sizes:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->sizes:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    new-instance p1, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize$setSizeAtProgresses$$inlined$sortBy$1;

    invoke-direct {p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize$setSizeAtProgresses$$inlined$sortBy$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method
