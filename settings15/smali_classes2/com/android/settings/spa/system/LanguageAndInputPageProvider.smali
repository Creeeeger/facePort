.class public final Lcom/android/settings/spa/system/LanguageAndInputPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/system/LanguageAndInputPageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/system/LanguageAndInputPageProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/spa/system/LanguageAndInputPageProvider;->INSTANCE:Lcom/android/settings/spa/system/LanguageAndInputPageProvider;

    return-void
.end method


# virtual methods
.method public final EntryItem(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x4ca9ac91

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f1414a9

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/spa/system/LanguageAndInputPageProvider$EntryItem$1;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/spa/system/LanguageAndInputPageProvider$EntryItem$1;-><init>(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    :goto_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/settings/spa/system/LanguageAndInputPageProvider$EntryItem$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/system/LanguageAndInputPageProvider$EntryItem$2;-><init>(Lcom/android/settings/spa/system/LanguageAndInputPageProvider;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x1969ec53

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/settings/spa/system/LanguageAndInputPageProviderKt;->access$LanguageAndInput(Landroidx/compose/runtime/Composer;I)V

    :goto_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lcom/android/settings/spa/system/LanguageAndInputPageProvider$Page$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/system/LanguageAndInputPageProvider$Page$1;-><init>(Lcom/android/settings/spa/system/LanguageAndInputPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "LanguageAndInput"

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
