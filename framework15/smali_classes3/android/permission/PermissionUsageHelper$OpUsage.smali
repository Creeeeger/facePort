.class Landroid/permission/PermissionUsageHelper$OpUsage;
.super Ljava/lang/Object;
.source "PermissionUsageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionUsageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpUsage"
.end annotation


# instance fields
.field public final blacklist attributionTag:Ljava/lang/String;

.field public final blacklist isRunning:Z

.field public final blacklist lastAccessTime:J

.field public final blacklist op:Ljava/lang/String;

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

.field public final blacklist uid:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLandroid/permission/PermissionUsageHelper$OpUsage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    iput-object p3, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    iput p4, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    iput-wide p5, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    iput-boolean p7, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    iput-object p8, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->proxy:Landroid/permission/PermissionUsageHelper$OpUsage;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/permission/PermissionUsageHelper$OpUsage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/permission/PermissionUsageHelper$OpUsage;

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    iget-object v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    iget-object v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    iget v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    iget-wide v4, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    iget-boolean v3, v0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public blacklist getPackageIdHash()I
    .locals 2

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist getUser()Landroid/os/UserHandle;
    .locals 1

    iget v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget-object v0, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->attributionTag:Ljava/lang/String;

    iget-object v2, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->op:Ljava/lang/String;

    iget v3, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->lastAccessTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-boolean v5, p0, Landroid/permission/PermissionUsageHelper$OpUsage;->isRunning:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
