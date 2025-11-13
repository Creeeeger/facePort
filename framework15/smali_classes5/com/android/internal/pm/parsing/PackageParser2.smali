.class public Lcom/android/internal/pm/parsing/PackageParser2;
.super Ljava/lang/Object;
.source "PackageParser2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/parsing/PackageParser2$Callback;
    }
.end annotation


# static fields
.field private static final blacklist LOG_PARSE_TIMINGS:Z

.field private static final blacklist LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# instance fields
.field protected blacklist mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

.field private final blacklist mParsingUtils:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

.field private final blacklist mSharedAppInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSharedResult:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/content/pm/parsing/result/ParseTypeImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$MvArpHu3e7x9OPqqzLNY7gz1y0k(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/internal/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/pm/parsing/PackageParser2;->lambda$new$1(Lcom/android/internal/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    return-void
.end method

.method public constructor blacklist <init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Lcom/android/internal/pm/parsing/IPackageCacher;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    if-nez p2, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object p2, v0

    invoke-virtual {p2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    const-class v2, Landroid/permission/PermissionManager;

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/permission/PermissionManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    :cond_2
    iput-object p3, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

    new-instance v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    invoke-direct {v2, p1, p2, v0, p4}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;-><init>([Ljava/lang/String;Landroid/util/DisplayMetrics;Ljava/util/List;Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)V

    iput-object v2, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mParsingUtils:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    new-instance v2, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p4}, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    new-instance v3, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    invoke-static {v3}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic blacklist lambda$new$0()Landroid/content/pm/ApplicationInfo;
    .locals 2

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return-object v0
.end method

.method private synthetic blacklist lambda$new$1(Lcom/android/internal/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object p4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput p5, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/internal/pm/parsing/PackageParser2$Callback;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    return v1
.end method

.method static synthetic blacklist lambda$new$2(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;
    .locals 1

    new-instance v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-direct {v0, p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedAppInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public blacklist parsePackage(Ljava/io/File;IZ)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/pm/parsing/PackageParserException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p1, v0, v1

    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/pm/parsing/IPackageCacher;->getCachedResult(Ljava/io/File;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    sget-boolean v1, Lcom/android/internal/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :goto_0
    iget-object v1, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v1

    iget-object v6, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mParsingUtils:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    invoke-virtual {v6, v1, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePackage(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v7}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    if-eqz v8, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :cond_3
    iget-object v8, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mCacher:Lcom/android/internal/pm/parsing/IPackageCacher;

    invoke-interface {v8, p1, p2, v7}, Lcom/android/internal/pm/parsing/IPackageCacher;->cacheResult(Ljava/io/File;ILcom/android/internal/pm/parsing/pkg/ParsedPackage;)V

    :cond_4
    sget-boolean v8, Lcom/android/internal/pm/parsing/PackageParser2;->LOG_PARSE_TIMINGS:Z

    if-eqz v8, :cond_5

    sub-long v4, v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    add-long v8, v4, v2

    const-wide/16 v10, 0x64

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parse times for \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\': parse="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms, update_cache="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PackageParsing"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v7

    :cond_6
    new-instance v2, Lcom/android/internal/pm/parsing/PackageParserException;

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v3

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v8

    invoke-direct {v2, v3, v7, v8}, Lcom/android/internal/pm/parsing/PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist parsePackageFromPackageLite(Landroid/content/pm/parsing/PackageLite;I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/pm/parsing/PackageParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mSharedResult:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/pm/parsing/PackageParser2;->mParsingUtils:Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils;->parsePackageFromPackageLite(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/pm/parsing/PackageLite;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->hideAsParsed()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v2, Lcom/android/internal/pm/parsing/PackageParserException;

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v3

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/pm/parsing/PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
