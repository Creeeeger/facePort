.class final Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt;->RestrictedTwoTargetSwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

.field final synthetic $model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

.field final synthetic $primaryEnabled:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $primaryOnClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $restrictions:Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

.field final synthetic $restrictionsProviderFactory:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function2;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$primaryEnabled:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$primaryOnClick:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$restrictions:Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    iput-object p5, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$restrictionsProviderFactory:Lkotlin/jvm/functions/Function2;

    iput p6, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$$changed:I

    iput p7, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$primaryEnabled:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$primaryOnClick:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$restrictions:Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    iget-object v4, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$restrictionsProviderFactory:Lkotlin/jvm/functions/Function2;

    iget p1, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    iget v7, p0, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt$RestrictedTwoTargetSwitchPreference$5;->$$default:I

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/spaprivileged/template/preference/RestrictedTwoTargetSwitchPreferenceKt;->RestrictedTwoTargetSwitchPreference(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
