.class final Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$SettingsAlertDialogContent$3;
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

.field final synthetic $dismissButton:Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$SettingsAlertDialogContent$3;->$dismissButton:Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$SettingsAlertDialogContent$3;->$confirmButton:Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

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

    sget p2, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt;->ButtonsMainAxisSpacing:F

    sget v0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt;->ButtonsCrossAxisSpacing:F

    new-instance v1, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$SettingsAlertDialogContent$3$1;

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$SettingsAlertDialogContent$3;->$dismissButton:Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$SettingsAlertDialogContent$3;->$confirmButton:Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    invoke-direct {v1, v2, p0}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$SettingsAlertDialogContent$3$1;-><init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;)V

    const p0, 0x73e998fd

    invoke-static {p0, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILkotlin/jvm/internal/Lambda;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 v1, 0x1b6

    invoke-static {p2, v0, p0, p1, v1}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt;->AlertDialogFlowRow-ixp7dh8(FFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
