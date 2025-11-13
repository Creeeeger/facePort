.class public final Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
.super Ljava/lang/Object;
.source "SharedConnectivitySettingsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mInstantTetherEnabled:Z

.field private final blacklist mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->validate(Landroid/app/PendingIntent;)V

    iput-boolean p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;-><init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    .locals 4

    invoke-static {p0}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    invoke-direct {v3, v1, v0, v2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;-><init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-object v3
.end method

.method private static blacklist validate(Landroid/app/PendingIntent;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pending intent must be immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    iget-boolean v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->isInstantTetherEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->getInstantTetherSettingsPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getInstantTetherSettingsPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isInstantTetherEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SharedConnectivitySettingsState["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "instantTetherEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
