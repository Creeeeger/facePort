.class public final enum Lcom/android/app/motiontool/HandshakeResponse$Status;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/app/motiontool/HandshakeResponse$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/app/motiontool/HandshakeResponse$Status;

.field public static final enum OK:Lcom/android/app/motiontool/HandshakeResponse$Status;

.field public static final enum WINDOW_NOT_FOUND:Lcom/android/app/motiontool/HandshakeResponse$Status;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/app/motiontool/HandshakeResponse$Status;

    const-string v1, "OK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/app/motiontool/HandshakeResponse$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/app/motiontool/HandshakeResponse$Status;->OK:Lcom/android/app/motiontool/HandshakeResponse$Status;

    new-instance v1, Lcom/android/app/motiontool/HandshakeResponse$Status;

    const-string v2, "WINDOW_NOT_FOUND"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/app/motiontool/HandshakeResponse$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/app/motiontool/HandshakeResponse$Status;->WINDOW_NOT_FOUND:Lcom/android/app/motiontool/HandshakeResponse$Status;

    filled-new-array {v0, v1}, [Lcom/android/app/motiontool/HandshakeResponse$Status;

    move-result-object v0

    sput-object v0, Lcom/android/app/motiontool/HandshakeResponse$Status;->$VALUES:[Lcom/android/app/motiontool/HandshakeResponse$Status;

    new-instance v0, Lcom/android/app/motiontool/HandshakeResponse$Status$1;

    invoke-direct {v0}, Lcom/android/app/motiontool/HandshakeResponse$Status$1;-><init>()V

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

    iput p3, p0, Lcom/android/app/motiontool/HandshakeResponse$Status;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/app/motiontool/HandshakeResponse$Status;
    .locals 1

    const-class v0, Lcom/android/app/motiontool/HandshakeResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/app/motiontool/HandshakeResponse$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/app/motiontool/HandshakeResponse$Status;
    .locals 1

    sget-object v0, Lcom/android/app/motiontool/HandshakeResponse$Status;->$VALUES:[Lcom/android/app/motiontool/HandshakeResponse$Status;

    invoke-virtual {v0}, [Lcom/android/app/motiontool/HandshakeResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/app/motiontool/HandshakeResponse$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/app/motiontool/HandshakeResponse$Status;->value:I

    return p0
.end method
