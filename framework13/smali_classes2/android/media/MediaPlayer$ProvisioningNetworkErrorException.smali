.class public final Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;
.super Landroid/media/MediaDrmException;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisioningNetworkErrorException"
.end annotation


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 6189
    invoke-direct {p0, p1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    .line 6190
    return-void
.end method
