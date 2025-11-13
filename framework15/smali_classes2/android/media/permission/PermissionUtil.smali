.class public Landroid/media/permission/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkPermissionForDataDelivery(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    iget v2, p1, Landroid/media/permission/Identity;->pid:I

    iget v3, p1, Landroid/media/permission/Identity;->uid:I

    iget-object v4, p1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I
    .locals 3

    iget v0, p1, Landroid/media/permission/Identity;->pid:I

    iget v1, p1, Landroid/media/permission/Identity;->uid:I

    iget-object v2, p1, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-static {p0, p2, v0, v1, v2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;
    .locals 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Landroid/media/permission/Identity;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Landroid/media/permission/Identity;->pid:I

    new-instance v0, Landroid/media/permission/CompositeSafeCloseable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/media/permission/SafeCloseable;

    invoke-static {p0}, Landroid/media/permission/IdentityContext;->create(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/media/permission/CompositeSafeCloseable;-><init>([Landroid/media/permission/SafeCloseable;)V

    return-object v0
.end method

.method public static blacklist establishIdentityIndirect(Landroid/content/Context;Ljava/lang/String;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;
    .locals 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p2, Landroid/media/permission/Identity;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p2, Landroid/media/permission/Identity;->uid:I

    iget v0, p2, Landroid/media/permission/Identity;->pid:I

    iget v1, p2, Landroid/media/permission/Identity;->uid:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Middleman must have the %s permision."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    new-instance v0, Landroid/media/permission/CompositeSafeCloseable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/media/permission/SafeCloseable;

    const/4 v2, 0x0

    invoke-static {p3}, Landroid/media/permission/IdentityContext;->create(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/media/permission/CompositeSafeCloseable;-><init>([Landroid/media/permission/SafeCloseable;)V

    return-object v0
.end method
