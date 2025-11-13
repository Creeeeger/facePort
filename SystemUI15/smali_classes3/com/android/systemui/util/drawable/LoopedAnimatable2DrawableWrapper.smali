.class public final Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/graphics/drawable/Animatable2;


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;


# instance fields
.field private final animatable2:Landroid/graphics/drawable/Animatable2;

.field private isLoopedCallbackRegistered:Z

.field private final loopedCallback:Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->Companion:Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Animatable2;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->animatable2:Landroid/graphics/drawable/Animatable2;

    new-instance p1, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedCallback;

    invoke-direct {p1}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedCallback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->loopedCallback:Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Animatable2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;-><init>(Landroid/graphics/drawable/Animatable2;)V

    return-void
.end method

.method private final setLoopingRegistered(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->isLoopedCallbackRegistered:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->isLoopedCallbackRegistered:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->animatable2:Landroid/graphics/drawable/Animatable2;

    iget-object p0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->loopedCallback:Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedCallback;

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->animatable2:Landroid/graphics/drawable/Animatable2;

    iget-object p0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->loopedCallback:Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedCallback;

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Animatable2;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->animatable2:Landroid/graphics/drawable/Animatable2;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->isLoopedCallbackRegistered:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->setLoopingRegistered(Z)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedDrawableState;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper$LoopedDrawableState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->animatable2:Landroid/graphics/drawable/Animatable2;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->isRunning()Z

    move-result p0

    return p0
.end method

.method public registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->animatable2:Landroid/graphics/drawable/Animatable2;

    invoke-interface {p0, p1}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->animatable2:Landroid/graphics/drawable/Animatable2;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable2;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->setLoopingRegistered(Z)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->setLoopingRegistered(Z)V

    iget-object p0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->animatable2:Landroid/graphics/drawable/Animatable2;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->stop()V

    return-void
.end method

.method public unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/drawable/LoopedAnimatable2DrawableWrapper;->animatable2:Landroid/graphics/drawable/Animatable2;

    invoke-interface {p0, p1}, Landroid/graphics/drawable/Animatable2;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    move-result p0

    return p0
.end method
