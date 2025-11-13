.class public Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;
.super Ljava/lang/Object;
.source "MediaBufferFileReader.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist imageExt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist compressedMediaReader:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist exifConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/media/ExifInterface;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist format:Lcom/samsung/android/sume/core/format/MediaFormat;

.field private final blacklist paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 29
    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->TAG:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/samsung/android/sume/core/types/ColorFormat;->values()[Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 32
    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda7;-><init>()V

    .line 33
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 34
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->imageExt:Ljava/util/List;

    .line 37
    const-string v1, "i420"

    const-string v2, "jpg"

    const-string v3, "heic"

    const-string/jumbo v4, "png"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    return-void
.end method

.method public varargs constructor blacklist <init>([Ljava/lang/String;)V
    .locals 5
    .param p1, "paths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 47
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no file for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->paths:Ljava/util/List;

    .line 52
    return-void
.end method

.method static blacklist getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 121
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getFormatFromName(Ljava/lang/String;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 111
    invoke-static {p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "ext":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->isImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->getImageFormatFromName(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    return-object v1

    .line 114
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->getVideoFormatFromName(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    return-object v1

    .line 117
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not supported yet for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getImageFormatFromName(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "ext"
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v1

    .line 72
    .local v1, "format":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->NONE:Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 74
    .local v2, "colorFormat":Lcom/samsung/android/sume/core/types/ColorFormat;
    const-string v3, "jpg"

    const-string v4, "heic"

    const-string/jumbo v5, "png"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    sget-object v0, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_1

    .line 77
    :cond_0
    sget-object v3, Lcom/samsung/android/sume/core/types/MediaType;->RAW_IMAGE:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 79
    const-string v3, "i420"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    sget-object v2, Lcom/samsung/android/sume/core/types/ColorFormat;->YUV420:Lcom/samsung/android/sume/core/types/ColorFormat;

    goto :goto_0

    .line 82
    :cond_1
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sume/core/types/ColorFormat;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v2

    .line 85
    :goto_0
    const-string v3, "\\d+x\\d+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 86
    .local v3, "resolutionMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 87
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda0;-><init>()V

    .line 88
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda1;-><init>()V

    .line 89
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    .line 90
    .local v4, "resolution":[Ljava/lang/Integer;
    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setCols(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 91
    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setRows(I)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 92
    .end local v4    # "resolution":[Ljava/lang/Integer;
    nop

    .line 97
    .end local v3    # "resolutionMatcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setColorFormat(Lcom/samsung/android/sume/core/types/ColorFormat;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    .line 98
    sget-object v0, Lcom/samsung/android/sume/core/types/DataType;->U8:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/ColorFormat;->getChannels()I

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/sume/core/types/DataType;->of(Lcom/samsung/android/sume/core/types/DataType;I)Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 100
    invoke-virtual {v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0

    .line 93
    .restart local v3    # "resolutionMatcher":Ljava/util/regex/Matcher;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v4, "not supported yet"

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getVideoFormatFromName(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "ext"
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->mutableImageOf([Ljava/lang/Object;)Lcom/samsung/android/sume/core/format/MutableImageFormat;

    move-result-object v0

    .line 105
    .local v0, "format":Lcom/samsung/android/sume/core/format/MutableImageFormat;
    sget-object v1, Lcom/samsung/android/sume/core/types/MediaType;->COMPRESSED_VIDEO:Lcom/samsung/android/sume/core/types/MediaType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setMediaType(Lcom/samsung/android/sume/core/types/MediaType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 106
    sget-object v1, Lcom/samsung/android/sume/core/types/DataType;->U8C3:Lcom/samsung/android/sume/core/types/DataType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->setDataType(Lcom/samsung/android/sume/core/types/DataType;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 107
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/format/MutableImageFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    return-object v1
.end method

.method private blacklist isImage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext"
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->imageExt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist isVideo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ext"
        }
    .end annotation

    .line 149
    const-string v0, "mp4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getImageFormatFromName$1(I)[Ljava/lang/Integer;
    .locals 1
    .param p0, "x$0"    # I

    .line 89
    new-array v0, p0, [Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic blacklist lambda$read$3(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/util/function/BiFunction;

    .line 165
    invoke-interface {p2, p0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method static synthetic blacklist lambda$read$4()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not implement internal compress image reader yet, plz should set explicitly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$read$5(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 1
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "reader"    # Ljava/util/function/BiFunction;

    .line 193
    invoke-interface {p2, p0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method static synthetic blacklist lambda$read$6()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not implement internal compress image reader yet, plz should set explicitly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/samsung/android/sume/core/types/ColorFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/types/ColorFormat;

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/types/ColorFormat;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist readExif(Ljava/lang/String;)Landroid/media/ExifInterface;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "exif":Landroid/media/ExifInterface;
    const/4 v1, 0x0

    .line 128
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 129
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 133
    nop

    .line 135
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :goto_0
    goto :goto_1

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 130
    :catch_1
    move-exception v2

    .line 131
    .restart local v2    # "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    .end local v2    # "ex":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 135
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 141
    :cond_0
    :goto_1
    return-object v0

    .line 133
    :goto_2
    if-eqz v1, :cond_1

    .line 135
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 138
    goto :goto_3

    .line 136
    :catch_2
    move-exception v3

    .line 137
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v2
.end method

.method private blacklist readRawImage(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 6
    .param p1, "mediaFormat"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaFormat",
            "path"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not exist input file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/samsung/android/sume/core/Def;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-ltz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 223
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 225
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 226
    invoke-static {p1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    nop

    .line 233
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    goto :goto_0

    .line 234
    :catch_0
    move-exception v4

    .line 235
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return-object v3

    .line 231
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 227
    :catch_1
    move-exception v2

    .line 228
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    const/4 v3, 0x0

    .line 231
    if-eqz v1, :cond_1

    .line 233
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 236
    goto :goto_1

    .line 234
    :catch_2
    move-exception v4

    .line 235
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v3

    .line 231
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v1, :cond_2

    .line 233
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 236
    goto :goto_3

    .line 234
    :catch_3
    move-exception v3

    .line 235
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 238
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v2
.end method


# virtual methods
.method synthetic blacklist lambda$read$2$com-samsung-android-sume-core-buffer-MediaBufferFileReader(Ljava/lang/String;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->getFormatFromName(Ljava/lang/String;)Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$read$7$com-samsung-android-sume-core-buffer-MediaBufferFileReader(Ljava/lang/String;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 159
    .local v0, "format":Lcom/samsung/android/sume/core/format/MediaFormat;
    sget-object v1, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$1;->$SwitchMap$com$samsung$android$sume$core$types$MediaType:[I

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/types/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 199
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "not support yet"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->compressedMediaReader:Ljava/util/function/BiFunction;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda6;-><init>()V

    .line 194
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 197
    .local v1, "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_1

    .line 164
    .end local v1    # "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->compressedMediaReader:Ljava/util/function/BiFunction;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda4;-><init>()V

    .line 166
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 170
    .restart local v1    # "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-static {p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->readExif(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object v2

    .line 171
    .local v2, "exif":Landroid/media/ExifInterface;
    if-eqz v2, :cond_2

    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, "orientation":I
    const/4 v4, 0x0

    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 181
    :pswitch_2
    const/16 v3, 0x10e

    .line 182
    goto :goto_0

    .line 175
    :pswitch_3
    const/16 v3, 0x5a

    .line 176
    goto :goto_0

    .line 178
    :pswitch_4
    const/16 v3, 0xb4

    .line 179
    nop

    .line 185
    :goto_0
    if-eqz v3, :cond_0

    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "rotation-degrees"

    invoke-interface {v1, v5, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->exifConsumer:Ljava/util/function/Consumer;

    if-eqz v4, :cond_1

    .line 188
    invoke-interface {v4, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 189
    .end local v3    # "orientation":I
    :cond_1
    goto :goto_1

    .line 161
    .end local v1    # "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .end local v2    # "exif":Landroid/media/ExifInterface;
    :pswitch_5
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->readRawImage(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    .line 162
    .restart local v1    # "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    nop

    .line 201
    :cond_2
    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist read()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;)V

    .line 154
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader$$ExternalSyntheticLambda9;-><init>()V

    .line 203
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 204
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 206
    .local v0, "buffers":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 207
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v1

    .line 209
    :cond_0
    invoke-static {v2, v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(ILjava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setCompressedMediaReader(Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressedImageReader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;"
        }
    .end annotation

    .line 60
    .local p1, "compressedImageReader":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/String;Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->compressedMediaReader:Ljava/util/function/BiFunction;

    .line 61
    return-object p0
.end method

.method public blacklist setExifConsumer(Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exifConsumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/media/ExifInterface;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;"
        }
    .end annotation

    .line 65
    .local p1, "exifConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/media/ExifInterface;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->exifConsumer:Ljava/util/function/Consumer;

    .line 66
    return-object p0
.end method

.method public blacklist setFormat(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;
    .locals 0
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferFileReader;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 56
    return-object p0
.end method
