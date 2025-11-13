.class public Landroid/os/CancellationSignalBeamer;
.super Ljava/lang/Object;
.source "CancellationSignalBeamer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CancellationSignalBeamer$Receiver;,
        Landroid/os/CancellationSignalBeamer$Sender;
    }
.end annotation


# static fields
.field static final blacklist sCleaner:Ljava/lang/ref/Cleaner;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/system/SystemCleaner;->cleaner()Ljava/lang/ref/Cleaner;

    move-result-object v0

    sput-object v0, Landroid/os/CancellationSignalBeamer;->sCleaner:Ljava/lang/ref/Cleaner;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
