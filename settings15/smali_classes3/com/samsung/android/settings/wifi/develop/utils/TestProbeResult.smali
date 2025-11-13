.class public final Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHttpResponseCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->mHttpResponseCode:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Test result : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xcc

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/utils/TestProbeResult;->mHttpResponseCode:I

    if-ne p0, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xc8

    if-lt p0, v1, :cond_2

    const/16 v1, 0x18f

    if-gt p0, v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    if-ne p0, v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
