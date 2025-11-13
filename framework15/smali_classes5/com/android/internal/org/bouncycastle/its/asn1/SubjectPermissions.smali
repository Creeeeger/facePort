.class public Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "SubjectPermissions.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;
    .locals 1

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/SubjectPermissions;

    return-object v0

    :cond_0
    nop

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
