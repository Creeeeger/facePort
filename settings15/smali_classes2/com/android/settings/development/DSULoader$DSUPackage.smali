.class public final Lcom/android/settings/development/DSULoader$DSUPackage;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCpuAbi:Ljava/lang/String;

.field public mDetails:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mOsVersion:I

.field public mPubKey:Ljava/lang/String;

.field public mSPL:Ljava/util/Date;

.field public mTosUrl:Ljava/net/URL;

.field public mUri:Ljava/net/URL;

.field public mVndk:[I


# direct methods
.method public static dessertNumber(ILjava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    add-int/lit8 p1, p1, -0x51

    add-int/2addr p1, p0

    return p1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method
