.class public final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/widget/preference/PreferenceModel;


# instance fields
.field public final onClick:Lkotlin/jvm/internal/Lambda;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Landroidx/compose/runtime/Composer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;->getPageTitleResId()I

    move-result p1

    invoke-static {p2, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1$1;->title:Ljava/lang/String;

    const-string p1, "permissionType"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "TogglePermissionAppList/"

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->navigator(Landroidx/compose/runtime/Composer;Ljava/lang/String;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1$1;->onClick:Lkotlin/jvm/internal/Lambda;

    return-void
.end method


# virtual methods
.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1$1;->onClick:Lkotlin/jvm/internal/Lambda;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListPageProvider$Companion$buildInjectEntry$1$1;->title:Ljava/lang/String;

    return-object p0
.end method
