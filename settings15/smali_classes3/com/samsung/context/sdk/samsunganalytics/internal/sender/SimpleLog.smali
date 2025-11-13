.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public _id:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public timestamp:J

.field public type:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V
    .locals 6

    const-string v1, ""

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->_id:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->timestamp:J

    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->data:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->type:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method
