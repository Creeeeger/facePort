.class final Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;
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

.field final synthetic $enabled:Z

.field final synthetic $errorMessage:Ljava/lang/String;

.field final synthetic $label:Ljava/lang/String;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onTextChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $singleLine:Z

.field final synthetic $value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$value:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$label:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$errorMessage:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$singleLine:Z

    iput-boolean p5, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$enabled:Z

    iput-object p6, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p7, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$placeholder:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p9, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$onTextChange:Lkotlin/jvm/functions/Function1;

    iput p10, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$$changed:I

    iput p11, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$value:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$label:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$errorMessage:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$singleLine:Z

    iget-boolean v4, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$enabled:Z

    iget-object v5, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v6, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$placeholder:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v8, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$onTextChange:Lkotlin/jvm/functions/Function1;

    iget p1, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    iget v11, p0, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt$SettingsOutlinedTextField$3;->$$default:I

    invoke-static/range {v0 .. v11}, Lcom/android/settingslib/spa/widget/editor/SettingsOutlinedTextFieldKt;->SettingsOutlinedTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
