.class final Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$2;
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
        "Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxScope;",
        "invoke",
        "(Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxScope;Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $onSelectedStateChange:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$2;->$options:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$2;->$onSelectedStateChange:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/settingslib/spa/widget/editor/DropdownTextBoxScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string v0, "$this$DropdownTextBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x51

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

    goto :goto_2

    :cond_1
    :goto_0
    sget-object p1, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$2;->$options:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;

    new-instance v0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$2$1;

    iget-object v1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$2;->$options:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$2;->$onSelectedStateChange:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, p3, v1, v2}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$2$1;-><init>(Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    const/4 v1, 0x0

    invoke-static {p3, v0, p2, v1}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt;->access$CheckboxItem(Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckOption;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_2
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
