.class final enum Lorg/simpleframework/xml/transform/DateType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/xml/transform/DateType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/simpleframework/xml/transform/DateType;

.field public static final enum FULL:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum LONG:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum NORMAL:Lorg/simpleframework/xml/transform/DateType;

.field public static final enum SHORT:Lorg/simpleframework/xml/transform/DateType;


# instance fields
.field private format:Lorg/simpleframework/xml/transform/DateType$DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/simpleframework/xml/transform/DateType;

    const/4 v1, 0x0

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.S z"

    const-string v3, "FULL"

    invoke-direct {v0, v3, v1, v2}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    new-instance v1, Lorg/simpleframework/xml/transform/DateType;

    const/4 v2, 0x1

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss z"

    const-string v4, "LONG"

    invoke-direct {v1, v4, v2, v3}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    new-instance v2, Lorg/simpleframework/xml/transform/DateType;

    const/4 v3, 0x2

    const-string/jumbo v4, "yyyy-MM-dd z"

    const-string v5, "NORMAL"

    invoke-direct {v2, v5, v3, v4}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    new-instance v3, Lorg/simpleframework/xml/transform/DateType;

    const/4 v4, 0x3

    const-string/jumbo v5, "yyyy-MM-dd"

    const-string v6, "SHORT"

    invoke-direct {v3, v6, v4, v5}, Lorg/simpleframework/xml/transform/DateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/simpleframework/xml/transform/DateType;

    move-result-object v0

    sput-object v0, Lorg/simpleframework/xml/transform/DateType;->$VALUES:[Lorg/simpleframework/xml/transform/DateType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lorg/simpleframework/xml/transform/DateType$DateFormat;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Lorg/simpleframework/xml/transform/DateType$DateFormat;->format:Ljava/text/SimpleDateFormat;

    iput-object p1, p0, Lorg/simpleframework/xml/transform/DateType;->format:Lorg/simpleframework/xml/transform/DateType$DateFormat;

    return-void
.end method

.method public static getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->LONG:Lorg/simpleframework/xml/transform/DateType;

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-le v0, v1, :cond_2

    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->NORMAL:Lorg/simpleframework/xml/transform/DateType;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->SHORT:Lorg/simpleframework/xml/transform/DateType;

    :goto_0
    iget-object v0, v0, Lorg/simpleframework/xml/transform/DateType;->format:Lorg/simpleframework/xml/transform/DateType$DateFormat;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lorg/simpleframework/xml/transform/DateType$DateFormat;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getText(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->FULL:Lorg/simpleframework/xml/transform/DateType;

    iget-object v0, v0, Lorg/simpleframework/xml/transform/DateType;->format:Lorg/simpleframework/xml/transform/DateType$DateFormat;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lorg/simpleframework/xml/transform/DateType$DateFormat;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/transform/DateType;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/transform/DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/transform/DateType;

    return-object p0
.end method

.method public static values()[Lorg/simpleframework/xml/transform/DateType;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/transform/DateType;->$VALUES:[Lorg/simpleframework/xml/transform/DateType;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/transform/DateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/transform/DateType;

    return-object v0
.end method
