.class public final Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt$permissionsChangedFlow$1$onPermissionsChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $app:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt$permissionsChangedFlow$1$onPermissionsChangedListener$1;->$app:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt$permissionsChangedFlow$1$onPermissionsChangedListener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final onPermissionsChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt$permissionsChangedFlow$1$onPermissionsChangedListener$1;->$app:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt$permissionsChangedFlow$1$onPermissionsChangedListener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
