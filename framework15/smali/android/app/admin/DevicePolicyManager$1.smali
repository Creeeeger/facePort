.class Landroid/app/admin/DevicePolicyManager$1;
.super Landroid/app/admin/IAuditLogEventsCallback$Stub;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/admin/DevicePolicyManager;->setAuditLogEventCallback(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/admin/DevicePolicyManager;

.field final synthetic blacklist val$callback:Ljava/util/function/Consumer;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$1;->this$0:Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/admin/DevicePolicyManager$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/app/admin/IAuditLogEventsCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onNewAuditLogEvents$0(Ljava/util/function/Consumer;Ljava/util/List;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onNewAuditLogEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$1;->val$callback:Ljava/util/function/Consumer;

    new-instance v2, Landroid/app/admin/DevicePolicyManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/app/admin/DevicePolicyManager$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
