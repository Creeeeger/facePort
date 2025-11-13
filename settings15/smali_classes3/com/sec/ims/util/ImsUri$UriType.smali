.class public final enum Lcom/sec/ims/util/ImsUri$UriType;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/util/ImsUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UriType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/util/ImsUri$UriType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/util/ImsUri$UriType;

.field public static final enum SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

.field public static final enum TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

.field public static final enum URN:Lcom/sec/ims/util/ImsUri$UriType;


# direct methods
.method private static synthetic $values()[Lcom/sec/ims/util/ImsUri$UriType;
    .locals 3

    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->URN:Lcom/sec/ims/util/ImsUri$UriType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/ims/util/ImsUri$UriType;

    const-string v1, "TEL_URI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/ImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    new-instance v0, Lcom/sec/ims/util/ImsUri$UriType;

    const-string v1, "SIP_URI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/ImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    new-instance v0, Lcom/sec/ims/util/ImsUri$UriType;

    const-string v1, "URN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/ImsUri$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/util/ImsUri$UriType;->URN:Lcom/sec/ims/util/ImsUri$UriType;

    invoke-static {}, Lcom/sec/ims/util/ImsUri$UriType;->$values()[Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/util/ImsUri$UriType;->$VALUES:[Lcom/sec/ims/util/ImsUri$UriType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri$UriType;
    .locals 1

    const-class v0, Lcom/sec/ims/util/ImsUri$UriType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0
.end method

.method public static values()[Lcom/sec/ims/util/ImsUri$UriType;
    .locals 1

    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->$VALUES:[Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {v0}, [Lcom/sec/ims/util/ImsUri$UriType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/util/ImsUri$UriType;

    return-object v0
.end method
