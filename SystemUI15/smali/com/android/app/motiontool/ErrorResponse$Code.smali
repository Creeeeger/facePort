.class public final enum Lcom/android/app/motiontool/ErrorResponse$Code;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/app/motiontool/ErrorResponse$Code;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/app/motiontool/ErrorResponse$Code;

.field public static final enum INVALID_REQUEST:Lcom/android/app/motiontool/ErrorResponse$Code;

.field public static final enum UNKNOWN:Lcom/android/app/motiontool/ErrorResponse$Code;

.field public static final enum UNKNOWN_TRACE_ID:Lcom/android/app/motiontool/ErrorResponse$Code;

.field public static final enum WINDOW_NOT_FOUND:Lcom/android/app/motiontool/ErrorResponse$Code;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/app/motiontool/ErrorResponse$Code;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/app/motiontool/ErrorResponse$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/app/motiontool/ErrorResponse$Code;->UNKNOWN:Lcom/android/app/motiontool/ErrorResponse$Code;

    new-instance v1, Lcom/android/app/motiontool/ErrorResponse$Code;

    const-string v2, "INVALID_REQUEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/app/motiontool/ErrorResponse$Code;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/app/motiontool/ErrorResponse$Code;->INVALID_REQUEST:Lcom/android/app/motiontool/ErrorResponse$Code;

    new-instance v2, Lcom/android/app/motiontool/ErrorResponse$Code;

    const-string v3, "UNKNOWN_TRACE_ID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/app/motiontool/ErrorResponse$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/app/motiontool/ErrorResponse$Code;->UNKNOWN_TRACE_ID:Lcom/android/app/motiontool/ErrorResponse$Code;

    new-instance v3, Lcom/android/app/motiontool/ErrorResponse$Code;

    const-string v4, "WINDOW_NOT_FOUND"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/app/motiontool/ErrorResponse$Code;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/app/motiontool/ErrorResponse$Code;->WINDOW_NOT_FOUND:Lcom/android/app/motiontool/ErrorResponse$Code;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/app/motiontool/ErrorResponse$Code;

    move-result-object v0

    sput-object v0, Lcom/android/app/motiontool/ErrorResponse$Code;->$VALUES:[Lcom/android/app/motiontool/ErrorResponse$Code;

    new-instance v0, Lcom/android/app/motiontool/ErrorResponse$Code$1;

    invoke-direct {v0}, Lcom/android/app/motiontool/ErrorResponse$Code$1;-><init>()V

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

    iput p3, p0, Lcom/android/app/motiontool/ErrorResponse$Code;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/app/motiontool/ErrorResponse$Code;
    .locals 1

    const-class v0, Lcom/android/app/motiontool/ErrorResponse$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/app/motiontool/ErrorResponse$Code;

    return-object p0
.end method

.method public static values()[Lcom/android/app/motiontool/ErrorResponse$Code;
    .locals 1

    sget-object v0, Lcom/android/app/motiontool/ErrorResponse$Code;->$VALUES:[Lcom/android/app/motiontool/ErrorResponse$Code;

    invoke-virtual {v0}, [Lcom/android/app/motiontool/ErrorResponse$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/app/motiontool/ErrorResponse$Code;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/app/motiontool/ErrorResponse$Code;->value:I

    return p0
.end method
