.class public Landroid/security/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# static fields
.field public static final blacklist ACTION_MANAGE_CREDENTIALS:Ljava/lang/String; = "android.security.MANAGE_CREDENTIALS"

.field public static final blacklist APP_SOURCE_CERTIFICATE:Ljava/lang/String; = "FSV_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CERTIFICATE_USAGE_APP_SOURCE:Ljava/lang/String; = "appsrc"

.field public static final blacklist CERTIFICATE_USAGE_CA:Ljava/lang/String; = "ca"

.field public static final blacklist CERTIFICATE_USAGE_USER:Ljava/lang/String; = "user"

.field public static final blacklist CERTIFICATE_USAGE_WIFI:Ljava/lang/String; = "wifi"

.field public static final greylist-max-o EXTENSION_CER:Ljava/lang/String; = ".cer"

.field public static final greylist-max-o EXTENSION_CRT:Ljava/lang/String; = ".crt"

.field public static final greylist-max-o EXTENSION_P12:Ljava/lang/String; = ".p12"

.field public static final greylist-max-o EXTENSION_PFX:Ljava/lang/String; = ".pfx"

.field public static final greylist-max-o EXTRA_CA_CERTIFICATES_DATA:Ljava/lang/String; = "ca_certificates_data"

.field public static final blacklist EXTRA_CERTIFICATE_USAGE:Ljava/lang/String; = "certificate_install_usage"

.field public static final greylist-max-o EXTRA_INSTALL_AS_UID:Ljava/lang/String; = "install_as_uid"

.field public static final greylist-max-o EXTRA_PRIVATE_KEY:Ljava/lang/String; = "PKEY"

.field public static final greylist-max-o EXTRA_PUBLIC_KEY:Ljava/lang/String; = "KEY"

.field public static final greylist-max-o EXTRA_USER_CERTIFICATE_DATA:Ljava/lang/String; = "user_certificate_data"

.field public static final blacklist EXTRA_USER_KEY_ALIAS:Ljava/lang/String; = "user_key_pair_name"

.field public static final greylist-max-o EXTRA_USER_PRIVATE_KEY_DATA:Ljava/lang/String; = "user_private_key_data"

.field public static final greylist-max-o INSTALL_ACTION:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final greylist-max-o INSTALL_AS_USER_ACTION:Ljava/lang/String; = "android.credentials.INSTALL_AS_USER"

.field public static final greylist-max-o LOCKDOWN_VPN:Ljava/lang/String; = "LOCKDOWN_VPN"

.field private static final greylist-max-o LOGTAG:Ljava/lang/String; = "Credentials"

.field public static final blacklist PLATFORM_VPN:Ljava/lang/String; = "PLATFORM_VPN_"

.field public static final greylist-max-o USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o USER_PRIVATE_KEY:Ljava/lang/String; = "USRPKEY_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o USER_SECRET_KEY:Ljava/lang/String; = "USRSKEY_"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o VPN:Ljava/lang/String; = "VPN_"

.field public static final greylist-max-o WIFI:Ljava/lang/String; = "WIFI_"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o convertFromPem([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;->readPemObject()Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;

    move-result-object v5

    move-object v6, v5

    if-eqz v5, :cond_1

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CERTIFICATE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;->close()V

    return-object v4

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemReader;->close()V

    throw v3
.end method

.method public static varargs greylist-max-r convertToPem([Ljava/security/cert/Certificate;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p0, v4

    new-instance v6, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;

    const-string v7, "CERTIFICATE"

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v2, v6}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/internal/org/bouncycastle/util/io/pem/PemObjectGenerator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/util/io/pem/PemWriter;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method
