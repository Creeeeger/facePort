.class public Landroid/os/SemHcmManager;
.super Ljava/lang/Object;
.source "SemHcmManager.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field blacklist mHandler:Landroid/os/Handler;

.field blacklist mService:Landroid/os/ISemHcmManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-class v0, Landroid/os/SemHcmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/SemHcmManager;->TAG:Ljava/lang/String;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/SemHcmManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/ISemHcmManager;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SemHcmManager;->mService:Landroid/os/ISemHcmManager;

    iput-object p1, p0, Landroid/os/SemHcmManager;->mService:Landroid/os/ISemHcmManager;

    iput-object p2, p0, Landroid/os/SemHcmManager;->mHandler:Landroid/os/Handler;

    return-void
.end method
