.class final Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u000b\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "innerPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "invoke",
        "(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $actionButton:Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $dismissButton:Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;

.field final synthetic $imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

.field final synthetic $title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1;->$content:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1;->$actionButton:Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1;->$dismissButton:Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1;->$imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput-object p5, p0, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1;->$title:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string p3, "innerPadding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p3, p2, 0xe

    if-nez p3, :cond_1

    move-object p3, v4

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    :goto_0
    or-int/2addr p2, p3

    :cond_1
    and-int/lit8 p2, p2, 0x5b

    const/16 p3, 0x12

    if-ne p2, p3, :cond_3

    move-object p2, v4

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p2, p1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget v7, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingAround:F

    const/4 v6, 0x0

    const/16 v10, 0xd

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance p1, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1$1;

    iget-object v6, p0, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1;->$content:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1;->$actionButton:Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;

    iget-object v8, p0, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1;->$dismissButton:Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;

    iget-object v9, p0, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1;->$imageVector:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v10, p0, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1;->$title:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/settingslib/spa/widget/scaffold/SuwScaffoldKt$SuwScaffold$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;Lcom/android/settingslib/spa/widget/scaffold/BottomAppBarButton;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;)V

    const p0, -0x23119534

    invoke-static {p0, p1, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const/16 v5, 0xc00

    const/4 v6, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
