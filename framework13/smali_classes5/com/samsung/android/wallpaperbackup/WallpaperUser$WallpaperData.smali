.class Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaperbackup/WallpaperUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation


# instance fields
.field blacklist bottom:I

.field blacklist left:I

.field blacklist right:I

.field blacklist rotation:I

.field blacklist top:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->left:I

    .line 238
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->top:I

    .line 239
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->right:I

    .line 240
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->bottom:I

    .line 241
    iput v0, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->rotation:I

    .line 242
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotatioin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wallpaperbackup/WallpaperUser$WallpaperData;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
