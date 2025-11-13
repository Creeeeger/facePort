.class public final Landroid/content/pm/ArchivedActivityInfo;
.super Ljava/lang/Object;
.source "ArchivedActivityInfo.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ArchivedActivityInfo"


# instance fields
.field private blacklist mComponentName:Landroid/content/ComponentName;

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mMonochromeIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/ArchivedActivityParcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    invoke-static {v0}, Landroid/content/pm/ArchivedActivityInfo;->drawableFromCompressedBitmap([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    invoke-static {v0}, Landroid/content/pm/ArchivedActivityInfo;->drawableFromCompressedBitmap([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static blacklist bytesFromBitmap(Landroid/graphics/Bitmap;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "ArchivedActivityInfo"

    const-string v3, "Failed to compress bitmap"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static blacklist drawableFromCompressedBitmap([B)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 6

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    if-gtz p1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, p1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lt v2, p1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    if-gt v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/lit8 v3, p1, 0x2

    if-le v2, v3, :cond_4

    goto :goto_3

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    invoke-static {v0, p1, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    return-object v1
.end method


# virtual methods
.method public whitelist getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getMonochromeIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method blacklist getParcel()Landroid/content/pm/ArchivedActivityParcel;
    .locals 3

    new-instance v0, Landroid/content/pm/ArchivedActivityParcel;

    invoke-direct {v0}, Landroid/content/pm/ArchivedActivityParcel;-><init>()V

    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ArchivedActivityParcel;->title:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/content/pm/ArchivedActivityParcel;->originalComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroid/content/pm/ArchivedActivityParcel;->iconBitmap:[B

    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ArchivedActivityInfo;->bytesFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    :goto_1
    iput-object v2, v0, Landroid/content/pm/ArchivedActivityParcel;->monochromeIconBitmap:[B

    return-object v0
.end method

.method public whitelist setComponentName(Landroid/content/ComponentName;)Landroid/content/pm/ArchivedActivityInfo;
    .locals 3

    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ArchivedActivityInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)Landroid/content/pm/ArchivedActivityInfo;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ArchivedActivityInfo;
    .locals 3

    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/ArchivedActivityInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist setMonochromeIcon(Landroid/graphics/drawable/Drawable;)Landroid/content/pm/ArchivedActivityInfo;
    .locals 0

    iput-object p1, p0, Landroid/content/pm/ArchivedActivityInfo;->mMonochromeIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
