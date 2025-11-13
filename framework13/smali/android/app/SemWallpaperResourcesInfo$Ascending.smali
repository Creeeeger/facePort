.class Landroid/app/SemWallpaperResourcesInfo$Ascending;
.super Ljava/lang/Object;
.source "SemWallpaperResourcesInfo.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SemWallpaperResourcesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Ascending"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/SemWallpaperResourcesInfo$Item;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/app/SemWallpaperResourcesInfo$Item;Landroid/app/SemWallpaperResourcesInfo$Item;)I
    .locals 2
    .param p1, "r1"    # Landroid/app/SemWallpaperResourcesInfo$Item;
    .param p2, "r2"    # Landroid/app/SemWallpaperResourcesInfo$Item;

    .line 603
    invoke-static {p1}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Landroid/app/SemWallpaperResourcesInfo$Item;->-$$Nest$fgetindex(Landroid/app/SemWallpaperResourcesInfo$Item;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 600
    check-cast p1, Landroid/app/SemWallpaperResourcesInfo$Item;

    check-cast p2, Landroid/app/SemWallpaperResourcesInfo$Item;

    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperResourcesInfo$Ascending;->compare(Landroid/app/SemWallpaperResourcesInfo$Item;Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result p1

    return p1
.end method
