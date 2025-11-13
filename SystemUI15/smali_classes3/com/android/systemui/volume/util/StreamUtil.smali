.class public final Lcom/android/systemui/volume/util/StreamUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/util/StreamUtil;

    invoke-direct {v0}, Lcom/android/systemui/volume/util/StreamUtil;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMusicStream(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x15

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method
