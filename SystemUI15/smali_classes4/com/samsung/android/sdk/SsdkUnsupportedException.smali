.class public Lcom/samsung/android/sdk/SsdkUnsupportedException;
.super Ljava/lang/Exception;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private mErrorType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mErrorType:I

    return-void
.end method
