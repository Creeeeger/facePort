.class public final Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final enabled:Lkotlin/jvm/functions/Function0;

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final summary:Lkotlin/jvm/functions/Function0;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroidx/compose/runtime/MutableState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f141c12

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;->title:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1$summary$1;

    invoke-direct {v0, p3}, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1$summary$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;->summary:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1$enabled$1;

    invoke-direct {v0, p3}, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1$enabled$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;->enabled:Lkotlin/jvm/functions/Function0;

    new-instance p3, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1$onClick$1;

    invoke-direct {p3, p1, p2}, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1$onClick$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final getEnabled()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;->enabled:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;->onClick:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getSummary()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;->summary:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionPreferenceKt$AppPermissionPreference$1$1;->title:Ljava/lang/String;

    return-object p0
.end method
