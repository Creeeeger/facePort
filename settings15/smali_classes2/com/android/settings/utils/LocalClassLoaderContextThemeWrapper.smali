.class public final Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;
.super Landroid/view/ContextThemeWrapper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mLocalClass:Ljava/lang/Class;


# virtual methods
.method public final getClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;->mLocalClass:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method
