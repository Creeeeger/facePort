.class public abstract Lcom/android/systemui/shared/hardware/InputManagerKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final hasInputDevice(Landroid/hardware/input/InputManager;Lkotlin/jvm/functions/Function1;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$4;

    invoke-direct {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$4;-><init>([I)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lcom/android/systemui/shared/hardware/InputManagerKt$getInputDeviceSequence$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/hardware/InputManagerKt$getInputDeviceSequence$1;-><init>(Landroid/hardware/input/InputManager;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    :cond_1
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/InputDevice;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
