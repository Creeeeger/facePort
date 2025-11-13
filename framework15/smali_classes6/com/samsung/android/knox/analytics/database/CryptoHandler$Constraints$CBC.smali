.class Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints$CBC;
.super Ljava/lang/Object;
.source "CryptoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/CryptoHandler$Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CBC"
.end annotation


# static fields
.field static final blacklist ALIAS:Ljava/lang/String; = "synthetic_password_knox.analytics.service.compression.cryptokey"

.field static final blacklist BLOCK_MODE:Ljava/lang/String; = "CBC"

.field static final blacklist CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field static final blacklist ENCRYPTION_PADDING:Ljava/lang/String; = "PKCS7Padding"

.field static final blacklist IV_SIZE:I = 0x10


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
