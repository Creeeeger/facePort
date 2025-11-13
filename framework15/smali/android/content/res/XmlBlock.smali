.class public final Landroid/content/res/XmlBlock;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/XmlBlock$Parser;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist ERROR_BAD_DOCUMENT:I

.field private static final blacklist ERROR_NULL_DOCUMENT:I = -0x7ffffff8


# instance fields
.field private final greylist-max-o mAssets:Landroid/content/res/AssetManager;

.field private greylist-max-o mNative:J

.field private greylist-max-o mOpen:Z

.field private greylist-max-o mOpenCount:I

.field final greylist-max-o mStrings:Landroid/content/res/StringBlock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOpenCount(Landroid/content/res/XmlBlock;)I
    .locals 0

    iget p0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOpenCount(Landroid/content/res/XmlBlock;I)V
    .locals 0

    iput p1, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdecOpenCountLocked(Landroid/content/res/XmlBlock;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetERROR_BAD_DOCUMENT()I
    .locals 1

    sget v0, Landroid/content/res/XmlBlock;->ERROR_BAD_DOCUMENT:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeDestroyParseState(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeDestroyParseState(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeCount(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetAttributeCount(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeData(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeData(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeDataType(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeName(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeName(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeNamespace(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeResource(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeResource(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetAttributeStringValue(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetClassAttribute(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetClassAttribute(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetIdAttribute(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetIdAttribute(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetLineNumber(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetLineNumber(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetNamespace(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetNamespace(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetSourceResId(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetSourceResId(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetStyleAttribute(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetText(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/content/res/XmlBlock;->nativeGetText(J)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    sget v0, Landroid/system/OsConstants;->EINVAL:I

    neg-int v0, v0

    sput v0, Landroid/content/res/XmlBlock;->ERROR_BAD_DOCUMENT:I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/res/AssetManager;J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    iput-object p1, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    iput-wide p2, p0, Landroid/content/res/XmlBlock;->mNative:J

    new-instance v0, Landroid/content/res/StringBlock;

    invoke-static {p2, p3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method public constructor greylist <init>([B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v2, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method public constructor greylist-max-o <init>([BII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {p1, p2, p3}, Landroid/content/res/XmlBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v1, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v1, v2}, Landroid/content/res/XmlBlock;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    return-void
.end method

.method private greylist-max-o decOpenCountLocked()V
    .locals 2

    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    iget v0, p0, Landroid/content/res/XmlBlock;->mOpenCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0}, Landroid/content/res/StringBlock;->close()V

    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/XmlBlock;->nativeDestroy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/XmlBlock;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->xmlBlockGone(I)V

    :cond_0
    return-void
.end method

.method private static final native greylist-max-o nativeCreate([BII)J
.end method

.method private static final native blacklist nativeCreateParseState(JI)J
.end method

.method private static final native greylist-max-o nativeDestroy(J)V
.end method

.method private static final native greylist-max-o nativeDestroyParseState(J)V
.end method

.method private static final native greylist-max-o nativeGetAttributeCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeData(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeDataType(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetAttributeIndex(JLjava/lang/String;Ljava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeName(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeNamespace(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeResource(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetAttributeStringValue(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetClassAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetIdAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetLineNumber(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static final native greylist-max-o nativeGetName(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetNamespace(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native blacklist nativeGetSourceResId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetStringBlock(J)J
.end method

.method private static final native greylist-max-o nativeGetStyleAttribute(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static final native greylist-max-o nativeGetText(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static final native greylist-max-o nativeNext(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/XmlBlock;->mOpen:Z

    invoke-direct {p0}, Landroid/content/res/XmlBlock;->decOpenCountLocked()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/res/XmlBlock;->close()V

    return-void
.end method

.method public greylist newParser()Landroid/content/res/XmlResourceParser;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock;->newParser(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newParser(I)Landroid/content/res/XmlResourceParser;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/XmlBlock$Parser;

    iget-wide v1, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->nativeCreateParseState(JI)J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2, p0}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;)V

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist newParser(ILandroid/content/res/Validator;)Landroid/content/res/XmlResourceParser;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/content/res/XmlBlock;->mNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/XmlBlock$Parser;

    iget-wide v1, p0, Landroid/content/res/XmlBlock;->mNative:J

    invoke-static {v1, v2, p1}, Landroid/content/res/XmlBlock;->nativeCreateParseState(JI)J

    move-result-wide v3

    move-object v1, v0

    move-object v2, p0

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/content/res/XmlBlock$Parser;-><init>(Landroid/content/res/XmlBlock;JLandroid/content/res/XmlBlock;Landroid/content/res/Validator;)V

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
