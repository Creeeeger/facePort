.class public abstract Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field public static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "chars"

    const-string v10, "markers"

    const-string/jumbo v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string v3, "op"

    const-string v4, "fr"

    const-string/jumbo v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    const-string v5, "p"

    const-string/jumbo v6, "u"

    const-string v1, "id"

    const-string v2, "layers"

    const-string/jumbo v3, "w"

    const-string v4, "h"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    const-string v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    const-string/jumbo v0, "tm"

    const-string v1, "dr"

    const-string v2, "cm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;)Lcom/airbnb/lottie/LottieComposition;
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    new-instance v3, Landroidx/collection/LongSparseArray;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Landroidx/collection/SparseArrayCompat;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    new-instance v12, Lcom/airbnb/lottie/LottieComposition;

    invoke-direct {v12}, Lcom/airbnb/lottie/LottieComposition;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v13, 0x0

    move/from16 v16, v11

    move/from16 v17, v16

    move v14, v13

    move v15, v14

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2a

    sget-object v4, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    const/4 v11, 0x2

    packed-switch v4, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    :goto_1
    move-object/from16 v22, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v19, v13

    move/from16 v24, v14

    move/from16 v23, v15

    move v8, v1

    goto/16 :goto_17

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->MARKER_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    if-eqz v4, :cond_2

    if-eq v4, v1, :cond_1

    if-eq v4, v11, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    goto :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    goto :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v4, Lcom/airbnb/lottie/model/Marker;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const-wide/16 v20, 0x0

    move-wide/from16 v23, v20

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e

    sget-object v11, Lcom/airbnb/lottie/parser/FontCharacterParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v11}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v11

    if-eqz v11, :cond_d

    if-eq v11, v1, :cond_c

    const/4 v1, 0x2

    if-eq v11, v1, :cond_b

    const/4 v1, 0x3

    if-eq v11, v1, :cond_a

    const/4 v1, 0x4

    if-eq v11, v1, :cond_9

    const/4 v1, 0x5

    if-eq v11, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_8

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/airbnb/lottie/parser/FontCharacterParser;->DATA_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_6

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0, v12}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/content/ShapeGroup;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_6

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    :goto_8
    const/4 v1, 0x1

    const/4 v11, 0x2

    goto :goto_5

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v26

    goto :goto_8

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v25

    goto :goto_8

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v23

    goto :goto_8

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v22

    goto :goto_8

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v1, Lcom/airbnb/lottie/model/FontCharacter;

    move-object/from16 v20, v1

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v26}, Lcom/airbnb/lottie/model/FontCharacter;-><init>(Ljava/util/List;CDLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v4

    invoke-virtual {v10, v4, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v11, 0x2

    goto/16 :goto_4

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    move-object/from16 v22, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    :goto_9
    move/from16 v19, v13

    move/from16 v24, v14

    move/from16 v23, v15

    :goto_a
    const/4 v8, 0x1

    goto/16 :goto_17

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->FONT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    goto :goto_b

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_15

    move-object/from16 v20, v9

    sget-object v9, Lcom/airbnb/lottie/parser/FontParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v9}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v9

    if-eqz v9, :cond_14

    move-object/from16 v21, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_13

    const/4 v10, 0x2

    if-eq v9, v10, :cond_12

    const/4 v10, 0x3

    if-eq v9, v10, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    :goto_e
    move-object/from16 v9, v20

    move-object/from16 v10, v21

    goto :goto_d

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    goto :goto_e

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v11

    goto :goto_e

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_14
    move-object/from16 v21, v10

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, v20

    goto :goto_d

    :cond_15
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    new-instance v9, Lcom/airbnb/lottie/model/Font;

    invoke-direct {v9, v1, v4, v11}, Lcom/airbnb/lottie/model/Font;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    goto :goto_c

    :cond_16
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto :goto_b

    :cond_17
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    move-object/from16 v22, v8

    goto/16 :goto_9

    :pswitch_3
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroidx/collection/LongSparseArray;

    const/4 v9, 0x0

    invoke-direct {v4, v9}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginObject()V

    move-object/from16 v22, v8

    move-object v8, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1f

    move/from16 v23, v15

    sget-object v15, Lcom/airbnb/lottie/parser/LottieCompositionMoshiParser;->ASSETS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v15}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v15

    if-eqz v15, :cond_1e

    move/from16 v24, v14

    const/4 v14, 0x1

    if-eq v15, v14, :cond_1c

    const/4 v14, 0x2

    if-eq v15, v14, :cond_1b

    const/4 v14, 0x3

    if-eq v15, v14, :cond_1a

    const/4 v14, 0x4

    if-eq v15, v14, :cond_19

    const/4 v14, 0x5

    if-eq v15, v14, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->skipValue()V

    move/from16 v19, v13

    goto :goto_13

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    :goto_11
    move/from16 v15, v23

    move/from16 v14, v24

    goto :goto_10

    :cond_19
    const/4 v14, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    :cond_1a
    const/4 v14, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v11

    goto :goto_11

    :cond_1b
    const/4 v14, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v10

    goto :goto_11

    :cond_1c
    const/4 v14, 0x5

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-static {v0, v12}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v15

    move/from16 v19, v13

    iget-wide v13, v15, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    invoke-virtual {v4, v13, v14, v15}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v13, v19

    const/4 v14, 0x5

    goto :goto_12

    :cond_1d
    move/from16 v19, v13

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    :goto_13
    move/from16 v13, v19

    goto :goto_11

    :cond_1e
    move/from16 v19, v13

    move/from16 v24, v14

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v8

    move/from16 v15, v23

    goto :goto_10

    :cond_1f
    move/from16 v19, v13

    move/from16 v24, v14

    move/from16 v23, v15

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endObject()V

    if-eqz v9, :cond_20

    new-instance v1, Lcom/airbnb/lottie/LottieImageAsset;

    invoke-direct {v1, v10, v11, v8, v9}, Lcom/airbnb/lottie/LottieImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_20
    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    move/from16 v13, v19

    move-object/from16 v8, v22

    move/from16 v15, v23

    move/from16 v14, v24

    goto/16 :goto_f

    :cond_21
    move-object/from16 v22, v8

    move/from16 v19, v13

    move/from16 v24, v14

    move/from16 v23, v15

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto/16 :goto_a

    :pswitch_4
    move-object/from16 v22, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v19, v13

    move/from16 v24, v14

    move/from16 v23, v15

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->beginArray()V

    const/4 v1, 0x0

    :cond_22
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {v0, v12}, Lcom/airbnb/lottie/parser/LayerParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v4

    sget-object v8, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->IMAGE:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    iget-object v9, v4, Lcom/airbnb/lottie/model/layer/Layer;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-ne v9, v8, :cond_23

    const/4 v8, 0x1

    add-int/2addr v1, v8

    :cond_23
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v4, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    invoke-virtual {v3, v8, v9, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v4, 0x4

    if-le v1, v4, :cond_22

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "You have "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    goto :goto_15

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->endArray()V

    goto/16 :goto_a

    :pswitch_5
    move-object/from16 v22, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v19, v13

    move/from16 v24, v14

    move/from16 v23, v15

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v8, v1, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x1

    aget-object v9, v1, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    aget-object v1, v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v10, 0x4

    if-ge v4, v10, :cond_25

    goto :goto_16

    :cond_25
    if-le v4, v10, :cond_26

    goto :goto_17

    :cond_26
    if-ge v9, v10, :cond_27

    goto :goto_16

    :cond_27
    if-le v9, v10, :cond_28

    goto :goto_17

    :cond_28
    if-ltz v1, :cond_29

    goto :goto_17

    :cond_29
    :goto_16
    const-string v1, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v12, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :goto_17
    move v1, v8

    move/from16 v13, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v8, v22

    move/from16 v15, v23

    move/from16 v14, v24

    :goto_18
    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v22, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v19, v13

    move/from16 v24, v14

    move v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v9

    double-to-float v15, v9

    :goto_19
    move-object/from16 v9, v20

    move-object/from16 v10, v21

    :goto_1a
    move-object/from16 v8, v22

    goto :goto_18

    :pswitch_7
    move-object/from16 v22, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v19, v13

    move/from16 v23, v15

    move v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v9

    double-to-float v1, v9

    const v4, 0x3c23d70a    # 0.01f

    sub-float v14, v1, v4

    move v1, v8

    goto :goto_19

    :pswitch_8
    move-object/from16 v22, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v24, v14

    move/from16 v23, v15

    move v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextDouble()D

    move-result-wide v9

    double-to-float v13, v9

    goto :goto_19

    :pswitch_9
    move-object/from16 v22, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v19, v13

    move/from16 v24, v14

    move/from16 v23, v15

    move v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v17

    goto :goto_1a

    :pswitch_a
    move-object/from16 v22, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v19, v13

    move/from16 v24, v14

    move/from16 v23, v15

    move v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonUtf8Reader;->nextInt()I

    move-result v16

    goto :goto_1a

    :cond_2a
    move-object/from16 v22, v8

    move-object/from16 v21, v10

    move/from16 v19, v13

    move/from16 v24, v14

    move/from16 v23, v15

    move/from16 v11, v16

    int-to-float v0, v11

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move/from16 v11, v17

    int-to-float v1, v11

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v12, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    move/from16 v13, v19

    iput v13, v12, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    move/from16 v13, v24

    iput v13, v12, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    move/from16 v15, v23

    iput v15, v12, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    iput-object v5, v12, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    iput-object v3, v12, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    iput-object v6, v12, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    iput-object v7, v12, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/airbnb/lottie/LottieComposition;->characters:Landroidx/collection/SparseArrayCompat;

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    return-object v12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
