.class final synthetic Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$3$onClick$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;->app:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePresenter;->context:Landroid/content/Context;

    const/16 v2, 0x14

    invoke-static {v0, v1, p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startAppInfoFragment(Ljava/lang/Class;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
