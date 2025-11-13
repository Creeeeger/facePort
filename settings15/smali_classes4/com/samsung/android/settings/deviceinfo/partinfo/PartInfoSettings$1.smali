.class public final Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/io/FilenameFilter;


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/settings/deviceinfo/partinfo/PartInfoUtils;->validCheckReplacementFileName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
