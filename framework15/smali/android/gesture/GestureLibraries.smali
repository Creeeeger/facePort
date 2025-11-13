.class public final Landroid/gesture/GestureLibraries;
.super Ljava/lang/Object;
.source "GestureLibraries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gesture/GestureLibraries$FileGestureLibrary;,
        Landroid/gesture/GestureLibraries$ResourceGestureLibrary;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;
    .locals 1

    new-instance v0, Landroid/gesture/GestureLibraries$FileGestureLibrary;

    invoke-direct {v0, p0}, Landroid/gesture/GestureLibraries$FileGestureLibrary;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static whitelist fromFile(Ljava/lang/String;)Landroid/gesture/GestureLibrary;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/gesture/GestureLibrary;
    .locals 2

    new-instance v0, Landroid/gesture/GestureLibraries$FileGestureLibrary;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/gesture/GestureLibraries$FileGestureLibrary;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public static whitelist fromPrivateFile(Landroid/content/Context;Ljava/lang/String;)Landroid/gesture/GestureLibrary;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;
    .locals 1

    new-instance v0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;

    invoke-direct {v0, p0, p1}, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
