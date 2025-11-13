.class public abstract Lcom/android/settings/spa/app/storage/StorageAppListPageProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# instance fields
.field public final type:Lcom/android/settings/spa/app/storage/StorageType;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/storage/StorageType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/storage/StorageAppListPageProvider;->type:Lcom/android/settings/spa/app/storage/StorageType;

    return-void
.end method


# virtual methods
.method public final Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x1e9551dc

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x70

    const/16 v1, 0x10

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v0, v0, 0x51

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/android/settings/spa/app/storage/StorageAppListPageProvider;->type:Lcom/android/settings/spa/app/storage/StorageType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, p2, v2, v3}, Lcom/android/settings/spa/app/storage/StorageAppListKt;->StorageAppListPage(Lcom/android/settings/spa/app/storage/StorageType;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Page$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/spa/app/storage/StorageAppListPageProvider$Page$1;-><init>(Lcom/android/settings/spa/app/storage/StorageAppListPageProvider;Landroid/os/Bundle;I)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method
