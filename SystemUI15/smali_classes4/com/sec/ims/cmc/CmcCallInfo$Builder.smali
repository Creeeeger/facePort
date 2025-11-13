.class public Lcom/sec/ims/cmc/CmcCallInfo$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field protected mCmcCallState:I

.field protected mCmcType:I

.field protected mLineSlotId:I

.field protected mPdDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 1

    new-instance v0, Lcom/sec/ims/cmc/CmcCallInfo;

    invoke-direct {v0, p0}, Lcom/sec/ims/cmc/CmcCallInfo;-><init>(Lcom/sec/ims/cmc/CmcCallInfo$Builder;)V

    return-object v0
.end method

.method public setCallState(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcCallState:I

    return-object p0
.end method

.method public setCmcType(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcType:I

    return-object p0
.end method

.method public setLineSlotId(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mLineSlotId:I

    return-object p0
.end method

.method public setPdDeviceId(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mPdDeviceId:Ljava/lang/String;

    return-object p0
.end method
