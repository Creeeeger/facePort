.class public Landroid/content/pm/parsing/result/ParseTypeImpl;
.super Ljava/lang/Object;
.source "ParseTypeImpl.java"

# interfaces
.implements Landroid/content/pm/parsing/result/ParseInput;
.implements Landroid/content/pm/parsing/result/ParseResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/parsing/result/ParseInput;",
        "Landroid/content/pm/parsing/result/ParseResult<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist DEBUG_FILL_STACK_TRACE:Z = false

.field public static final blacklist DEBUG_LOG_ON_ERROR:Z = false

.field public static final blacklist DEBUG_THROW_ALL_ERRORS:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ParseTypeImpl"


# instance fields
.field private final blacklist mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

.field private blacklist mDeferredErrors:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mErrorCode:I

.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mException:Ljava/lang/Exception;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPackageNameForAudit:Ljava/lang/String;

.field private blacklist mResult:Ljava/lang/Object;

.field private blacklist mTargetSdkVersion:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    iput-object p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

    return-void
.end method

.method public static blacklist forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;
    .locals 3

    nop

    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    new-instance v1, Landroid/content/pm/parsing/result/ParseTypeImpl;

    new-instance v2, Landroid/content/pm/parsing/result/ParseTypeImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/content/pm/parsing/result/ParseTypeImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/compat/IPlatformCompat;)V

    invoke-direct {v1, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v1
.end method

.method public static blacklist forParsingWithoutPlatformCompat()Landroid/content/pm/parsing/result/ParseTypeImpl;
    .locals 2

    new-instance v0, Landroid/content/pm/parsing/result/ParseTypeImpl;

    new-instance v1, Landroid/content/pm/parsing/result/ParseTypeImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;-><init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$forDefaultParsing$1(Lcom/android/internal/compat/IPlatformCompat;JLjava/lang/String;I)Z
    .locals 4

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput p4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :try_start_0
    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "ParseTypeImpl"

    const-string v3, "IPlatformCompat query failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x1

    return v2
.end method

.method static synthetic blacklist lambda$forParsingWithoutPlatformCompat$0(JLjava/lang/String;I)Z
    .locals 3

    invoke-static {p0, p1}, Landroid/content/pm/parsing/result/ParseInput$DeferredError;->getTargetSdkForChange(J)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    if-le p3, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public blacklist deferError(Ljava/lang/String;J)Landroid/content/pm/parsing/result/ParseResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;"
        }
    .end annotation

    iget v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

    iget-object v1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageName:Ljava/lang/String;

    iget v3, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    invoke-interface {v0, p2, p3, v1, v3}, Landroid/content/pm/parsing/result/ParseInput$Callback;->isChangeEnabled(JLjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-nez v0, :cond_2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    :cond_2
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-nez v0, :cond_4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    :cond_4
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist enableDeferredError(Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageName:Ljava/lang/String;

    iput p2, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mCallback:Landroid/content/pm/parsing/result/ParseInput$Callback;

    iget-object v7, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageName:Ljava/lang/String;

    iget v8, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    invoke-interface {v6, v3, v4, v7, v8}, Landroid/content/pm/parsing/result/ParseInput$Callback;->isChangeEnabled(JLjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v5}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v6, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    return-object v1
.end method

.method public blacklist error(I)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    iput p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    iput-object p2, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    return-object p0
.end method

.method public blacklist error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "*>;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v0

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    const/16 v0, -0x6c

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getErrorCode()I
    .locals 1

    iget v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    return v0
.end method

.method public blacklist getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public blacklist getPackageNameForAudit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageNameForAudit:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist isError()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->isSuccess()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist isSuccess()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist reset()Landroid/content/pm/parsing/result/ParseInput;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mResult:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageNameForAudit:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mDeferredErrors:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->erase()V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mTargetSdkVersion:I

    return-object p0
.end method

.method public blacklist setPackageNameForAudit(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mPackageNameForAudit:Ljava/lang/String;

    return-void
.end method

.method public blacklist skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    const/16 v0, -0x7d

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public blacklist success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(TResultType;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TResultType;>;"
        }
    .end annotation

    iget v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set to success after set to error, was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mException:Ljava/lang/Exception;

    const-string v2, "ParseTypeImpl"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iput-object p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl;->mResult:Ljava/lang/Object;

    return-object p0
.end method
