.class public final Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final listModelProviderMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    const-string v0, "allProviders"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;

    invoke-interface {v2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListProvider;->getPermissionType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;->listModelProviderMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final rememberModel$frameworks__base__packages__SettingsLib__SpaPrivileged__android_common__SeslSpaPrivilegedLib(Landroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x5ec09e74

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate$rememberModel$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate$rememberModel$1;-><init>(Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListTemplate;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->rememberContext(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/template/app/TogglePermissionAppListModel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method
