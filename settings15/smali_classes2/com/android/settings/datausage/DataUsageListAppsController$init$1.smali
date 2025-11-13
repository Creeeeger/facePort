.class final Lcom/android/settings/datausage/DataUsageListAppsController$init$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageListAppsController;->init(Landroid/net/NetworkTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "appItem",
        "Lcom/android/settingslib/AppItem;",
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
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageListAppsController;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageListAppsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageListAppsController$init$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/settingslib/AppItem;

    const-string v0, "appItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageListAppsController$init$1;->this$0:Lcom/android/settings/datausage/DataUsageListAppsController;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageListAppsController;->access$getUidDetailProvider$p(Lcom/android/settings/datausage/DataUsageListAppsController;)Lcom/android/settingslib/net/UidDetailProvider;

    move-result-object p0

    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/net/UidDetail;->packageName:Ljava/lang/String;

    return-object p0
.end method
