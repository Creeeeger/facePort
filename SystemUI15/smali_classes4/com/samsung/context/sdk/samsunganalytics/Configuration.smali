.class public final Lcom/samsung/context/sdk/samsunganalytics/Configuration;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final auidType:I

.field public enableAutoDeviceId:Z

.field public isAlwaysRunningApp:Z

.field public final networkType:I

.field public trackingId:Ljava/lang/String;

.field public userAgreement:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->networkType:I

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    iput v1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return-void
.end method
