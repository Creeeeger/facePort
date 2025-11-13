.class public Lcom/samsung/android/sdk/scs/base/ResultException;
.super Ljava/lang/RuntimeException;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mResultCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/scs/base/ResultException;->mResultCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/sdk/scs/base/ResultException;->mResultCode:I

    return-void
.end method
