.class final Lcom/android/settings/spa/app/appinfo/AppRestoreButton$getActionButton$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "intent",
        "Landroid/content/Intent;",
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

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppRestoreButton;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/app/appinfo/AppRestoreButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton$getActionButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton$getActionButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppRestoreButton;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroid/content/Intent;

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton$getActionButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton$getActionButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppRestoreButton;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton$getActionButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.content.pm.extra.UNARCHIVE_STATUS"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object p1, v0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Lcom/android/settings/spa/app/appinfo/AppRestoreButton$onReceive$1;

    invoke-direct {v3, v0, v1}, Lcom/android/settings/spa/app/appinfo/AppRestoreButton$onReceive$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppRestoreButton;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    invoke-static {p1, v1, v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->updateButtonTextJob:Lkotlinx/coroutines/StandaloneCoroutine;

    iget-object p1, v0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->userPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    const-string p1, "getApplicationLabel(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->context:Landroid/content/Context;

    const v0, 0x7f141ef9

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0, p1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;I[Ljava/lang/Object;Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const-string p0, "coroutineScope"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Request unarchiving failed for "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with code "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AppRestoreButton"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "android.intent.extra.INTENT"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    if-eqz p0, :cond_2

    iget-object p1, v0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lcom/android/settings/spa/app/appinfo/AppRestoreButton;->context:Landroid/content/Context;

    const p1, 0x7f141ef8

    invoke-static {p0, p1, p0, v2}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
