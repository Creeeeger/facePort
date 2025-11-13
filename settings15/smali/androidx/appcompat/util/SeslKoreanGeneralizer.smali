.class public final Landroidx/appcompat/util/SeslKoreanGeneralizer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final HAS_JOSA_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final JOSA_KOREAN_MAP:Ljava/util/Map;

.field public final PRONOUNCEABLE_SYMBOLS:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?s)(.*)\\((.+)\\)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->HAS_JOSA_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/util/SeslKoreanGeneralizer$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/util/SeslKoreanGeneralizer$1;-><init>(Landroidx/appcompat/util/SeslKoreanGeneralizer;)V

    iput-object v0, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->JOSA_KOREAN_MAP:Ljava/util/Map;

    new-instance v0, Landroidx/appcompat/util/SeslKoreanGeneralizer$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/util/SeslKoreanGeneralizer$2;-><init>(Landroidx/appcompat/util/SeslKoreanGeneralizer;)V

    iput-object v0, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->PRONOUNCEABLE_SYMBOLS:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final naturalizeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object p1, v1

    goto/16 :goto_8

    :cond_0
    sget-object v0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->HAS_JOSA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_11

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->JOSA_KOREAN_MAP:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_3
    move-object v7, v8

    :goto_1
    const/4 v5, 0x1

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->JOSA_KOREAN_MAP:Ljava/util/Map;

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v9, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->JOSA_KOREAN_MAP:Ljava/util/Map;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const-string v10, "(\uc73c)\ub85c"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v10, v2

    goto :goto_3

    :cond_5
    move-object v6, v1

    move-object v7, v6

    move-object v9, v7

    goto :goto_2

    :goto_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_6
    const v12, 0xac00

    if-gt v12, v4, :cond_a

    const v13, 0xd7a3

    if-gt v4, v13, :cond_a

    sub-int v12, v4, v12

    rem-int/lit8 v12, v12, 0x1c

    if-eqz v10, :cond_8

    if-eqz v12, :cond_7

    const/16 v13, 0x8

    if-ne v12, v13, :cond_8

    :cond_7
    move v12, v2

    :cond_8
    if-lez v12, :cond_9

    move v12, v5

    goto :goto_4

    :cond_9
    move v12, v2

    :goto_4
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_5

    :cond_a
    move-object v12, v8

    :goto_5
    if-nez v12, :cond_d

    iget-object v12, p0, Landroidx/appcompat/util/SeslKoreanGeneralizer;->PRONOUNCEABLE_SYMBOLS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    if-eqz v12, :cond_c

    iget-object v8, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz v10, :cond_b

    xor-int/lit8 v8, v8, 0x1

    :cond_b
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :cond_c
    move-object v12, v8

    :cond_d
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_6

    :cond_e
    move-object v6, v9

    :goto_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    add-int/2addr v3, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    goto :goto_7

    :cond_f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    const-string v6, "()[]<>{};:|`\'\"\\.=!?&\u3002 \u2661\u2665\u2026\u00ab\u00bb\u2018\u2019\u201a\u201b\u201c\u201d\u201e\u201f\u2039\u203a\u275b\u275c\u275d\u275e\u301d\u301e\u301f\uff02\uff07"

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_10

    move v4, v11

    :cond_10
    add-int/2addr v3, v5

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_8
    return-object p1
.end method
