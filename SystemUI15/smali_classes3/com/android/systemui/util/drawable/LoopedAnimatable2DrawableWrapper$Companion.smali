.class public final Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;
    .locals 1

    instance-of p0, p1, Landroid/graphics/drawable/Animatable2;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;

    check-cast p1, Landroid/graphics/drawable/Animatable2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;-><init>(Landroid/graphics/drawable/Animatable2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
