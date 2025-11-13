.class public final enum Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

.field public static final enum BEGIN_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

.field public static final enum END_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

.field public static final enum HANDSHAKE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

.field public static final enum POLL_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

.field public static final enum TYPE_NOT_SET:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    const-string v1, "HANDSHAKE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->HANDSHAKE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    new-instance v1, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    const-string v4, "BEGIN_TRACE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->BEGIN_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    new-instance v3, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    const-string v4, "END_TRACE"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->END_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    new-instance v4, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    const-string v5, "POLL_TRACE"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->POLL_TRACE:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    new-instance v5, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    const-string v6, "TYPE_NOT_SET"

    invoke-direct {v5, v6, v7, v2}, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->TYPE_NOT_SET:Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    filled-new-array {v0, v1, v3, v4, v5}, [Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    move-result-object v0

    sput-object v0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->$VALUES:[Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;
    .locals 1

    const-class v0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    return-object p0
.end method

.method public static values()[Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;
    .locals 1

    sget-object v0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->$VALUES:[Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    invoke-virtual {v0}, [Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/app/motiontool/MotionToolsRequest$TypeCase;->value:I

    return p0
.end method
