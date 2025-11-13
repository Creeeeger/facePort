.class final Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$AppItem$1;
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

.field final synthetic this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$AppItem$1;->this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    iput-object p2, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$AppItem$1;->$app:Landroid/content/pm/ApplicationInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$AppItem$1;->this$0:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;

    iget-object v0, v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$AppItem$1;->$app:Landroid/content/pm/ApplicationInfo;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "app"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/android/settings/applications/appcompat/UserAspectRatioDetails;

    const/16 v2, 0x808

    invoke-static {v1, p0, v0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startAppInfoFragment(Ljava/lang/Class;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
