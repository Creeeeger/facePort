.class final Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$pageInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
        "Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;",
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
.field final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$pageInfo$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$pageInfo$2;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    sget v0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.settings.analyzestorage.ENTER_UNUSED_APPS"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "asType"

    if-eqz p0, :cond_0

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_UNUSED_APPS:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->putExtra(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_APP_CACHE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->putExtra(ILjava/lang/String;)V

    :goto_0
    return-object p0
.end method
