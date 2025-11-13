.class final Landroid/app/DisabledWallpaperManager;
.super Landroid/app/WallpaperManager;
.source "DisabledWallpaperManager.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sInstance:Landroid/app/DisabledWallpaperManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/app/DisabledWallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/DisabledWallpaperManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/WallpaperManager;-><init>()V

    return-void
.end method

.method static blacklist getInstance()Landroid/app/DisabledWallpaperManager;
    .locals 1

    sget-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/DisabledWallpaperManager;

    invoke-direct {v0}, Landroid/app/DisabledWallpaperManager;-><init>()V

    sput-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    :cond_0
    sget-object v0, Landroid/app/DisabledWallpaperManager;->sInstance:Landroid/app/DisabledWallpaperManager;

    return-object v0
.end method

.method private static blacklist unsupported()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist unsupportedBoolean()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist unsupportedInt()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public whitelist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist clear()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist clear(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist clearWallpaper()V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist clearWallpaper(II)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist forgetLoadedWallpaper()V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public blacklist getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getBitmapAsUser(IZ)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getDesiredMinimumHeight()I
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getWallpaperColors(I)Landroid/app/WallpaperColors;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColors;

    return-object v0
.end method

.method public blacklist getWallpaperColors(II)Landroid/app/WallpaperColors;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperColors;

    return-object v0
.end method

.method public whitelist getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public whitelist getWallpaperId(I)I
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public blacklist getWallpaperIdForUser(II)I
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedInt()I

    move-result v0

    return v0
.end method

.method public whitelist getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public whitelist getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public blacklist getWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public blacklist getWallpaperInfoFile()Landroid/os/ParcelFileDescriptor;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    return-object v0
.end method

.method public whitelist hasResourceWallpaper(I)Z
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist isSetWallpaperAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isWallpaperBackupEligible(I)Z
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist isWallpaperSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist setDisplayOffset(Landroid/os/IBinder;II)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist setDisplayPadding(Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist setResource(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setResource(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setStream(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist setWallpaperComponent(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public blacklist setWallpaperComponent(Landroid/content/ComponentName;I)Z
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist setWallpaperOffsetSteps(FF)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public whitelist suggestDesiredDimensions(II)V
    .locals 0

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupported()Ljava/lang/Object;

    return-void
.end method

.method public blacklist wallpaperSupportsWcg(I)Z
    .locals 1

    invoke-static {}, Landroid/app/DisabledWallpaperManager;->unsupportedBoolean()Z

    move-result v0

    return v0
.end method
