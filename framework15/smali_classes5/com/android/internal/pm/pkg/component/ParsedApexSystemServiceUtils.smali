.class public Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceUtils;
.super Ljava/lang/Object;
.source "ParsedApexSystemServiceUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseApexSystemService(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;-><init>()V

    sget-object v1, Landroid/R$styleable;->AndroidManifestApexSystemService:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "<apex-system-service> does not have name attribute"

    invoke-interface {p2, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_0
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->setMinSdkVersion(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->setMaxSdkVersion(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->setInitOrder(I)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;->setJarPath(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedApexSystemServiceImpl;

    :cond_1
    invoke-interface {p2, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v7

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method
