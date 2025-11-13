.class public final Lcom/android/systemui/controls/util/EncryptDecryptWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final encryptDecrypt:Lcom/android/systemui/controls/util/EncryptDecrypt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/util/EncryptDecryptWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/util/EncryptDecryptWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/controls/util/EncryptDecrypt;

    invoke-direct {v0}, Lcom/android/systemui/controls/util/EncryptDecrypt;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/controls/util/EncryptDecryptWrapper;->encryptDecrypt:Lcom/android/systemui/controls/util/EncryptDecrypt;

    return-void
.end method

.method public static setup(Ljava/io/File;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :goto_2
    const-string v0, "make file Exception: "

    const-string v1, "EncryptDecryptWrapper"

    invoke-static {v0, p0, v1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final decryptFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/systemui/controls/util/EncryptDecryptWrapper;->setup(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-static {p2}, Lcom/android/systemui/controls/util/EncryptDecryptWrapper;->setup(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/controls/util/EncryptDecryptWrapper;->encryptDecrypt:Lcom/android/systemui/controls/util/EncryptDecrypt;

    invoke-virtual {p4}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->getValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "AES/CBC/PKCS5Padding"

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p4

    new-array p4, p4, [B

    invoke-virtual {v2, p4}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_1

    :goto_0
    move-object p1, v1

    goto :goto_2

    :cond_1
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    if-ne p1, v0, :cond_3

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p4

    if-gtz p4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p3, p1}, Lcom/android/systemui/controls/util/EncryptDecrypt;->generatePBKDF2SecretKey(Ljava/lang/String;[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lcom/android/systemui/controls/util/EncryptDecrypt;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p1

    :goto_1
    const/4 p3, 0x2

    invoke-virtual {p0, p3, p1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, v2, p0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-nez p1, :cond_4

    :try_start_2
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_4
    :try_start_3
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 p2, 0x400

    :try_start_4
    new-array p3, p2, [B

    :goto_3
    invoke-virtual {p1, p3, v3, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p4

    const/4 v4, -0x1

    if-eq p4, v4, :cond_5

    invoke-virtual {p0, p3, v3, p4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    :cond_5
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return v0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_4

    :catchall_2
    move-exception p2

    :try_start_8
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p3

    :try_start_9
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_4
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p2

    :try_start_b
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_5
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception p1

    :try_start_d
    invoke-static {v2, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_7
    return v3
.end method

.method public final encryptFile(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;)Z
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/controls/util/EncryptDecryptWrapper;->setup(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/android/systemui/controls/util/EncryptDecryptWrapper;->setup(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/controls/util/EncryptDecryptWrapper;->encryptDecrypt:Lcom/android/systemui/controls/util/EncryptDecrypt;

    invoke-virtual {p4}, Lcom/android/systemui/controls/util/ControlsBackUpRestore$BNRSecurityLevel;->getValue()I

    move-result p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p3, p2}, Lcom/android/systemui/controls/util/EncryptDecrypt;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 p1, 0x400

    :try_start_3
    new-array p3, p1, [B

    :goto_0
    invoke-virtual {p2, p3, v1, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p4

    const/4 v2, -0x1

    if-eq p4, v2, :cond_1

    invoke-virtual {p0, p3, v1, p4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 p1, 0x0

    :try_start_4
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p3

    :try_start_8
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception p2

    :try_start_a
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_2
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception p1

    :try_start_c
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_4
    return v1
.end method
