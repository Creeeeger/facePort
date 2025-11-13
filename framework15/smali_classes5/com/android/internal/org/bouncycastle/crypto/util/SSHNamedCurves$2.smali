.class Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$2;
.super Ljava/util/HashMap;
.source "SSHNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 14

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "secp256r1"

    const-string/jumbo v1, "nistp256"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "secp384r1"

    const-string/jumbo v1, "nistp384"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "secp521r1"

    const-string/jumbo v1, "nistp521"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "sect163k1"

    const-string/jumbo v1, "nistk163"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "secp192r1"

    const-string/jumbo v1, "nistp192"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "secp224r1"

    const-string/jumbo v1, "nistp224"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "sect233k1"

    const-string/jumbo v1, "nistk233"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "sect233r1"

    const-string/jumbo v1, "nistb233"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "sect283k1"

    const-string/jumbo v1, "nistk283"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v0, "sect409k1"

    const-string/jumbo v1, "nistk409"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v0, "sect409r1"

    const-string/jumbo v1, "nistb409"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v0, "sect571k1"

    const-string/jumbo v1, "nistt571"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v13

    filled-new-array/range {v2 .. v13}, [[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
