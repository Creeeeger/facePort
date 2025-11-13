.class public final Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInitialized:Z

.field public static final sLoggerMethods:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->sLoggerMethods:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->sInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->sInitialized:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sput-boolean v2, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->sInitialized:Z

    const-class v0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const-class v4, Lcom/android/wm/shell/windowdecor/MTCaptionLoggerInfo;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-class v4, Lcom/android/wm/shell/windowdecor/MTCaptionLoggerInfo;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/windowdecor/MTCaptionLoggerInfo;

    sget-object v5, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->sLoggerMethods:Ljava/util/HashMap;

    new-instance v12, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;

    invoke-interface {v4}, Lcom/android/wm/shell/windowdecor/MTCaptionLoggerInfo;->behavior()I

    move-result v8

    invoke-interface {v4}, Lcom/android/wm/shell/windowdecor/MTCaptionLoggerInfo;->interaction()I

    move-result v9

    invoke-interface {v4}, Lcom/android/wm/shell/windowdecor/MTCaptionLoggerInfo;->isDexMode()Z

    move-result v10

    invoke-interface {v4}, Lcom/android/wm/shell/windowdecor/MTCaptionLoggerInfo;->windowingMode()I

    move-result v11

    move-object v6, v12

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;IIZI)V

    invoke-virtual {v5, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public invokeLog(Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 3

    const-string v0, "invoke logger="

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, "MultitaskingCaptionButtonLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final log(Ljava/lang/String;IIIZ)V
    .locals 8

    sget-object v0, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->sLoggerMethods:Ljava/util/HashMap;

    new-instance v7, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger$MTCaptionLoggerPairKey;-><init>(Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;IIZI)V

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;->invokeLog(Ljava/lang/reflect/Method;Ljava/lang/String;)V

    return-void
.end method
