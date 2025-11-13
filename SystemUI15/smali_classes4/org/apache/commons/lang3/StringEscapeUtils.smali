.class public final Lorg/apache/commons/lang3/StringEscapeUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

.field public static final UNESCAPE_JAVA:Lorg/apache/commons/lang3/text/translate/AggregateTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const-string v1, "\""

    const-string v2, "\\\""

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "\\\\"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3, v6}, [[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    sget-object v6, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE:[[Ljava/lang/String;

    invoke-virtual {v6}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    filled-new-array {v3}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v3

    const/4 v7, 0x2

    new-array v8, v7, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-static {v3, v9, v8, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    invoke-direct {v3, v8}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v8, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    const/16 v10, 0x20

    const/16 v11, 0x7f

    invoke-direct {v8, v10, v11, v9}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;-><init>(IIZ)V

    filled-new-array {v8}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v8

    new-array v7, v7, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object v3, v7, v9

    invoke-static {v8, v9, v7, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    invoke-direct {v3, v7}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v7, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const-string v8, "\'"

    const-string v12, "\\\'"

    filled-new-array {v8, v12}, [Ljava/lang/String;

    move-result-object v13

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v14

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v15

    const-string v0, "/"

    const-string v9, "\\/"

    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v10

    filled-new-array {v13, v14, v15, v10}, [[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v10, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v6}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Ljava/lang/String;

    invoke-direct {v10, v13}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v13, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    const/4 v14, 0x0

    const/16 v15, 0x20

    invoke-direct {v13, v15, v11, v14}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;-><init>(IIZ)V

    filled-new-array {v7, v10, v13}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v7, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v10

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v13

    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v13, v0}, [[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v0, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v6}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/String;

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-direct {v6, v10, v11, v9}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;-><init>(IIZ)V

    filled-new-array {v7, v0, v6}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v3, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    sget-object v6, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE:[[Ljava/lang/String;

    invoke-virtual {v6}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v7, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    sget-object v9, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE:[[Ljava/lang/String;

    invoke-virtual {v9}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/String;

    invoke-direct {v7, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    filled-new-array {v3, v7}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v6}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v7, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v9}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Ljava/lang/String;

    invoke-direct {v7, v10}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v10, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    const-string v13, "\u0000"

    const-string v14, ""

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v16

    const-string v15, "\u0001"

    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v17

    const-string v15, "\u0002"

    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v18

    const-string v15, "\u0003"

    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v19

    const-string v15, "\u0004"

    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v20

    const-string v15, "\u0005"

    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v21

    const-string v15, "\u0006"

    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v22

    const-string v15, "\u0007"

    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v23

    const-string v15, "\u0008"

    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v24

    const-string v15, "\u000b"

    filled-new-array {v15, v14}, [Ljava/lang/String;

    move-result-object v25

    const-string v11, "\u000c"

    filled-new-array {v11, v14}, [Ljava/lang/String;

    move-result-object v26

    move-object/from16 v47, v8

    const-string v8, "\u000e"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v27

    const-string v8, "\u000f"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v28

    const-string v8, "\u0010"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v29

    const-string v8, "\u0011"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v30

    const-string v8, "\u0012"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v31

    const-string v8, "\u0013"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v32

    const-string v8, "\u0014"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v33

    const-string v8, "\u0015"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v34

    const-string v8, "\u0016"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v35

    const-string v8, "\u0017"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v36

    const-string v8, "\u0018"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v37

    const-string v8, "\u0019"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v38

    const-string v8, "\u001a"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v39

    const-string v8, "\u001b"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v40

    const-string v8, "\u001c"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v41

    const-string v8, "\u001d"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v42

    const-string v8, "\u001e"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v43

    const-string v8, "\u001f"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v44

    const-string v8, "\ufffe"

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v45

    move-object/from16 v48, v12

    const-string v12, "\uffff"

    filled-new-array {v12, v14}, [Ljava/lang/String;

    move-result-object v46

    move-object/from16 v49, v1

    filled-new-array/range {v16 .. v46}, [[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/16 v1, 0x84

    move-object/from16 v22, v2

    const/16 v2, 0x7f

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v19

    const/16 v2, 0x86

    const/16 v1, 0x9f

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v20

    new-instance v21, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct/range {v21 .. v21}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v18, v10

    filled-new-array/range {v16 .. v21}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v6}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v7, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v9}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    invoke-direct {v7, v9}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v9, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v10

    const-string v13, "&#11;"

    filled-new-array {v15, v13}, [Ljava/lang/String;

    move-result-object v13

    const-string v15, "&#12;"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    filled-new-array {v8, v14}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v12, v14}, [Ljava/lang/String;

    move-result-object v12

    filled-new-array {v10, v13, v11, v8, v12}, [[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/16 v8, 0x8

    const/4 v10, 0x1

    invoke-static {v10, v8}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v27

    const/16 v8, 0xe

    const/16 v10, 0x1f

    invoke-static {v8, v10}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v28

    const/16 v8, 0x7f

    const/16 v10, 0x84

    invoke-static {v8, v10}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v29

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v30

    new-instance v31, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct/range {v31 .. v31}, Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    move-object/from16 v24, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v9

    filled-new-array/range {v24 .. v31}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v6}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    sget-object v3, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE:[[Ljava/lang/String;

    invoke-virtual {v3}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    invoke-direct {v2, v7}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    filled-new-array {v1, v2}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v6}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v3}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    sget-object v6, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE:[[Ljava/lang/String;

    invoke-virtual {v6}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    filled-new-array {v1, v2, v3}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;

    invoke-direct {v0}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvEscaper;-><init>()V

    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;

    invoke-direct {v1}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;-><init>()V

    new-instance v2, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;

    invoke-direct {v2}, Lorg/apache/commons/lang3/text/translate/UnicodeUnescaper;-><init>()V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    sget-object v6, Lorg/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE:[[Ljava/lang/String;

    invoke-virtual {v6}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v6, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, v22

    move-object/from16 v7, v49

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v47

    move-object/from16 v9, v48

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v4, v14}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {v5, v7, v8, v4}, [[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    filled-new-array {v1, v2, v3, v6}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    sget-object v2, Lorg/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE:[[Ljava/lang/String;

    invoke-virtual {v2}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    sget-object v4, Lorg/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE:[[Ljava/lang/String;

    invoke-virtual {v4}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    const/4 v6, 0x0

    new-array v7, v6, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v5, v7}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    filled-new-array {v1, v3, v5}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v2}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v4}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v4, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    sget-object v5, Lorg/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE:[[Ljava/lang/String;

    invoke-virtual {v5}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v5, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    const/4 v6, 0x0

    new-array v7, v6, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v5, v7}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    filled-new-array {v1, v3, v4, v5}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v0, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    new-instance v1, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-virtual {v2}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v2, Lorg/apache/commons/lang3/text/translate/LookupTranslator;

    sget-object v3, Lorg/apache/commons/lang3/text/translate/EntityArrays;->APOS_UNESCAPE:[[Ljava/lang/String;

    invoke-virtual {v3}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-instance v3, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v3, v4}, Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    filled-new-array {v1, v2, v3}, [Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    new-instance v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;

    invoke-direct {v0}, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
