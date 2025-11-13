.class final Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/animation/AnimatedVisibilityScope;",
        "invoke",
        "(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $model:Lcom/android/settingslib/spa/widget/card/CardModel;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/card/CardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$1;->$model:Lcom/android/settingslib/spa/widget/card/CardModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v3, p2

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p2, "$this$AnimatedVisibility"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$1;->$model:Lcom/android/settingslib/spa/widget/card/CardModel;

    iget-wide v0, p0, Lcom/android/settingslib/spa/widget/card/CardModel;->containerColor:J

    new-instance p1, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$1$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt$SettingsCardImpl$1$1;-><init>(Lcom/android/settingslib/spa/widget/card/CardModel;)V

    const p0, 0x375746bd

    invoke-static {p0, p1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt;->SettingsCardContent-3J-VO9M(JLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
