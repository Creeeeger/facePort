.class public final Lretrofit2/ParameterHandler$Path;
.super Lretrofit2/ParameterHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final encoded:Z

.field public final name:Ljava/lang/String;

.field public final valueConverter:Lretrofit2/Converter;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    iput p1, p0, Lretrofit2/ParameterHandler$Path;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE:Lretrofit2/BuiltInConverters$ToStringConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name == null"

    invoke-static {p2, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lretrofit2/ParameterHandler$Path;->name:Ljava/lang/String;

    iput-object p1, p0, Lretrofit2/ParameterHandler$Path;->valueConverter:Lretrofit2/Converter;

    iput-boolean p3, p0, Lretrofit2/ParameterHandler$Path;->encoded:Z

    return-void

    :pswitch_0
    sget-object p1, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE:Lretrofit2/BuiltInConverters$ToStringConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name == null"

    invoke-static {p2, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lretrofit2/ParameterHandler$Path;->name:Ljava/lang/String;

    iput-object p1, p0, Lretrofit2/ParameterHandler$Path;->valueConverter:Lretrofit2/Converter;

    iput-boolean p3, p0, Lretrofit2/ParameterHandler$Path;->encoded:Z

    return-void

    :pswitch_1
    sget-object p1, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE:Lretrofit2/BuiltInConverters$ToStringConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name == null"

    invoke-static {p2, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lretrofit2/ParameterHandler$Path;->name:Ljava/lang/String;

    iput-object p1, p0, Lretrofit2/ParameterHandler$Path;->valueConverter:Lretrofit2/Converter;

    iput-boolean p3, p0, Lretrofit2/ParameterHandler$Path;->encoded:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lretrofit2/ParameterHandler$Path;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lretrofit2/ParameterHandler$Path;->valueConverter:Lretrofit2/Converter;

    invoke-interface {v3, v2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lretrofit2/ParameterHandler$Path;->name:Ljava/lang/String;

    iget-boolean v0, v0, Lretrofit2/ParameterHandler$Path;->encoded:Z

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :pswitch_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lretrofit2/ParameterHandler$Path;->valueConverter:Lretrofit2/Converter;

    invoke-interface {v3, v2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lretrofit2/ParameterHandler$Path;->name:Ljava/lang/String;

    iget-boolean v0, v0, Lretrofit2/ParameterHandler$Path;->encoded:Z

    invoke-virtual {v1, v3, v2, v0}, Lretrofit2/RequestBuilder;->addFormField(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void

    :pswitch_1
    iget-object v3, v0, Lretrofit2/ParameterHandler$Path;->name:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v4, v0, Lretrofit2/ParameterHandler$Path;->valueConverter:Lretrofit2/Converter;

    invoke-interface {v4, v2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, v1, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v4, :cond_d

    const-string/jumbo v5, "{"

    const-string/jumbo v6, "}"

    invoke-static {v5, v3, v6}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_c

    invoke-virtual {v2, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    iget-boolean v9, v0, Lretrofit2/ParameterHandler$Path;->encoded:Z

    const/16 v10, 0x25

    const/16 v11, 0x2f

    const/4 v12, -0x1

    const-string v13, " \"<>^`{}|\\?#"

    const/16 v14, 0x7f

    const/16 v15, 0x20

    if-lt v8, v15, :cond_5

    if-ge v8, v14, :cond_5

    invoke-virtual {v13, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ne v14, v12, :cond_5

    if-nez v9, :cond_4

    if-eq v8, v11, :cond_5

    if-ne v8, v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_2

    :cond_5
    :goto_3
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v6, v7, v2}, Lokio/Buffer;->writeUtf8(IILjava/lang/String;)V

    const/4 v6, 0x0

    :goto_4
    if-ge v7, v5, :cond_b

    invoke-virtual {v2, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-eqz v9, :cond_6

    const/16 v14, 0x9

    if-eq v8, v14, :cond_a

    const/16 v14, 0xa

    if-eq v8, v14, :cond_a

    const/16 v14, 0xc

    if-eq v8, v14, :cond_a

    const/16 v14, 0xd

    if-ne v8, v14, :cond_6

    goto :goto_7

    :cond_6
    if-lt v8, v15, :cond_8

    const/16 v14, 0x7f

    if-ge v8, v14, :cond_8

    invoke-virtual {v13, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ne v14, v12, :cond_8

    if-nez v9, :cond_7

    if-eq v8, v11, :cond_8

    if-ne v8, v10, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v8}, Lokio/Buffer;->writeUtf8CodePoint(I)V

    goto :goto_7

    :cond_8
    :goto_5
    if-nez v6, :cond_9

    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    :cond_9
    invoke-virtual {v6, v8}, Lokio/Buffer;->writeUtf8CodePoint(I)V

    :goto_6
    invoke-virtual {v6}, Lokio/Buffer;->exhausted()Z

    move-result v14

    if-nez v14, :cond_a

    invoke-virtual {v6}, Lokio/Buffer;->readByte()B

    move-result v14

    and-int/lit16 v11, v14, 0xff

    invoke-virtual {v0, v10}, Lokio/Buffer;->writeByte(I)V

    sget-object v16, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v16, v11

    invoke-virtual {v0, v11}, Lokio/Buffer;->writeByte(I)V

    and-int/lit8 v11, v14, 0xf

    aget-char v11, v16, v11

    invoke-virtual {v0, v11}, Lokio/Buffer;->writeByte(I)V

    const/16 v11, 0x2f

    goto :goto_6

    :cond_a
    :goto_7
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v7, v8

    const/16 v11, 0x2f

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v2

    :cond_c
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path parameter \""

    const-string v2, "\" value must not be null."

    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
