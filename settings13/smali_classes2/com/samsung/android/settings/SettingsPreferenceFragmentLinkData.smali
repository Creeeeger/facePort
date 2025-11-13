.class public Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragmentLinkData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callerMetric:I

.field public extras:Landroid/os/Bundle;

.field public flowId:I

.field public fragment:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public linkedTitleRes:I

.field public runType:Ljava/lang/String;

.field public titleRes:I

.field public topLevelKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 33
    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 33
    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->runType:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->extras:Landroid/os/Bundle;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 46
    iget v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->linkedTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->runType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 57
    iget p2, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->flowId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget p2, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->callerMetric:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object p0, p0, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->topLevelKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
