.class public final Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $saveableStateRegistry$inlined:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2$1$invoke$$inlined$onDispose$1;->$saveableStateRegistry$inlined:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2$1$invoke$$inlined$onDispose$1;->$saveableStateRegistry$inlined:Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    iget-object p0, p0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;->onDispose:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
