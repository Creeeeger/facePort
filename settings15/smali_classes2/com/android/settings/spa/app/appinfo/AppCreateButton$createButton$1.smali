.class final Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
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
.field final synthetic $app:Landroid/content/pm/ApplicationInfo;

.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppCreateButton;Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/internal/ContextScope;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/AppCreateButton;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/CloneBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/manageapplications/CloneBackend;

    move-result-object v4

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iget-object v1, v1, Lcom/android/settings/spa/app/appinfo/AppCreateButton;->context:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v5, 0x70f

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iget-object v1, v1, Lcom/android/settings/spa/app/appinfo/AppCreateButton;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v0, "loadLabel(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/AppCreateButton;->context:Landroid/content/Context;

    const v1, 0x7f14095f

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3, v0, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;

    iget-object v2, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppCreateButton;

    iget-object v3, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1;->$navController:Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/spa/app/appinfo/AppCreateButton$createButton$1$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppCreateButton;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/applications/manageapplications/CloneBackend;Ljava/lang/CharSequence;Lcom/android/settingslib/spa/framework/compose/NavControllerWrapper;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v8, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
