.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Generator;
.super Ljava/lang/Object;
.source "ASN1Generator.java"


# instance fields
.field protected blacklist _out:Ljava/io/OutputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Generator;->_out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public abstract blacklist getRawOutputStream()Ljava/io/OutputStream;
.end method
