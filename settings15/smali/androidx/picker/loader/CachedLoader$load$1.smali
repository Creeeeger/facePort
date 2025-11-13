.class final Landroidx/picker/loader/CachedLoader$load$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "K",
        "V",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/picker/loader/CachedLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/picker/loader/CachedLoader;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/picker/loader/CachedLoader;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/loader/CachedLoader$load$1;->this$0:Landroidx/picker/loader/CachedLoader;

    iput-object p2, p0, Landroidx/picker/loader/CachedLoader$load$1;->$key:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/picker/loader/CachedLoader$load$1;

    iget-object v1, p0, Landroidx/picker/loader/CachedLoader$load$1;->this$0:Landroidx/picker/loader/CachedLoader;

    iget-object p0, p0, Landroidx/picker/loader/CachedLoader$load$1;->$key:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, p2}, Landroidx/picker/loader/CachedLoader$load$1;-><init>(Landroidx/picker/loader/CachedLoader;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/picker/loader/CachedLoader$load$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/picker/loader/CachedLoader$load$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/picker/loader/CachedLoader$load$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/picker/loader/CachedLoader$load$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/picker/loader/CachedLoader$load$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/picker/loader/CachedLoader$load$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/picker/loader/CachedLoader$load$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p1, p0, Landroidx/picker/loader/CachedLoader$load$1;->this$0:Landroidx/picker/loader/CachedLoader;

    iget-object p1, p1, Landroidx/picker/loader/CachedLoader;->cachedMap:Ljava/util/HashMap;

    iget-object v6, p0, Landroidx/picker/loader/CachedLoader$load$1;->$key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iput-object v1, p0, Landroidx/picker/loader/CachedLoader$load$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Landroidx/picker/loader/CachedLoader$load$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    move-object p1, v2

    goto :goto_1

    :cond_4
    move-object p1, v4

    :goto_1
    if-nez p1, :cond_8

    iget-object p1, p0, Landroidx/picker/loader/CachedLoader$load$1;->this$0:Landroidx/picker/loader/CachedLoader;

    iget-object v6, p0, Landroidx/picker/loader/CachedLoader$load$1;->$key:Ljava/lang/Object;

    check-cast p1, Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Landroidx/picker/model/AppInfo;

    const-string v7, "key"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;->this$0:Landroidx/picker/loader/DataLoaderImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v5

    const-string v8, "packageName"

    iget-object p1, p1, Landroidx/picker/loader/DataLoaderImpl;->packageManagerHelper:Landroidx/picker/helper/PackageManagerHelperImpl;

    if-eqz v7, :cond_5

    iget-object v7, v6, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v5

    if-eqz v7, :cond_5

    iget-object v7, v6, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    iget v10, v6, Landroidx/picker/model/AppInfo;->user:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "activityName"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v10, v7}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7, v12}, Landroidx/reflect/app/SeslApplicationPackageManagerReflector;->semGetActivityIconForIconTray(Ljava/lang/Object;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_6

    iget-object v7, v6, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    iget v6, v6, Landroidx/picker/model/AppInfo;->user:I

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_0
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v7, v6

    goto :goto_3

    :catch_0
    move-object v7, v4

    goto :goto_3

    :cond_5
    iget-object v7, v6, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget v9, v6, Landroidx/picker/model/AppInfo;->user:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v9, v7}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {v9, v7}, Landroidx/reflect/app/SeslApplicationPackageManagerReflector;->semGetApplicationIconForIconTray(Ljava/lang/Object;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_6

    iget-object v7, v6, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget v6, v6, Landroidx/picker/model/AppInfo;->user:I

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v7}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_6
    :goto_3
    if-nez v7, :cond_7

    iget-object v6, p1, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    const v7, 0x7f080c4a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p1, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0707d4

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :try_start_2
    invoke-static {v7}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8, v6, v6, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    const-string v6, "createScaledBitmap(drawa\u2026iconSize, iconSize, true)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v6, "context.resources"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v6

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_4
    iget-object p1, p0, Landroidx/picker/loader/CachedLoader$load$1;->this$0:Landroidx/picker/loader/CachedLoader;

    iget-object v5, p0, Landroidx/picker/loader/CachedLoader$load$1;->$key:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/picker/loader/CachedLoader;->cachedMap:Ljava/util/HashMap;

    invoke-virtual {p1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, p0, Landroidx/picker/loader/CachedLoader$load$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/picker/loader/CachedLoader$load$1;->label:I

    invoke-interface {v1, v7, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    :goto_5
    return-object v2
.end method
