.class public final Lcom/samsung/android/allshare/WHADeviceInfo;
.super Ljava/lang/Object;
.source "WHADeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/WHADeviceInfo$ActionState;,
        Lcom/samsung/android/allshare/WHADeviceInfo$PlayState;,
        Lcom/samsung/android/allshare/WHADeviceInfo$WHAState;
    }
.end annotation


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/WHADeviceInfo;->mBundle:Landroid/os/Bundle;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/allshare/WHADeviceInfo;->mBundle:Landroid/os/Bundle;

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist getWhaDeviceStatus()I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/allshare/WHADeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_WHA_DEVICE_STATUS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getWhaName()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/samsung/android/allshare/WHADeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_WHA_FRIENDLY_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWhaPartyID()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/allshare/WHADeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_WHA_PARTY_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWhaPlayState()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/samsung/android/allshare/WHADeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_WHA_PLAY_STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getWhaVolume()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/samsung/android/allshare/WHADeviceInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_WHA_VOLUME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
