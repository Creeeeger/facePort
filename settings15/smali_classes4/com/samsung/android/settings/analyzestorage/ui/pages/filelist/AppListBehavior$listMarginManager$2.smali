.class final Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listMarginManager$2;
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
        "Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;",
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


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listMarginManager$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listMarginManager$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listMarginManager$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listMarginManager$2;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listMarginManager$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object p0, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;->Companion:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager$Companion;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;->instance:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;->instance:Lcom/samsung/android/settings/analyzestorage/ui/manager/ListMarginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method
