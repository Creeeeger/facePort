.class public Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;
.super Ljava/lang/Object;
.source "GraphicsRendererPolicyCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher$KeyStoreHolder;
    }
.end annotation


# static fields
.field private static final blacklist AES_CBC_PKCS_7_PADDING:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final blacklist ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final blacklist BUFFER_SIZE:I = 0x2000

.field private static final blacklist KEY_SIZE:I = 0x100

.field private static final blacklist SCSPCIPHER_FORMAT:Ljava/lang/String; = "%s_scspcipher_%s"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist appId:Ljava/lang/String;

.field private final blacklist context:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->context:Landroid/content/Context;

    iput-object p2, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->appId:Ljava/lang/String;

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;
    .locals 1

    new-instance v0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;

    invoke-direct {v0, p0, p1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist clear()V
    .locals 2

    iget-object v0, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->context:Landroid/content/Context;

    iget-object v1, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher$KeyStoreHolder;->-$$Nest$smclear(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist decrypt(Ljava/io/File;Ljava/io/OutputStream;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v0, p2}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->TAG:Ljava/lang/String;

    const-string v2, "decrypt"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/16 v2, 0x2000

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    new-array v5, v4, [B

    invoke-virtual {p1, v5, v0, v4}, Ljava/io/InputStream;->read([BII)I

    iget-object v6, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->context:Landroid/content/Context;

    iget-object v7, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->appId:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v6

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v8, 0x2

    invoke-virtual {v1, v8, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v3, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_0
    sget-object v7, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "updateResult result is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    sget-object v2, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->TAG:Ljava/lang/String;

    const-string v3, "decrypt"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public blacklist encrypt(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    sget-object v1, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->TAG:Ljava/lang/String;

    const-string v2, "encrypt"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object v2, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->context:Landroid/content/Context;

    iget-object v3, p0, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->appId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    array-length v4, v2

    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    const/16 v4, 0x2000

    new-array v4, v4, [B

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v5, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {v1, v4, v0, v5}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception v1

    sget-object v2, Landroid/graphics/rendererpolicy/GraphicsRendererPolicyCipher;->TAG:Ljava/lang/String;

    const-string v3, "encrypt ////"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
