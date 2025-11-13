.class final Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $screen:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$2$1;->$screen:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x51

    const/16 p3, 0x10

    if-ne p1, p3, :cond_1

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    move-object v3, p2

    check-cast v3, Landroidx/compose/runtime/ComposerImpl;

    const p1, 0x65ec0966

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$2$1;->$screen:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$2$1;->$screen:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_2

    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p2, p1, :cond_3

    :cond_2
    new-instance p2, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$2$1$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$2$2$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3, p2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    move-object v0, p2

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v4, 0x30

    const/4 v5, 0x4

    const-string v1, "Labs"

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/media/mediaoutput/compose/widget/ListsKt;->SecListItem(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
