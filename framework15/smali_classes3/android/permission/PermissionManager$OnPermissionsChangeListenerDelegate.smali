.class final Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;
.super Landroid/permission/IOnPermissionsChangeListener$Stub;
.source "PermissionManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnPermissionsChangeListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_PERMISSIONS_CHANGED:I = 0x1


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

.field final synthetic blacklist this$0:Landroid/permission/PermissionManager;


# direct methods
.method public constructor blacklist <init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->this$0:Landroid/permission/PermissionManager;

    invoke-direct {p0}, Landroid/permission/IOnPermissionsChangeListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-interface {v2, v0, v1}, Landroid/content/pm/PackageManager$OnPermissionsChangedListener;->onPermissionsChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Landroid/permission/PermissionManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to notify listener"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist onPermissionsChanged(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
