.class public final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final PAGE_PARAMETER:Ljava/util/List;


# instance fields
.field public final appListTemplate:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;

.field public final parameter:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "permission"

    sget-object v1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider$Companion$PAGE_PARAMETER$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider$Companion$PAGE_PARAMETER$1;

    invoke-static {v0, v1}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v0

    const-string v1, "rt_packageName"

    sget-object v2, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider$Companion$PAGE_PARAMETER$2;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider$Companion$PAGE_PARAMETER$2;

    invoke-static {v1, v2}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v1

    const-string v2, "rt_userId"

    sget-object v3, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider$Companion$PAGE_PARAMETER$3;->INSTANCE:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider$Companion$PAGE_PARAMETER$3;

    invoke-static {v2, v3}, Landroidx/navigation/NamedNavArgumentKt;->navArgument(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NamedNavArgument;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Landroidx/navigation/NamedNavArgument;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;->PAGE_PARAMETER:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;->appListTemplate:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;

    sget-object p1, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;->PAGE_PARAMETER:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;->parameter:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x7f58e51e

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    if-eqz p1, :cond_0

    const-string v0, "permission"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "rt_packageName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "rt_userId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;->appListTemplate:Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;

    invoke-virtual {v3, p2, v0}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;->rememberModel$frameworks__base__packages__SettingsLib__SpaPrivileged__android_common__SeslSpaPrivilegedLib(Landroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageKt;->TogglePermissionAppInfoPage(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;Ljava/lang/String;ILcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider$Page$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider$Page$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1
    return-void
.end method

.method public final buildEntry(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;->parameter:Ljava/util/List;

    const-string v0, "TogglePermissionAppInfoPage"

    invoke-static {v0, p0, p1}, Lcom/android/settingslib/spa/framework/common/SettingsPage$Companion;->create$default(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object p0

    new-instance p1, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    const-string v0, "AllowControl"

    invoke-direct {p1, v0, p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;-><init>(Ljava/lang/String;Lcom/android/settingslib/spa/framework/common/SettingsPage;)V

    invoke-virtual {p1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "TogglePermissionAppInfoPage"

    return-object p0
.end method

.method public final getParameter()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppInfoPageProvider;->parameter:Ljava/util/List;

    return-object p0
.end method
