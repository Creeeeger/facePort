.class final Lcom/android/settings/spa/app/ComposableSingletons$AppsMainKt$lambda-1$1;
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


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/ComposableSingletons$AppsMainKt$lambda-1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/app/ComposableSingletons$AppsMainKt$lambda-1$1;

    invoke-direct {v0}, Lcom/android/settings/spa/app/ComposableSingletons$AppsMainKt$lambda-1$1;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/ComposableSingletons$AppsMainKt$lambda-1$1;->INSTANCE:Lcom/android/settings/spa/app/ComposableSingletons$AppsMainKt$lambda-1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0xb

    const/4 p2, 0x2

    if-ne p0, p2, :cond_1

    move-object p0, p1

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Lcom/android/settings/spa/app/AllAppListPageProvider;->INSTANCE:Lcom/android/settings/spa/app/AllAppListPageProvider;

    sget-object p0, Lcom/android/settings/spa/app/AllAppListPageProvider;->owner:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder$Companion;->createInject$default(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;

    move-result-object p0

    sget-object p2, Lcom/android/settings/spa/app/AllAppListPageProvider$buildInjectEntry$1;->INSTANCE:Lcom/android/settings/spa/app/AllAppListPageProvider$buildInjectEntry$1;

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->searchDataFn:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->isAllowSearch:Z

    sget-object v0, Lcom/android/settings/spa/app/ComposableSingletons$AllAppListKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->setUiLayoutFn(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryBuilder;->build()Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->UiLayout(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;->INSTANCE:Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;

    const/16 p2, 0x8

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/specialaccess/SpecialAppAccessPageProvider;->EntryItem(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->INSTANCE:Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/backgroundinstall/BackgroundInstalledAppsPageProvider;->EntryItem(Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
