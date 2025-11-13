.class public final Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSystemWallpaperColors:Landroid/util/SparseArray;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mSystemWallpaperColors:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method


# virtual methods
.method public final getColor(I)Landroid/app/SemWallpaperColors;
    .locals 3

    const-string v0, "getColor: which = "

    const-string v1, "SystemWallpaperColors"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit8 v0, p1, 0x3c

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x4

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mSystemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemWallpaperColors;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;->mSystemWallpaperColors:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "getColor : put color for which "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", color = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method
