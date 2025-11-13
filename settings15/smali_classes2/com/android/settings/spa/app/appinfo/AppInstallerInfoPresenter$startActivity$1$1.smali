.class public final Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$startActivity$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$startActivity$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter$startActivity$1$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;

    iget-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInstallerInfoPresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
