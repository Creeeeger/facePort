.class final Lcom/android/settings/spa/app/appinfo/AppInstallButton$installButton$1;
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

.field final synthetic $intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppInstallButton;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/AppInstallButton;Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInstallButton$installButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppInstallButton;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInstallButton$installButton$1;->$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppInstallButton$installButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInstallButton$installButton$1;->this$0:Lcom/android/settings/spa/app/appinfo/AppInstallButton;

    iget-object v0, v0, Lcom/android/settings/spa/app/appinfo/AppInstallButton;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppInstallButton$installButton$1;->$intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInstallButton$installButton$1;->$app:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
