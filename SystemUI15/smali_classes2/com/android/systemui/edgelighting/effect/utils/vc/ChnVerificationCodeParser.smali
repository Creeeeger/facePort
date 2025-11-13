.class public final Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;
.super Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCodeBehindEndIndex:I

.field public mCodeBehindStartIndex:I

.field public mCodeFrontEndIndex:I

.field public mCodeFrontStartIndex:I

.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/edgelighting/effect/utils/vc/VerificationCodeParserBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindStartIndex:I

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindEndIndex:I

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontStartIndex:I

    iput v0, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontEndIndex:I

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getVerificationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "isVerificationCode() is false"

    const/4 v4, 0x0

    const-string v5, "ORC/ChnVerificationCodeParser"

    if-eqz v0, :cond_0

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0300b0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0300af

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    iput v8, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontStartIndex:I

    iput v8, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontEndIndex:I

    iput v8, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindStartIndex:I

    iput v8, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindEndIndex:I

    array-length v9, v6

    move-object v0, v4

    move v12, v8

    const/4 v11, 0x0

    :goto_0
    const-string v13, "-"

    const-string v15, "[0-9]{4,}"

    const/4 v4, 0x4

    if-ge v11, v9, :cond_b

    aget-object v10, v6, v11

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v18, v2

    move/from16 v22, v17

    move/from16 v17, v12

    move/from16 v12, v22

    :goto_1
    if-eq v12, v8, :cond_a

    if-nez v0, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-le v8, v14, :cond_9

    move-object/from16 v8, v18

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v14, v4, :cond_2

    const/4 v14, 0x3

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v4, 0xff01

    if-ne v14, v4, :cond_2

    :cond_1
    move/from16 v19, v9

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_2
    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    :goto_3
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    move/from16 v19, v9

    const/4 v9, 0x4

    if-lt v14, v9, :cond_4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v14, 0x7

    if-gt v9, v14, :cond_4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    add-int/2addr v9, v12

    iput v9, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindStartIndex:I

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    add-int/2addr v9, v12

    iput v9, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindEndIndex:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "mCodeBehindStartIndex = "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindStartIndex:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "mCodeBehindEndIndex = "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindEndIndex:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    if-le v9, v14, :cond_3

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "getBehindCode return null code"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_4

    :cond_4
    move/from16 v9, v19

    goto :goto_3

    :goto_4
    :try_start_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v12

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    array-length v14, v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v4

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v14, :cond_6

    move/from16 v20, v12

    :try_start_1
    aget-object v12, v7, v4

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v21, v9

    const/4 v9, -0x1

    if-eq v12, v9, :cond_5

    :try_start_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v17, 0x0

    goto :goto_6

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_9

    :cond_5
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v20

    move-object/from16 v9, v21

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v9, -0x1

    move-object/from16 v4, v17

    goto :goto_9

    :cond_6
    move/from16 v20, v12

    const/4 v9, -0x1

    move-object v4, v0

    move-object/from16 v0, v17

    goto :goto_8

    :catch_2
    move-exception v0

    move/from16 v20, v12

    const/4 v9, -0x1

    goto :goto_9

    :cond_7
    move/from16 v20, v12

    :goto_7
    move-object/from16 v22, v4

    move-object v4, v0

    move-object/from16 v0, v22

    goto :goto_8

    :cond_8
    move/from16 v20, v12

    const/4 v9, -0x1

    :try_start_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :goto_8
    move-object/from16 v18, v4

    move v12, v8

    move v8, v9

    move/from16 v9, v19

    move/from16 v17, v20

    const/4 v4, 0x4

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :goto_9
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    move/from16 v12, v20

    goto :goto_b

    :cond_9
    move/from16 v19, v9

    const/4 v9, -0x1

    goto :goto_a

    :cond_a
    move/from16 v19, v9

    move v9, v8

    :goto_a
    move/from16 v12, v17

    :goto_b
    add-int/lit8 v11, v11, 0x1

    move v8, v9

    move/from16 v9, v19

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    array-length v4, v6

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_c
    if-ge v14, v4, :cond_10

    aget-object v9, v6, v14

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_f

    const/4 v11, 0x0

    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v15}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    const/16 v16, 0x0

    :goto_d
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v11, v10, :cond_d

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x7

    if-gt v10, v11, :cond_d

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    iput v10, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontStartIndex:I

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    iput v10, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontEndIndex:I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mCodeFrontStartIndex = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontStartIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mCodeFrontEndIndex = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeFrontEndIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    if-le v10, v11, :cond_c

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v8, "getFrontCode return null code"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_e

    :cond_c
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v16

    :cond_d
    const/4 v10, 0x4

    const/4 v11, 0x0

    goto :goto_d

    :cond_e
    move-object/from16 v8, v16

    :goto_e
    move v12, v9

    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_c

    :cond_10
    array-length v4, v7

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v4, :cond_12

    aget-object v9, v7, v10

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-le v9, v12, :cond_11

    iget v11, v1, Lcom/android/systemui/edgelighting/effect/utils/vc/ChnVerificationCodeParser;->mCodeBehindStartIndex:I

    if-le v11, v9, :cond_11

    const/4 v6, 0x1

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_12
    const-string v1, "KEY_STRONGLY_STR FrontCode= "

    const-string v2, "isVerificationCode() is true"

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "KEY_STRONGLY_STR BehindCode= "

    const/4 v7, 0x4

    if-ne v7, v3, :cond_13

    const/4 v3, 0x1

    if-ne v6, v3, :cond_14

    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x6

    if-ne v6, v3, :cond_15

    :cond_14
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_15
    if-eqz v8, :cond_17

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x4

    if-eq v7, v3, :cond_16

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v6, v3, :cond_17

    :cond_16
    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_17
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_18
    if-eqz v8, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_19
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method
