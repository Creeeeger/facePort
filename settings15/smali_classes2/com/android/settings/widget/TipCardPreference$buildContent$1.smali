.class final Lcom/android/settings/widget/TipCardPreference$buildContent$1;
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
.field final synthetic this$0:Lcom/android/settings/widget/TipCardPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/TipCardPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/TipCardPreference$buildContent$1;->this$0:Lcom/android/settings/widget/TipCardPreference;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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

    goto/16 :goto_9

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/settings/widget/TipCardPreference$buildContent$1;->this$0:Lcom/android/settings/widget/TipCardPreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v0, ""

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p2

    goto :goto_2

    :cond_3
    :goto_1
    move-object v2, v0

    :goto_2
    iget-object p2, p0, Lcom/android/settings/widget/TipCardPreference$buildContent$1;->this$0:Lcom/android/settings/widget/TipCardPreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, p2

    goto :goto_4

    :cond_5
    :goto_3
    move-object v3, v0

    :goto_4
    iget-object p2, p0, Lcom/android/settings/widget/TipCardPreference$buildContent$1;->this$0:Lcom/android/settings/widget/TipCardPreference;

    iget-boolean v0, p2, Lcom/android/settings/widget/TipCardPreference;->primaryButtonVisibility:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/settingslib/spa/widget/card/CardButton;

    iget-object v4, p2, Lcom/android/settings/widget/TipCardPreference;->primaryButtonText:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/settings/widget/TipCardPreference;->primaryButtonContentDescription:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/widget/TipCardPreference;->primaryButtonAction:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v4, v5, p2}, Lcom/android/settingslib/spa/widget/card/CardButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_6
    move-object v0, v1

    :goto_5
    iget-object p2, p0, Lcom/android/settings/widget/TipCardPreference$buildContent$1;->this$0:Lcom/android/settings/widget/TipCardPreference;

    iget-boolean v4, p2, Lcom/android/settings/widget/TipCardPreference;->secondaryButtonVisibility:Z

    if-eqz v4, :cond_7

    new-instance v4, Lcom/android/settingslib/spa/widget/card/CardButton;

    iget-object v5, p2, Lcom/android/settings/widget/TipCardPreference;->secondaryButtonText:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/settings/widget/TipCardPreference;->secondaryButtonAction:Lkotlin/jvm/functions/Function0;

    invoke-direct {v4, v5, v1, p2}, Lcom/android/settingslib/spa/widget/card/CardButton;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_7
    move-object v4, v1

    :goto_6
    filled-new-array {v0, v4}, [Lcom/android/settingslib/spa/widget/card/CardButton;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iget-object p2, p0, Lcom/android/settings/widget/TipCardPreference$buildContent$1;->this$0:Lcom/android/settings/widget/TipCardPreference;

    iget-object v5, p2, Lcom/android/settings/widget/TipCardPreference;->onDismiss:Lkotlin/jvm/functions/Function0;

    iget-object p2, p2, Lcom/android/settings/widget/TipCardPreference;->iconResId:Ljava/lang/Integer;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    move-object p2, v1

    :goto_7
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x7689b55c

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez p2, :cond_9

    move-object v4, v1

    goto :goto_8

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/ui/res/VectorResources_androidKt;->vectorResource(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p2

    move-object v4, p2

    :goto_8
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object p0, p0, Lcom/android/settings/widget/TipCardPreference$buildContent$1;->this$0:Lcom/android/settings/widget/TipCardPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/settingslib/spa/widget/card/CardModel;

    const/16 v7, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/spa/widget/card/CardModel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/vector/ImageVector;Lkotlin/jvm/functions/Function0;Ljava/util/List;I)V

    const/16 p2, 0x8

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/spa/widget/card/SettingsCardKt;->SettingsCard(Lcom/android/settingslib/spa/widget/card/CardModel;Landroidx/compose/runtime/Composer;I)V

    :goto_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
