.class public final Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3$observer$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic $onStart:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onStop:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3$observer$1;->$onStart:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3$observer$1;->$onStop:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3$observer$1;->$onStart:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/LifecycleEffectKt$LifecycleEffect$3$observer$1;->$onStop:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
