.class public Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "EndEntityType.java"


# static fields
.field public static final blacklist app:I = 0x80

.field public static final blacklist enrol:I = 0x40


# instance fields
.field private final blacklist type:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;
    .locals 2

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method
