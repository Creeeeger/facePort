.class public Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/Primes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STOutput"
.end annotation


# instance fields
.field private blacklist prime:Ljava/math/BigInteger;

.field private blacklist primeGenCounter:I

.field private blacklist primeSeed:[B


# direct methods
.method private constructor blacklist <init>(Ljava/math/BigInteger;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->primeSeed:[B

    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->primeGenCounter:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/math/BigInteger;[BILcom/android/internal/org/bouncycastle/math/Primes$STOutput-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BI)V

    return-void
.end method


# virtual methods
.method public blacklist getPrime()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->prime:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPrimeGenCounter()I
    .locals 1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->primeGenCounter:I

    return v0
.end method

.method public blacklist getPrimeSeed()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/Primes$STOutput;->primeSeed:[B

    return-object v0
.end method
