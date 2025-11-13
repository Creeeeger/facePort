.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public _id:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public timestamp:J

.field public type:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V
    .locals 6

    .line 1
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->_id:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->timestamp:J

    .line 5
    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->data:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->type:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    return-void
.end method
