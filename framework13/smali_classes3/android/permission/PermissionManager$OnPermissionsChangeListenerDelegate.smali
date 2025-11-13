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
    .param p2, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1705
    iput-object p1, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->this$0:Landroid/permission/PermissionManager;

    invoke-direct {p0}, Landroid/permission/IOnPermissionsChangeListener$Stub;-><init>()V

    .line 1706
    iput-object p2, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 1707
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1708
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1717
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1732
    const/4 v0, 0x0

    return v0

    .line 1719
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1722
    .local v0, "uid":I
    :try_start_0
    iget-object v1, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    invoke-interface {v1, v0}, Landroid/content/pm/PackageManager$OnPermissionsChangedListener;->onPermissionsChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1725
    goto :goto_0

    .line 1723
    :catch_0
    move-exception v1

    .line 1724
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/permission/PermissionManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to notify listener"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1729
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist onPermissionsChanged(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 1712
    iget-object v0, p0, Landroid/permission/PermissionManager$OnPermissionsChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1713
    return-void
.end method
