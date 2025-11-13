.class public abstract Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final AppStoragePreference(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const-string v0, "app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x6acac355

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v0, 0x800000

    invoke-static {v0, p0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->hasFlag(ILandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$1;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$1;-><init>(ILandroid/content/pm/ApplicationInfo;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_0
    return-void

    :cond_1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$2;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$2;-><init>(Landroidx/compose/runtime/Composer;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x30

    invoke-static {v1, v2, p1, v3, v0}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$3;

    invoke-direct {v0, p2, p0}, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$3;-><init>(ILandroid/content/pm/ApplicationInfo;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method
