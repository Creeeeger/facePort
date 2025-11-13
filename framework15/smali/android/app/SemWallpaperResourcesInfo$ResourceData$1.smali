.class Landroid/app/SemWallpaperResourcesInfo$ResourceData$1;
.super Ljava/lang/Object;
.source "SemWallpaperResourcesInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SemWallpaperResourcesInfo$ResourceData;->sortAscending()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/SemWallpaperResourcesInfo$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SemWallpaperResourcesInfo$ResourceData;


# direct methods
.method constructor blacklist <init>(Landroid/app/SemWallpaperResourcesInfo$ResourceData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/SemWallpaperResourcesInfo$ResourceData$1;->this$0:Landroid/app/SemWallpaperResourcesInfo$ResourceData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/app/SemWallpaperResourcesInfo$Item;Landroid/app/SemWallpaperResourcesInfo$Item;)I
    .locals 2

    iget-object v0, p1, Landroid/app/SemWallpaperResourcesInfo$Item;->index:Ljava/lang/Integer;

    iget-object v1, p2, Landroid/app/SemWallpaperResourcesInfo$Item;->index:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    check-cast p1, Landroid/app/SemWallpaperResourcesInfo$Item;

    check-cast p2, Landroid/app/SemWallpaperResourcesInfo$Item;

    invoke-virtual {p0, p1, p2}, Landroid/app/SemWallpaperResourcesInfo$ResourceData$1;->compare(Landroid/app/SemWallpaperResourcesInfo$Item;Landroid/app/SemWallpaperResourcesInfo$Item;)I

    move-result p1

    return p1
.end method
