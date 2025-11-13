.class public final Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;->$$INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rememberButtonVisibleState(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;
    .locals 3

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x77474d30

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;->rememberMediaOutputState(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    move-result-object v0

    const v1, -0x390793a8

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion$rememberButtonVisibleState$1$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion$rememberButtonVisibleState$1$1;-><init>(Landroidx/compose/runtime/State;)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Landroidx/compose/runtime/State;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method

.method public static rememberDismissState(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;
    .locals 3

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x53b3e806

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;->rememberMediaOutputState(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    move-result-object v0

    const v1, 0x55f2de56

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion$rememberDismissState$1$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion$rememberDismissState$1$1;-><init>(Landroidx/compose/runtime/State;)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Landroidx/compose/runtime/State;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method

.method public static rememberEnterState(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;
    .locals 3

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x74a046c8

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p0}, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion;->rememberMediaOutputState(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;

    move-result-object v0

    const v1, 0x16593676

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion$rememberEnterState$1$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState$Companion$rememberEnterState$1$1;-><init>(Landroidx/compose/runtime/State;)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Landroidx/compose/runtime/State;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method

.method public static rememberMediaOutputState(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/State;
    .locals 3

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x31c55b15    # -7.8284256E8f

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/CompositionExtKt;->LocalMediaOutputState:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/compose/common/MediaOutputState;

    const v1, -0x2626b9a0

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->state:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Landroidx/compose/runtime/State;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v1
.end method
