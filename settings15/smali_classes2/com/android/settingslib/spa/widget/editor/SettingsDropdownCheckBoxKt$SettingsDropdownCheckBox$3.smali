.class final Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;
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
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $emptyText:Ljava/lang/String;

.field final synthetic $enabled:Z

.field final synthetic $errorMessage:Ljava/lang/String;

.field final synthetic $label:Ljava/lang/String;

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
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$label:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$options:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$emptyText:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$enabled:Z

    iput-object p5, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$errorMessage:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$onSelectedStateChange:Lkotlin/jvm/functions/Function0;

    iput p7, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$$changed:I

    iput p8, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$label:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$options:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$emptyText:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$enabled:Z

    iget-object v4, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$errorMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$onSelectedStateChange:Lkotlin/jvm/functions/Function0;

    iget p1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    iget v8, p0, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt$SettingsDropdownCheckBox$3;->$$default:I

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/spa/widget/editor/SettingsDropdownCheckBoxKt;->SettingsDropdownCheckBox(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
