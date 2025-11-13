.class public final Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Composer;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f142d88

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$2;->title:Ljava/lang/String;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x1e192003

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p3, p1}, Lcom/android/settingslib/spaprivileged/template/app/AppStorageSizeKt;->getStorageSize(Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    new-instance v1, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$getSummary$1;

    invoke-direct {v1, p2, p3, v0}, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$getSummary$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/MutableState;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iput-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$2;->summary:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$2$onClick$1;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$2$onClick$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$2;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$2;->onClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$2;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppStoragePreferenceKt$AppStoragePreference$2;->title:Ljava/lang/String;

    return-object p0
.end method
