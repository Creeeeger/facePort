.class final Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$startUninstallActivity$1;
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
.field final synthetic $forAllUsers:Z

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$startUninstallActivity$1;->this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iput-boolean p2, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$startUninstallActivity$1;->$forAllUsers:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$startUninstallActivity$1;->this$0:Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    iget-object v1, v0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->userHandle:Landroid/os/UserHandle;

    const-string v3, "access$getUserHandle$p(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$startUninstallActivity$1;->$forAllUsers:Z

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->packageName:Ljava/lang/String;

    invoke-static {v1, v0, v2, p0}, Lcom/android/settings/spa/app/AppUtilKt;->startUninstallActivity(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
