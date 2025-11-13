.class public final Lretrofit2/BuiltInConverters$ToStringConverter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lretrofit2/Converter;


# static fields
.field public static final INSTANCE:Lretrofit2/BuiltInConverters$ToStringConverter;

.field public static final INSTANCE$1:Lretrofit2/BuiltInConverters$ToStringConverter;

.field public static final INSTANCE$2:Lretrofit2/BuiltInConverters$ToStringConverter;

.field public static final INSTANCE$3:Lretrofit2/BuiltInConverters$ToStringConverter;

.field public static final INSTANCE$4:Lretrofit2/BuiltInConverters$ToStringConverter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lretrofit2/BuiltInConverters$ToStringConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lretrofit2/BuiltInConverters$ToStringConverter;-><init>(I)V

    sput-object v0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE:Lretrofit2/BuiltInConverters$ToStringConverter;

    new-instance v0, Lretrofit2/BuiltInConverters$ToStringConverter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lretrofit2/BuiltInConverters$ToStringConverter;-><init>(I)V

    sput-object v0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE$1:Lretrofit2/BuiltInConverters$ToStringConverter;

    new-instance v0, Lretrofit2/BuiltInConverters$ToStringConverter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lretrofit2/BuiltInConverters$ToStringConverter;-><init>(I)V

    sput-object v0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE$2:Lretrofit2/BuiltInConverters$ToStringConverter;

    new-instance v0, Lretrofit2/BuiltInConverters$ToStringConverter;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lretrofit2/BuiltInConverters$ToStringConverter;-><init>(I)V

    sput-object v0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE$3:Lretrofit2/BuiltInConverters$ToStringConverter;

    new-instance v0, Lretrofit2/BuiltInConverters$ToStringConverter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lretrofit2/BuiltInConverters$ToStringConverter;-><init>(I)V

    sput-object v0, Lretrofit2/BuiltInConverters$ToStringConverter;->INSTANCE$4:Lretrofit2/BuiltInConverters$ToStringConverter;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lretrofit2/BuiltInConverters$ToStringConverter;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lretrofit2/BuiltInConverters$ToStringConverter;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    check-cast p1, Lokhttp3/ResponseBody;

    return-object p1

    :pswitch_1
    check-cast p1, Lokhttp3/RequestBody;

    return-object p1

    :pswitch_2
    check-cast p1, Lokhttp3/ResponseBody;

    :try_start_0
    sget-object p0, Lretrofit2/Utils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    new-instance p0, Lokio/Buffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0, p0}, Lokio/BufferedSource;->readAll(Lokio/Buffer;)J

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    new-instance v3, Lokhttp3/ResponseBody$1;

    invoke-direct {v3, v0, v1, v2, p0}, Lokhttp3/ResponseBody$1;-><init>(Lokhttp3/MediaType;JLokio/Buffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v3

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    throw p0

    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
