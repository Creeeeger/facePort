.class public Lcom/android/internal/telephony/SemDMACdata;
.super Ljava/lang/Object;
.source "SemDMACdata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/SemDMACdata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist carrierActivatedId:Ljava/lang/String;

.field private blacklist isUnLockedPhone:Ljava/lang/String;

.field private blacklist mccmnc:Ljava/lang/String;

.field private blacklist preInstalledMsgAppError:Ljava/lang/String;

.field private blacklist tssActivated:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/SemDMACdata$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemDMACdata$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemDMACdata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "None"

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->preInstalledMsgAppError:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->tssActivated:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->carrierActivatedId:Ljava/lang/String;

    const-string/jumbo v1, "false"

    iput-object v1, p0, Lcom/android/internal/telephony/SemDMACdata;->isUnLockedPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->mccmnc:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->preInstalledMsgAppError:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->tssActivated:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->carrierActivatedId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->isUnLockedPhone:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->mccmnc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierActivatedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->carrierActivatedId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIsUnLockedPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->isUnLockedPhone:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMccmnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->mccmnc:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPreInstalledMsgAppError()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->preInstalledMsgAppError:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTssActivated()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->tssActivated:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setCarrierActivatedId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SemDMACdata;->carrierActivatedId:Ljava/lang/String;

    return-void
.end method

.method public blacklist setIsUnLockedPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SemDMACdata;->isUnLockedPhone:Ljava/lang/String;

    return-void
.end method

.method public blacklist setMccmnc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SemDMACdata;->mccmnc:Ljava/lang/String;

    return-void
.end method

.method public blacklist setPreInstalledMsgAppError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SemDMACdata;->preInstalledMsgAppError:Ljava/lang/String;

    return-void
.end method

.method public blacklist setTssActivated(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SemDMACdata;->tssActivated:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->preInstalledMsgAppError:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->tssActivated:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->carrierActivatedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->isUnLockedPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SemDMACdata;->mccmnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    return-void
.end method
