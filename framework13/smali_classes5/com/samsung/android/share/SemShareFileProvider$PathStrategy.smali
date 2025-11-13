.class interface abstract Lcom/samsung/android/share/SemShareFileProvider$PathStrategy;
.super Ljava/lang/Object;
.source "SemShareFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SemShareFileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PathStrategy"
.end annotation


# virtual methods
.method public abstract blacklist getFileForUri(Landroid/net/Uri;)Ljava/io/File;
.end method

.method public abstract blacklist getUriForFile(Ljava/io/File;)Landroid/net/Uri;
.end method
