.class Lcom/samsung/android/knox/kpm/RequestInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CMD_IS_REGISTERED:I = 0x3

.field public static final CMD_REGISTER:I = 0x1

.field public static final CMD_UNREGISTER:I = 0x2


# instance fields
.field public mCmd:I

.field public mForce:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mCmd:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mForce:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mCmd:I

    iput-boolean p2, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mForce:Z

    return-void
.end method


# virtual methods
.method public getCmd()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mCmd:I

    return p0
.end method

.method public isForce()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/kpm/RequestInfo;->mForce:Z

    return p0
.end method
