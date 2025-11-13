.class public final Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
.super Ljava/lang/Object;
.source "GtsExpressionBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;,
        Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;,
        Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;,
        Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;,
        Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;,
        Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsExpressionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsExpressionBuilder.kt\ncom/samsung/android/gtscell/data/GtsExpressionBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,371:1\n1366#2:372\n1435#2,3:373\n1648#2,2:376\n1648#2:378\n1648#2,2:379\n1649#2:381\n*E\n*S KotlinDebug\n*F\n+ 1 GtsExpressionBuilder.kt\ncom/samsung/android/gtscell/data/GtsExpressionBuilder\n*L\n244#1:372\n244#1,3:373\n36#1,2:376\n136#1:378\n136#1,2:379\n136#1:381\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;

.field private static final ENLARGEABLE_THUMBNAIL_SIZE:I = 0x1f4

.field private static final THUMBNAIL_SIZE:I = 0xfa

.field private static enlargeableThumbnailSize:I

.field private static thumbnailSize:I


# instance fields
.field private disabled:Z

.field private final expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

.field private final itemKey:Ljava/lang/String;

.field private final storeContents:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;

.field private final subExpressions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->Companion:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$Companion;

    const/16 v0, 0xfa

    .line 23
    sput v0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->thumbnailSize:I

    const/16 v0, 0x1f4

    .line 27
    sput v0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->enlargeableThumbnailSize:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/gtscell/data/GtsExpressionRaw;)V
    .locals 10
    .param p1    # Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exp_value"

    const-string/jumbo v1, "raw"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->title:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->subTitle:Ljava/lang/String;

    const/4 v1, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getExpression()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpressionType()Lcom/samsung/android/gtscell/data/GtsExpressionType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "exp_enlargeable"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 80
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getExpression()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getExpression()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    .line 84
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setIconUrlExpression(Ljava/lang/String;Z)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    goto/16 :goto_5

    .line 75
    :pswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getExpression()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 76
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "Uri.parse(it)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setIconUriExpression(Landroid/net/Uri;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    goto/16 :goto_5

    .line 66
    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getExpression()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/samsung/android/gtscell/utils/GtsCellExKt;->toBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getExpression()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    .line 71
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setIconExpression(Landroid/graphics/Bitmap;Z)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    goto :goto_5

    .line 55
    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getExpression()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_4

    .line 58
    :try_start_2
    invoke-static {v2}, Lcom/samsung/android/gtscell/data/GtsMimeType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsMimeType;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 60
    :catch_0
    :try_start_3
    sget-object v2, Lcom/samsung/android/gtscell/data/GtsMimeType;->UNKNOWN:Lcom/samsung/android/gtscell/data/GtsMimeType;

    .line 56
    :goto_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setMimeIconExpression(Lcom/samsung/android/gtscell/data/GtsMimeType;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    goto :goto_5

    .line 52
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setMimeExpression()Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    goto :goto_5

    .line 47
    :pswitch_5
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getExpression()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    .line 46
    :goto_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setColorExpression(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    goto :goto_5

    .line 41
    :pswitch_6
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getExpression()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_4

    :cond_3
    move v2, v1

    .line 40
    :goto_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setOnOffExpression(Z)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 93
    :catch_1
    :cond_4
    :goto_5
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getSubExpressions()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 376
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    .line 94
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpressionType()Lcom/samsung/android/gtscell/data/GtsExpressionType;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, "exp_name"

    const-string v8, "exp_max"

    const-string v9, "exp_min"

    if-eq v4, v5, :cond_a

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    goto :goto_6

    .line 117
    :cond_5
    new-instance v4, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;

    invoke-direct {v4}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;-><init>()V

    .line 119
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_7

    :cond_6
    move v5, v1

    .line 118
    :goto_7
    invoke-virtual {v4, v5}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;->setProgress(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;

    move-result-object v4

    .line 123
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_8

    :cond_7
    move v5, v1

    .line 122
    :goto_8
    invoke-virtual {v4, v5}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;->setMin(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;

    move-result-object v4

    .line 126
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_9

    :cond_8
    move v5, v1

    .line 125
    :goto_9
    invoke-virtual {v4, v5}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;->setMax(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;

    move-result-object v4

    .line 128
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object v6, v3

    :cond_9
    invoke-virtual {v4, v6}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;->setName(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$ProgressExpressionBuilder;

    move-result-object v3

    .line 116
    invoke-virtual {p0, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->addSubExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    goto/16 :goto_6

    .line 97
    :cond_a
    new-instance v4, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;

    invoke-direct {v4}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;-><init>()V

    .line 99
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_b

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_a

    :cond_b
    move v5, v1

    .line 98
    :goto_a
    invoke-virtual {v4, v5}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->setLevel(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;

    move-result-object v4

    .line 103
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_c

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_b

    :cond_c
    move v5, v1

    .line 102
    :goto_b
    invoke-virtual {v4, v5}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->setMin(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;

    move-result-object v4

    .line 106
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_d

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_c

    :cond_d
    move v5, v1

    .line 105
    :goto_c
    invoke-virtual {v4, v5}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->setMax(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;

    move-result-object v4

    .line 109
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v5

    const-string v8, "exp_step"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_e

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_d

    :cond_e
    move v5, v1

    .line 108
    :goto_d
    invoke-virtual {v4, v5}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->setStep(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;

    move-result-object v4

    .line 112
    invoke-virtual {v3}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_f

    move-object v6, v3

    :cond_f
    invoke-virtual {v4, v6}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;->setName(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$LevelExpressionBuilder;

    move-result-object v3

    .line 96
    invoke-virtual {p0, v3}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->addSubExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    goto/16 :goto_6

    .line 136
    :cond_10
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;->getStoreContents()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_12

    check-cast p1, Ljava/lang/Iterable;

    .line 378
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gtscell/data/GtsStoreContents;

    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsStoreContents;->getPackages()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 379
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gtscell/data/GtsStorePackage;

    .line 138
    iget-object v3, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->storeContents:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsStoreContents;->getType()Lcom/samsung/android/gtscell/data/GtsStoreType;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsStorePackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/gtscell/data/GtsStorePackage;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;->getOrPut(Lcom/samsung/android/gtscell/data/GtsStoreType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_12
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->itemKey:Ljava/lang/String;

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->title:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->subTitle:Ljava/lang/String;

    .line 15
    new-instance p1, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-direct {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->subExpressions:Ljava/util/List;

    .line 17
    new-instance p1, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;

    invoke-direct {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->storeContents:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->version:I

    return-void
.end method

.method public static final synthetic access$getEnlargeableThumbnailSize$cp()I
    .locals 1

    .line 11
    sget v0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->enlargeableThumbnailSize:I

    return v0
.end method

.method public static final synthetic access$getThumbnailSize$cp()I
    .locals 1

    .line 11
    sget v0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->thumbnailSize:I

    return v0
.end method

.method public static final synthetic access$setEnlargeableThumbnailSize$cp(I)V
    .locals 0

    .line 11
    sput p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->enlargeableThumbnailSize:I

    return-void
.end method

.method public static final synthetic access$setThumbnailSize$cp(I)V
    .locals 0

    .line 11
    sput p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->thumbnailSize:I

    return-void
.end method

.method public static synthetic setIconExpression$default(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;Landroid/graphics/Bitmap;ZILjava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 181
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setIconExpression(Landroid/graphics/Bitmap;Z)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p0

    return-object p0
.end method

.method private final toGtsExpressionRawData(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 345
    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpressionType()Lcom/samsung/android/gtscell/data/GtsExpressionType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;-><init>(Lcom/samsung/android/gtscell/data/GtsExpressionType;Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public final addStoreContent(Lcom/samsung/android/gtscell/data/GtsStoreContent;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 3
    .param p1    # Lcom/samsung/android/gtscell/data/GtsStoreContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "storeContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->storeContents:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;

    .line 214
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsStoreContent;->getType()Lcom/samsung/android/gtscell/data/GtsStoreType;

    move-result-object v1

    .line 215
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsStoreContent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsStoreContent;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;->getOrPut(Lcom/samsung/android/gtscell/data/GtsStoreType;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final addSubExpression(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "subExpression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->subExpressions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 237
    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->itemKey:Ljava/lang/String;

    .line 238
    iget-object v2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->title:Ljava/lang/String;

    .line 239
    iget-object v3, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->subTitle:Ljava/lang/String;

    .line 240
    new-instance v4, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    .line 241
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpressionType()Lcom/samsung/android/gtscell/data/GtsExpressionType;

    move-result-object v0

    .line 242
    iget-object v5, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-virtual {v5}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 240
    invoke-direct {v4, v0, v5}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;-><init>(Lcom/samsung/android/gtscell/data/GtsExpressionType;Ljava/util/Map;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->subExpressions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 372
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1435
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 374
    check-cast v6, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;

    .line 245
    invoke-interface {v6}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$SubExpressionBuilder;->build()Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->toGtsExpressionRawData(Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->storeContents:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$StoreContentsDelegate;->toStoreContentsMap()Ljava/util/List;

    move-result-object v6

    .line 248
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 249
    iget-boolean v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->disabled:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v8, "exp_disabled"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget v8, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->version:I

    .line 236
    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;Ljava/util/List;Ljava/util/List;Ljava/util/Map;I)V

    return-object p0
.end method

.method public final disable()Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->disabled:Z

    return-object p0
.end method

.method public final getExpressionType()Lcom/samsung/android/gtscell/data/GtsExpressionType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-virtual {p0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpressionType()Lcom/samsung/android/gtscell/data/GtsExpressionType;

    move-result-object p0

    return-object p0
.end method

.method public final setColorExpression(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_COLOR:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->setExpressionType(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "exp_value"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setIconExpression(Landroid/graphics/Bitmap;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->setIconExpression(Landroid/graphics/Bitmap;Z)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final setIconExpression(Landroid/graphics/Bitmap;Z)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 6
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_ICON:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->setExpressionType(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 184
    sget v1, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->enlargeableThumbnailSize:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->thumbnailSize:I

    :goto_0
    invoke-static {p1, v1}, Lcom/samsung/android/gtscell/utils/GtsCellExKt;->toBase64String(Landroid/graphics/Bitmap;I)Ljava/lang/String;

    move-result-object p1

    .line 186
    sget-object v1, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v5, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "bitmap size = "

    invoke-interface {v1, v3, v2}, Lcom/samsung/android/gtscell/log/GLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "exp_value"

    .line 183
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p1

    .line 189
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "exp_enlargeable"

    .line 188
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 186
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    const-string/jumbo p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setIconUriExpression(Landroid/net/Uri;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_ICON_URI:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->setExpressionType(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "uri.toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "exp_value"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setIconUrlExpression(Ljava/lang/String;Z)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_URL:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->setExpressionType(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v0

    const-string v1, "exp_value"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object p1

    .line 203
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "exp_enlargeable"

    .line 202
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setMimeExpression()Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_MIME:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->setExpressionType(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V

    return-object p0
.end method

.method public final setMimeIconExpression(Lcom/samsung/android/gtscell/data/GtsMimeType;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 2
    .param p1    # Lcom/samsung/android/gtscell/data/GtsMimeType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "mimeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_MIME_ICON:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->setExpressionType(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "exp_value"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setOnOffExpression(Z)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_BOOLEAN:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->setExpressionType(Lcom/samsung/android/gtscell/data/GtsExpressionType;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->expression:Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder$GtsExpressionData;->getExpression()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "exp_value"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setSubTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final setVersion(I)Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 227
    iput p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionBuilder;->version:I

    return-object p0
.end method
