.class Landroid/app/AppOpsManager$2;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/AppOpsManager;

.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/AppOpsManager$2;->this$0:Landroid/app/AppOpsManager;

    iput-object p2, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    instance-of v0, v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    check-cast v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    invoke-virtual {v0, p1, p3, p4}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;->onOpChanged(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v0, v1, p3, v2, p4}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    instance-of v0, v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    check-cast v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    invoke-virtual {v0, p1, p3}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;->onOpChanged(ILjava/lang/String;)V

    :cond_2
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/AppOpsManager$2;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v1, v1, p1

    iget-object v1, v1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method
