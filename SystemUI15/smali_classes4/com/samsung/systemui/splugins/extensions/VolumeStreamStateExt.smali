.class public final Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x0

.field private static final DYNAMIC_STREAM_START_INDEX:I = 0x64

.field public static final INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;

    invoke-direct {v0}, Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;-><init>()V

    sput-object v0, Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;->INSTANCE:Lcom/samsung/systemui/splugins/extensions/VolumeStreamStateExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isRemoteStream(Lcom/samsung/systemui/splugins/volume/VolumeStreamState;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/volume/VolumeStreamState;->getStreamType()I

    move-result p0

    const/16 p1, 0x64

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
