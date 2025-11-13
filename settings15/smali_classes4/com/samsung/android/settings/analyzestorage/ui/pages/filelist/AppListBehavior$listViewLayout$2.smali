.class final Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listViewLayout$2;
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;",
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
.field final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listViewLayout$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listViewLayout$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->context:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initListViewLayout$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initListViewLayout$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;)V

    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/ListViewLayout;->layoutListener:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initListViewLayout$1$1;

    return-object v0
.end method
