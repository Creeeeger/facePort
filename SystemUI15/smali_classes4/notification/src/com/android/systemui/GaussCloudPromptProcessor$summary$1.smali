.class public final Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$summary$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Lnotification/src/com/android/systemui/PromptCallback;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $prompt:Ljava/lang/String;

.field public final synthetic this$0:Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;


# direct methods
.method public constructor <init>(Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;Ljava/lang/String;Ljava/lang/String;Lnotification/src/com/android/systemui/PromptCallback;)V
    .locals 0

    iput-object p1, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$summary$1;->this$0:Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;

    iput-object p2, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$summary$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$summary$1;->$prompt:Ljava/lang/String;

    iput-object p4, p0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$summary$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v8, v0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$summary$1;->this$0:Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;

    iput-boolean v1, v8, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;->isSummarizing:Z

    iget-object v6, v0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$summary$1;->$key:Ljava/lang/String;

    iget-object v2, v0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$summary$1;->$prompt:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, "\\n"

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$summary$1;->$callback:Lnotification/src/com/android/systemui/PromptCallback;

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3, v0}, Lokhttp3/OkHttpClient$Builder;-><init>(Lokhttp3/OkHttpClient;)V

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0, v3}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    sget-object v3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v4, "application/json"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v4}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v7, v3

    :goto_0
    sget-object v9, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v10, Lorg/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/apache/commons/lang3/text/translate/AggregateTranslator;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-instance v11, Ljava/io/StringWriter;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    invoke-direct {v11, v12}, Ljava/io/StringWriter;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v14, 0x0

    :cond_0
    :goto_1
    if-ge v14, v12, :cond_3

    invoke-virtual {v10, v2, v14, v11}, Lorg/apache/commons/lang3/text/translate/AggregateTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v2, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v11, v15}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v13, v14, 0x1

    invoke-static {v15}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v15

    if-eqz v15, :cond_1

    if-ge v13, v12, :cond_1

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v11, v15}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v14, v14, 0x2

    goto :goto_1

    :cond_1
    move v14, v13

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_0

    invoke-static {v2, v14}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    move-result v16

    add-int v14, v16, v14

    add-int/2addr v13, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "{\n\"prompts\" : \"<|begin_of_text|><|turn_start|>System\\n<|turn_end|>\\n<|turn_start|>User\\nYou are a summarization expert. Please read the provided <Text> carefully and summarize it in 1 sentences in Korean. The summary should comprehensively cover the entire content of the original text and be written with the same meaning as the source material.\\n\\n<Text>\\n"

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<|turn_end|>\\n<|turn_start|>Assistant\\n\",\n\"language\" : \"ko\",\n\"temperature\" : \"0.9\"\n}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz v7, :cond_4

    sget-object v9, Lokhttp3/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v9

    if-nez v9, :cond_5

    sget-object v9, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; charset=utf-8"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    invoke-static {v7}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-object v7, v3

    :cond_4
    :goto_3
    move-object v9, v2

    :cond_5
    invoke-virtual {v1, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v9, v1

    array-length v10, v1

    int-to-long v10, v10

    const/4 v12, 0x0

    int-to-long v13, v12

    move-object v12, v4

    int-to-long v3, v9

    sget-object v16, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    or-long v16, v13, v3

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_8

    cmp-long v16, v13, v10

    if-gtz v16, :cond_8

    sub-long/2addr v10, v13

    cmp-long v3, v10, v3

    if-ltz v3, :cond_8

    new-instance v3, Lokhttp3/RequestBody$Companion$toRequestBody$2;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v7, v9, v4}, Lokhttp3/RequestBody$Companion$toRequestBody$2;-><init>([BLokhttp3/MediaType;II)V

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v4, "http://common.exp-ondevice.dev-aibixby.com/api/inference"

    invoke-virtual {v1, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    iget-object v4, v1, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v7, "Content-Type"

    invoke-virtual {v4, v7, v12}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lokhttp3/Request$Builder;->headers:Lokhttp3/Headers$Builder;

    const-string v7, "Accept"

    invoke-virtual {v4, v7, v12}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "POST"

    invoke-virtual {v1, v4, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)V

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    :try_start_3
    new-instance v3, Lokhttp3/internal/connection/RealCall;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->execute()Lokhttp3/Response;

    move-result-object v3

    iget-object v0, v3, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v2, v0

    :cond_6
    invoke-static {v1, v2}, Lokhttp3/internal/Util;->readBomAsCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-interface {v1, v0}, Lokio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    :try_start_5
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_4
    move-object v4, v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_7
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :goto_5
    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    const-string v0, ""

    goto :goto_4

    :goto_6
    iget-object v0, v8, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;

    move-object v2, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor$runGauss$1;-><init>(Lokhttp3/Response;Ljava/lang/String;Lnotification/src/com/android/systemui/PromptCallback;Ljava/lang/String;Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_5

    :goto_7
    iput-boolean v1, v8, Lnotification/src/com/android/systemui/GaussCloudPromptProcessor;->isSummarizing:Z

    const-string v1, "runGauss error: "

    const-string v2, "GaussServerPromptProcessor"

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_8
    return-void

    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
