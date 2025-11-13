.class public final Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mStateChangedTime:J

.field public final mUwbState:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;->mUwbState:I

    iput-wide p2, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;->mStateChangedTime:J

    return-void
.end method
