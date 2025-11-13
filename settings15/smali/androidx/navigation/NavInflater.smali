.class public final Landroidx/navigation/NavInflater;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sTmpValue:Ljava/lang/ThreadLocal;


# instance fields
.field public final context:Landroid/content/Context;

.field public final navigatorProvider:Landroidx/navigation/NavigatorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigatorProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavInflater;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/navigation/NavInflater;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-void
.end method

.method public static inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Landroidx/navigation/NavArgument$Builder;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v1, Landroidx/navigation/NavArgument$Builder;->isNullable:Z

    sget-object v4, Landroidx/navigation/NavInflater;->sTmpValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/TypedValue;

    if-nez v5, :cond_0

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroidx/navigation/NavType;->ReferenceType:Landroidx/navigation/NavType$Companion$IntType$1;

    sget-object v8, Landroidx/navigation/NavType;->LongType:Landroidx/navigation/NavType$Companion$IntType$1;

    sget-object v9, Landroidx/navigation/NavType;->StringType:Landroidx/navigation/NavType$Companion$IntType$1;

    sget-object v10, Landroidx/navigation/NavType;->BoolType:Landroidx/navigation/NavType$Companion$IntType$1;

    sget-object v11, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType$Companion$IntType$1;

    sget-object v12, Landroidx/navigation/NavType;->IntType:Landroidx/navigation/NavType$Companion$IntType$1;

    const-string v13, "boolean"

    const-string v14, "integer"

    const-string v15, "float"

    const/16 v16, 0x0

    if-eqz v6, :cond_15

    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " is not Serializable or Parcelable."

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v19, v1

    move-object/from16 v17, v8

    move-object v2, v12

    :goto_0
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_1
    const-string v4, "integer[]"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Landroidx/navigation/NavType;->IntArrayType:Landroidx/navigation/NavType$Companion$IntListType$1;

    :goto_1
    move-object/from16 v19, v1

    :goto_2
    move-object/from16 v17, v8

    goto :goto_0

    :cond_2
    const-string v4, "List<Int>"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v2, Landroidx/navigation/NavType;->IntListType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto :goto_1

    :cond_3
    const-string v4, "long"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v19, v1

    move-object v2, v8

    move-object/from16 v17, v2

    goto :goto_0

    :cond_4
    const-string v4, "long[]"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v2, Landroidx/navigation/NavType;->LongArrayType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto :goto_1

    :cond_5
    const-string v4, "List<Long>"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v2, Landroidx/navigation/NavType;->LongListType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto :goto_1

    :cond_6
    invoke-virtual {v13, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v19, v1

    move-object/from16 v17, v8

    move-object v2, v10

    goto :goto_0

    :cond_7
    const-string v4, "boolean[]"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v2, Landroidx/navigation/NavType;->BoolArrayType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto :goto_1

    :cond_8
    const-string v4, "List<Boolean>"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v2, Landroidx/navigation/NavType;->BoolListType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto :goto_1

    :cond_9
    const-string/jumbo v4, "string"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_3
    move-object/from16 v19, v1

    move-object/from16 v17, v8

    move-object v2, v9

    goto :goto_0

    :cond_a
    const-string/jumbo v4, "string[]"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v2, Landroidx/navigation/NavType;->StringArrayType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto :goto_1

    :cond_b
    const-string v4, "List<String>"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v2, Landroidx/navigation/NavType;->StringListType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto :goto_1

    :cond_c
    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v19, v1

    move-object/from16 v17, v8

    move-object v2, v11

    goto/16 :goto_0

    :cond_d
    const-string v4, "float[]"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v2, Landroidx/navigation/NavType;->FloatArrayType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto/16 :goto_1

    :cond_e
    const-string v4, "List<Float>"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v2, Landroidx/navigation/NavType;->FloatListType:Landroidx/navigation/NavType$Companion$IntListType$1;

    goto/16 :goto_1

    :cond_f
    const-string v4, "reference"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v19, v1

    move-object v2, v7

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_11

    goto :goto_3

    :cond_11
    :try_start_0
    const-string v4, "."

    invoke-static {v6, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_12
    move-object v2, v6

    :goto_4
    const-string v4, "[]"

    invoke-static {v6, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v19, v1

    const/16 v17, 0x2

    add-int/lit8 v1, v18, -0x2

    move-object/from16 v17, v8

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "substring(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_13
    move-object/from16 v19, v1

    move-object/from16 v17, v8

    const/4 v8, 0x0

    :goto_5
    invoke-static {v2, v4}, Landroidx/navigation/NavType$Companion;->parseSerializableOrParcelableType$navigation_common_release(Ljava/lang/String;Z)Landroidx/navigation/NavType;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object v2, v1

    goto :goto_7

    :cond_14
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_15
    move-object/from16 v19, v1

    move-object/from16 v17, v8

    move v8, v3

    move-object/from16 v2, v16

    :goto_7
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "\' for "

    const-string/jumbo v4, "unsupported value \'"

    const/16 v8, 0x10

    if-ne v2, v7, :cond_19

    iget v0, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_16

    move v3, v0

    goto :goto_8

    :cond_16
    iget v0, v5, Landroid/util/TypedValue;->type:I

    if-ne v0, v8, :cond_18

    iget v0, v5, Landroid/util/TypedValue;->data:I

    if-nez v0, :cond_18

    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    :cond_17
    :goto_9
    move-object v7, v2

    :goto_a
    move-object/from16 v0, v16

    goto/16 :goto_e

    :cond_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Must be a reference to a resource."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_1b

    if-nez v2, :cond_1a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto :goto_a

    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/navigation/NavType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". You must use a \"reference\" type to reference other resources."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    if-ne v2, v9, :cond_1c

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_9

    :cond_1c
    iget v0, v5, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_23

    const/4 v3, 0x4

    if-eq v0, v3, :cond_22

    const/4 v3, 0x5

    if-eq v0, v3, :cond_21

    const/16 v3, 0x12

    if-eq v0, v3, :cond_1f

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1e

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_1e

    if-ne v2, v11, :cond_1d

    invoke-static {v5, v2, v11, v6, v15}, Landroidx/navigation/NavInflater$Companion;->checkNavType$navigation_runtime_release(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v7

    iget v0, v5, Landroid/util/TypedValue;->data:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    goto/16 :goto_a

    :cond_1d
    invoke-static {v5, v2, v12, v6, v14}, Landroidx/navigation/NavInflater$Companion;->checkNavType$navigation_runtime_release(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v7

    iget v0, v5, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_a

    :cond_1e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unsupported argument type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v5, Landroid/util/TypedValue;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static {v5, v2, v10, v6, v13}, Landroidx/navigation/NavInflater$Companion;->checkNavType$navigation_runtime_release(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v7

    iget v0, v5, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_20

    move v3, v1

    goto :goto_b

    :cond_20
    const/4 v3, 0x0

    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto/16 :goto_a

    :cond_21
    const-string v0, "dimension"

    invoke-static {v5, v2, v12, v6, v0}, Landroidx/navigation/NavInflater$Companion;->checkNavType$navigation_runtime_release(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto/16 :goto_a

    :cond_22
    invoke-static {v5, v2, v11, v6, v15}, Landroidx/navigation/NavInflater$Companion;->checkNavType$navigation_runtime_release(Landroid/util/TypedValue;Landroidx/navigation/NavType;Landroidx/navigation/NavType;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object v7

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    goto/16 :goto_a

    :cond_23
    iget-object v0, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_24

    const-string/jumbo v2, "value"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v12, v0}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v12

    goto :goto_c

    :catch_1
    move-object/from16 v2, v17

    :try_start_2
    invoke-virtual {v2, v0}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v8, v2

    goto :goto_c

    :catch_2
    :try_start_3
    invoke-virtual {v11, v0}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v8, v11

    goto :goto_c

    :catch_3
    :try_start_4
    invoke-virtual {v10, v0}, Landroidx/navigation/NavType$Companion$IntType$1;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v8, v10

    goto :goto_c

    :catch_4
    move-object v8, v9

    :goto_c
    move-object v7, v8

    goto :goto_d

    :cond_24
    move-object v7, v2

    :goto_d
    invoke-virtual {v7, v0}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    goto/16 :goto_a

    :goto_e
    move-object/from16 v2, v19

    if-eqz v0, :cond_25

    iput-object v0, v2, Landroidx/navigation/NavArgument$Builder;->defaultValue:Ljava/lang/Object;

    iput-boolean v1, v2, Landroidx/navigation/NavArgument$Builder;->defaultValuePresent:Z

    :cond_25
    if-eqz v7, :cond_26

    iput-object v7, v2, Landroidx/navigation/NavArgument$Builder;->type:Landroidx/navigation/NavType;

    :cond_26
    invoke-virtual {v2}, Landroidx/navigation/NavArgument$Builder;->build()Landroidx/navigation/NavArgument;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "parser.name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Landroidx/navigation/NavInflater;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v5, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/navigation/Navigator;->createDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    iget-object v5, v0, Landroidx/navigation/NavInflater;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v2}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    if-eq v7, v6, :cond_1a

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    const/4 v9, 0x3

    if-ge v8, v5, :cond_0

    if-eq v7, v9, :cond_1a

    :cond_0
    const/4 v10, 0x2

    if-eq v7, v10, :cond_1

    goto :goto_0

    :cond_1
    if-le v8, v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "argument"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    sget-object v12, Landroidx/navigation/common/R$styleable;->NavArgument:[I

    const-string v13, "Arguments must have a name"

    const-string v14, "res.obtainAttributes(att\u2026 R.styleable.NavArgument)"

    const/4 v15, 0x0

    if-eqz v11, :cond_4

    invoke-virtual {v1, v2, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {v7, v1, v3}, Landroidx/navigation/NavInflater;->inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;

    move-result-object v9

    iget-object v10, v4, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v11, "deepLink"

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    sget-object v7, Landroidx/navigation/common/R$styleable;->NavDeepLink:[I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const-string v8, "res.obtainAttributes(att\u2026 R.styleable.NavDeepLink)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_7

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_d

    :cond_7
    const/4 v11, 0x0

    const-string v12, "${applicationId}"

    const-string v13, "context.packageName"

    if-eqz v8, :cond_8

    iget-object v14, v0, Landroidx/navigation/NavInflater;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v12, v14}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_8
    move-object v8, v11

    :goto_1
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_9

    goto :goto_2

    :cond_9
    iget-object v14, v0, Landroidx/navigation/NavInflater;->context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v12, v14}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The NavDeepLink cannot have an empty action."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_2
    move-object v9, v11

    :goto_3
    if-eqz v10, :cond_c

    iget-object v11, v0, Landroidx/navigation/NavInflater;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v12, v11}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_c
    new-instance v10, Landroidx/navigation/NavDeepLink;

    invoke-direct {v10, v8, v9, v11}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroidx/navigation/NavDestination;->addDeepLink(Landroidx/navigation/NavDeepLink;)V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Every <deepLink> must include at least one of app:uri, app:action, or app:mimeType"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v11, "action"

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v7, v0, Landroidx/navigation/NavInflater;->context:Landroid/content/Context;

    sget-object v11, Landroidx/navigation/common/R$styleable;->NavAction:[I

    invoke-virtual {v7, v2, v11, v15, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-virtual {v7, v15, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {v7, v6, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    new-instance v6, Landroidx/navigation/NavAction;

    invoke-direct {v6, v9}, Landroidx/navigation/NavAction;-><init>(I)V

    const/4 v9, 0x4

    invoke-virtual {v7, v9, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    const/16 v9, 0xa

    invoke-virtual {v7, v9, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    const/4 v9, 0x7

    const/4 v10, -0x1

    invoke-virtual {v7, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    const/16 v9, 0x8

    invoke-virtual {v7, v9, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    const/16 v9, 0x9

    invoke-virtual {v7, v9, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    const/4 v9, 0x3

    invoke-virtual {v7, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    const/4 v9, 0x5

    invoke-virtual {v7, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    const/4 v9, 0x6

    invoke-virtual {v7, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    new-instance v9, Landroidx/navigation/NavOptions;

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v26}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    iput-object v9, v6, Landroidx/navigation/NavAction;->navOptions:Landroidx/navigation/NavOptions;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    const/4 v15, 0x1

    add-int/2addr v10, v15

    move/from16 v16, v5

    :goto_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    if-eq v5, v15, :cond_15

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-ge v15, v10, :cond_f

    const/4 v0, 0x3

    if-eq v5, v0, :cond_15

    :cond_f
    const/4 v0, 0x2

    if-eq v5, v0, :cond_10

    :goto_5
    const/4 v15, 0x1

    move-object/from16 v0, p0

    goto :goto_4

    :cond_10
    if-le v15, v10, :cond_11

    goto :goto_5

    :cond_11
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v1, v2, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v5, v1, v3}, Landroidx/navigation/NavInflater;->inflateArgument(Landroid/content/res/TypedArray;Landroid/content/res/Resources;I)Landroidx/navigation/NavArgument;

    move-result-object v15

    iget-boolean v3, v15, Landroidx/navigation/NavArgument;->isDefaultValuePresent:Z

    if-eqz v3, :cond_12

    if-eqz v3, :cond_12

    iget-object v3, v15, Landroidx/navigation/NavArgument;->defaultValue:Ljava/lang/Object;

    if-eqz v3, :cond_12

    iget-object v15, v15, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    invoke-virtual {v15, v9, v0, v3}, Landroidx/navigation/NavType;->put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_13
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p4

    goto :goto_4

    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {v9}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iput-object v9, v6, Landroidx/navigation/NavAction;->defaultArguments:Landroid/os/Bundle;

    :cond_16
    invoke-virtual {v4, v11, v6}, Landroidx/navigation/NavDestination;->putAction(ILandroidx/navigation/NavAction;)V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v3, p4

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_17
    move/from16 v16, v5

    const-string v0, "include"

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    instance-of v0, v4, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_19

    sget-object v0, Landroidx/navigation/R$styleable;->NavInclude:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v3, "res.obtainAttributes(att\u2026n.R.styleable.NavInclude)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavGraph;

    move-object/from16 v6, p0

    invoke-virtual {v6, v3}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_18
    :goto_6
    move/from16 v3, p4

    move-object v0, v6

    move/from16 v5, v16

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_19
    move-object/from16 v6, p0

    instance-of v0, v4, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_18

    move-object v0, v4

    check-cast v0, Landroidx/navigation/NavGraph;

    invoke-virtual/range {p0 .. p4}, Landroidx/navigation/NavInflater;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    goto :goto_6

    :cond_1a
    return-object v4
.end method

.method public final inflate(I)Landroidx/navigation/NavGraph;
    .locals 6

    iget-object v0, p0, Landroidx/navigation/NavInflater;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const-string v2, "res.getXml(graphResId)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    :cond_1
    if-ne v3, v4, :cond_3

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "attrs"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/navigation/NavInflater;->inflate(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;I)Landroidx/navigation/NavDestination;

    move-result-object p0

    instance-of v2, p0, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_2

    check-cast p0, Landroidx/navigation/NavGraph;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root element <"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> did not inflate into a NavGraph"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception inflating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " line "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0
.end method
