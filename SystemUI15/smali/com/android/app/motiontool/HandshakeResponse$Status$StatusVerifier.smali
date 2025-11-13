.class public final Lcom/android/app/motiontool/HandshakeResponse$Status$StatusVerifier;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# static fields
.field public static final INSTANCE:Lcom/android/app/motiontool/HandshakeResponse$Status$StatusVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/app/motiontool/HandshakeResponse$Status$StatusVerifier;

    invoke-direct {v0}, Lcom/android/app/motiontool/HandshakeResponse$Status$StatusVerifier;-><init>()V

    sput-object v0, Lcom/android/app/motiontool/HandshakeResponse$Status$StatusVerifier;->INSTANCE:Lcom/android/app/motiontool/HandshakeResponse$Status$StatusVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/android/app/motiontool/HandshakeResponse$Status;->OK:Lcom/android/app/motiontool/HandshakeResponse$Status;

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/app/motiontool/HandshakeResponse$Status;->WINDOW_NOT_FOUND:Lcom/android/app/motiontool/HandshakeResponse$Status;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/app/motiontool/HandshakeResponse$Status;->OK:Lcom/android/app/motiontool/HandshakeResponse$Status;

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
