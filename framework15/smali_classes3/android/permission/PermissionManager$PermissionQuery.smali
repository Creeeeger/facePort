.class final Landroid/permission/PermissionManager$PermissionQuery;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionQuery"
.end annotation


# instance fields
.field final blacklist deviceId:I

.field final blacklist permission:Ljava/lang/String;

.field final blacklist pid:I

.field final blacklist uid:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iput p2, p0, Landroid/permission/PermissionManager$PermissionQuery;->pid:I

    iput p3, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    iput p4, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/permission/PermissionManager$PermissionQuery;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    iget v3, v1, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    iget v3, v1, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget-object v3, v1, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget v1, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget v1, p0, Landroid/permission/PermissionManager$PermissionQuery;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/permission/PermissionManager$PermissionQuery;->deviceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PermissionQuery(permission=\"%s\", pid=%d, uid=%d, deviceId=%d)"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
