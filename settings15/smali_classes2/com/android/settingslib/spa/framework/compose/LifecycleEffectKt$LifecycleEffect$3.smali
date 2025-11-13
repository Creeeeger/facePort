.class final Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic $onStart:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $onStop:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3;->$onStart:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3;->$onStop:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3$observer$1;

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3;->$onStart:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3;->$onStop:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3$observer$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    new-instance v0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3$invoke$$inlined$onDispose$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3$invoke$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3$observer$1;)V

    return-object v0
.end method
