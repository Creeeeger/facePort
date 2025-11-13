.class final Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt$permissionsChangedFlow$1$1;
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
.field final synthetic $onPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

.field final synthetic $userPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt$permissionsChangedFlow$1$onPermissionsChangedListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt$permissionsChangedFlow$1$1;->$userPackageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt$permissionsChangedFlow$1$1;->$onPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt$permissionsChangedFlow$1$1;->$userPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt$permissionsChangedFlow$1$1;->$onPermissionsChangedListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
