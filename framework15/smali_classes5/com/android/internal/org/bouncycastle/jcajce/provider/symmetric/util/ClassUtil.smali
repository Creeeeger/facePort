.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil$1;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method
