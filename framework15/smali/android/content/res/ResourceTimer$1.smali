.class Landroid/content/res/ResourceTimer$1;
.super Landroid/os/Handler;
.source "ResourceTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/ResourceTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ResourceTimer;->-$$Nest$smhandleMessage(Landroid/os/Message;)V

    return-void
.end method
