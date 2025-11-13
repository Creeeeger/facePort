.class final Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;
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

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $enabled:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $icon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $paddingEnd:F

.field final synthetic $paddingStart:F

.field final synthetic $paddingVertical:F

.field final synthetic $singleLineSummary:Z

.field final synthetic $summary:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $summaryContentDescription:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $titleContentDescription:Ljava/lang/String;

.field final synthetic $widget:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$summary:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$titleContentDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$summaryContentDescription:Lkotlin/jvm/functions/Function0;

    iput-boolean p6, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$singleLineSummary:Z

    iput-object p7, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$icon:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$enabled:Lkotlin/jvm/functions/Function0;

    iput p9, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$paddingStart:F

    iput p10, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$paddingEnd:F

    iput p11, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$paddingVertical:F

    iput-object p12, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$widget:Lkotlin/jvm/functions/Function2;

    iput p13, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$$changed:I

    iput p14, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$$changed1:I

    iput p15, p0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$title:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$summary:Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v4, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$titleContentDescription:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$summaryContentDescription:Lkotlin/jvm/functions/Function0;

    iget-boolean v6, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$singleLineSummary:Z

    iget-object v7, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$icon:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$enabled:Lkotlin/jvm/functions/Function0;

    iget v9, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$paddingStart:F

    iget v10, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$paddingEnd:F

    iget v11, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$paddingVertical:F

    iget-object v13, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$widget:Lkotlin/jvm/functions/Function2;

    iget v14, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$$changed:I

    or-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    iget v15, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$$changed1:I

    invoke-static {v15}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    iget v0, v0, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt$BasePreference$4;->$$default:I

    move/from16 v16, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    invoke-static/range {v0 .. v15}, Lcom/android/settingslib/spa/widget/preference/BasePreferenceKt;->BasePreference-jXF2sa8(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;FFFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
