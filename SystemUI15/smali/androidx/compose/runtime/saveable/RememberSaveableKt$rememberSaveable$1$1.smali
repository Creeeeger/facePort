.class final Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $finalKey:Ljava/lang/String;

.field final synthetic $holder:Landroidx/compose/runtime/saveable/SaveableHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/SaveableHolder;"
        }
    .end annotation
.end field

.field final synthetic $inputs:[Ljava/lang/Object;

.field final synthetic $registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field final synthetic $saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver;"
        }
    .end annotation
.end field

.field final synthetic $value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/SaveableHolder;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/saveable/SaveableHolder;",
            "Landroidx/compose/runtime/saveable/Saver;",
            "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$holder:Landroidx/compose/runtime/saveable/SaveableHolder;

    iput-object p2, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$saver:Landroidx/compose/runtime/saveable/Saver;

    iput-object p3, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iput-object p4, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$finalKey:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$value:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$inputs:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$holder:Landroidx/compose/runtime/saveable/SaveableHolder;

    iget-object v1, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$saver:Landroidx/compose/runtime/saveable/Saver;

    iget-object v2, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iget-object v3, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$finalKey:Ljava/lang/String;

    iget-object v4, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$value:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/saveable/RememberSaveableKt$rememberSaveable$1$1;->$inputs:[Ljava/lang/Object;

    iget-object v5, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    const/4 v6, 0x1

    if-eq v5, v2, :cond_0

    iput-object v2, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    move v2, v6

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v5, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iput-object v3, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->key:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    iput-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    iput-object v4, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->inputs:[Ljava/lang/Object;

    iget-object p0, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;

    if-eqz p0, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;->unregister()V

    const/4 p0, 0x0

    iput-object p0, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->entry:Landroidx/compose/runtime/saveable/SaveableStateRegistryImpl$registerProvider$3;

    invoke-virtual {v0}, Landroidx/compose/runtime/saveable/SaveableHolder;->register$1()V

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
