.class Landroid/content/pm/PackageManager$2;
.super Landroid/app/PropertyInvalidatedCache;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/content/pm/PackageManager$ApplicationInfoQuery;",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Landroid/content/pm/PackageManager$ApplicationInfoQuery;)Landroid/content/pm/ApplicationInfo;
    .locals 4

    iget-object v0, p1, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->packageName:Ljava/lang/String;

    iget-wide v1, p1, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->flags:J

    iget v3, p1, Landroid/content/pm/PackageManager$ApplicationInfoQuery;->userId:I

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->-$$Nest$smgetApplicationInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/content/pm/PackageManager$ApplicationInfoQuery;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager$2;->recompute(Landroid/content/pm/PackageManager$ApplicationInfoQuery;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist resultEquals(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic blacklist resultEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager$2;->resultEquals(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method
