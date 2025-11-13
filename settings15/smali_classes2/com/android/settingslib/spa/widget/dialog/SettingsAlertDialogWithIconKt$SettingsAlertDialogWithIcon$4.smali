.class final Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$4;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $confirmButton:Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$4;->$confirmButton:Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$4;->$confirmButton:Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/ComposerImpl;

    const p1, 0x5e7df2da

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_3

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p2, p1, :cond_4

    :cond_3
    new-instance p2, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$4$1$1$1;

    invoke-direct {p2, p0}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$4$1$1$1;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;)V

    invoke-virtual {v10, p2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    move-object v0, p2

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-virtual {v10, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance p1, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$4$1$2;

    invoke-direct {p1, p0}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogWithIconKt$SettingsAlertDialogWithIcon$4$1$2;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;)V

    const p0, -0x7b9fb042

    invoke-static {p0, p1, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    const/high16 v11, 0x30000000

    const/16 v12, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
