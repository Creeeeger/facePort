.class public final Lretrofit2/ParameterHandler$Part;
.super Lretrofit2/ParameterHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final converter:Lretrofit2/Converter;

.field public final headers:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lretrofit2/ParameterHandler$Part;->$r8$classId:I

    sget-object v0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE:Lretrofit2/BuiltInConverters$ToStringConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "name == null"

    invoke-static {p1, v1}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lretrofit2/ParameterHandler$Part;->headers:Ljava/lang/Object;

    iput-object v0, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Headers;Lretrofit2/Converter;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lretrofit2/ParameterHandler$Part;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/ParameterHandler$Part;->headers:Ljava/lang/Object;

    iput-object p2, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    return-void
.end method

.method public constructor <init>(Lretrofit2/Converter;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lretrofit2/ParameterHandler$Part;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    iput-object p2, p0, Lretrofit2/ParameterHandler$Part;->headers:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lretrofit2/ParameterHandler$Part;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "form-data; name=\""

    const-string v3, "\""

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Disposition"

    const-string v3, "Content-Transfer-Encoding"

    iget-object v4, p0, Lretrofit2/ParameterHandler$Part;->headers:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    filled-new-array {v2, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    invoke-interface {v2, v0}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RequestBody;

    invoke-virtual {p1, v1, v0}, Lretrofit2/RequestBuilder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Part map contained null value for key \'"

    const-string p2, "\'."

    invoke-static {p1, v1, p2}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Part map contained null key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Part map was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    invoke-interface {v0, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lretrofit2/ParameterHandler$Part;->headers:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lretrofit2/RequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    :try_start_0
    iget-object v0, p0, Lretrofit2/ParameterHandler$Part;->converter:Lretrofit2/Converter;

    invoke-interface {v0, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lretrofit2/ParameterHandler$Part;->headers:Ljava/lang/Object;

    check-cast p0, Lokhttp3/Headers;

    invoke-virtual {p1, p0, v0}, Lretrofit2/RequestBuilder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    :goto_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to convert "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to RequestBody"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
