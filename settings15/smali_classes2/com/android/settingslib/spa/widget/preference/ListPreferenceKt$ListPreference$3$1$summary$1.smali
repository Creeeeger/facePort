.class final Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1$summary$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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
.field final synthetic $model:Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1$summary$1;->$model:Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1$summary$1;->$model:Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;

    invoke-interface {v0}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;->getOptions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/ListPreferenceKt$ListPreference$3$1$summary$1;->$model:Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;

    iget v2, v2, Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;->id:I

    invoke-interface {p0}, Lcom/android/settingslib/spa/widget/preference/ListPreferenceModel;->getSelectedId()Landroidx/compose/runtime/MutableIntState;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;

    if-eqz v1, :cond_2

    iget-object p0, v1, Lcom/android/settingslib/spa/widget/preference/ListPreferenceOption;->text:Ljava/lang/String;

    if-nez p0, :cond_3

    :cond_2
    const-string p0, ""

    :cond_3
    return-object p0
.end method
