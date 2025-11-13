.class Lcom/samsung/systemui/splugins/SVersionInfo$Version;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mRequired:Z

.field private final mVersion:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmRequired(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mRequired:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVersion(Lcom/samsung/systemui/splugins/SVersionInfo$Version;)I
    .locals 0

    iget p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mVersion:I

    return p0
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mVersion:I

    iput-boolean p2, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mRequired:Z

    return-void
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 0

    iget p0, p0, Lcom/samsung/systemui/splugins/SVersionInfo$Version;->mVersion:I

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method
