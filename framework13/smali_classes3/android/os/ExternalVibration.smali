.class public Landroid/os/ExternalVibration;
.super Ljava/lang/Object;
.source "ExternalVibration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ExternalVibration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ExternalVibration"


# instance fields
.field private blacklist mAttrs:Landroid/media/AudioAttributes;

.field private blacklist mController:Landroid/os/IExternalVibrationController;

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Landroid/os/ExternalVibration$1;

    invoke-direct {v0}, Landroid/os/ExternalVibration$1;-><init>()V

    sput-object v0, Landroid/os/ExternalVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/media/AudioAttributes;
    .param p4, "controller"    # Landroid/os/IExternalVibrationController;

    .line 50
    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/ExternalVibration;-><init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;Landroid/os/IBinder;)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/media/AudioAttributes;
    .param p4, "controller"    # Landroid/os/IExternalVibrationController;
    .param p5, "token"    # Landroid/os/IBinder;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroid/os/ExternalVibration;->mUid:I

    .line 62
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    .line 63
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    .line 64
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IExternalVibrationController;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    .line 65
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    .line 76
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 77
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/os/ExternalVibration;->readAudioAttributes(Landroid/os/Parcel;)Landroid/media/AudioAttributes;

    move-result-object v3

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IExternalVibrationController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IExternalVibrationController;

    move-result-object v4

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 80
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/ExternalVibration;-><init>(ILjava/lang/String;Landroid/media/AudioAttributes;Landroid/os/IExternalVibrationController;Landroid/os/IBinder;)V

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/ExternalVibration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/ExternalVibration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist readAudioAttributes(Landroid/os/Parcel;)Landroid/media/AudioAttributes;
    .locals 8
    .param p0, "in"    # Landroid/os/Parcel;

    .line 86
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, "usage":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .local v1, "contentType":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    .local v2, "capturePreset":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 91
    .local v3, "flags":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "tags":Ljava/lang/String;
    const-string v5, "VIRTUAL_VIB_SOUND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, ""

    .line 94
    .local v5, "virtualVibSoundTag":Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 95
    .local v6, "builder":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {v6, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 96
    invoke-virtual {v7, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 97
    invoke-virtual {v7, v2}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 98
    invoke-virtual {v7, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 99
    invoke-virtual {v7, v5}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 100
    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 95
    return-object v7
.end method

.method private static blacklist writeAudioAttributes(Landroid/media/AudioAttributes;Landroid/os/Parcel;I)V
    .locals 1
    .param p0, "attrs"    # Landroid/media/AudioAttributes;
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 197
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const-string v0, "dummy"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 169
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/os/ExternalVibration;

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/ExternalVibration;

    .line 173
    .local v0, "other":Landroid/os/ExternalVibration;
    iget-object v1, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 170
    .end local v0    # "other":Landroid/os/ExternalVibration;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUid()I
    .locals 1

    .line 104
    iget v0, p0, Landroid/os/ExternalVibration;->mUid:I

    return v0
.end method

.method public blacklist getVibrationAttributes()Landroid/os/VibrationAttributes;
    .locals 2

    .line 116
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    iget-object v1, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVibrationAttributesWithTags()Landroid/os/VibrationAttributes;
    .locals 2

    .line 232
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    iget-object v1, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    invoke-direct {v0, v1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isRepeating()Z
    .locals 2

    .line 228
    invoke-virtual {p0}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    nop

    .line 158
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public blacklist mute()Z
    .locals 3

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->mute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 131
    const/4 v0, 0x1

    return v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mute vibration stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalVibration"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalVibration{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/ExternalVibration;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    .line 164
    iget-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 165
    return-void
.end method

.method public blacklist unmute()Z
    .locals 3

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->unmute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 146
    const/4 v0, 0x1

    return v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unmute vibration stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalVibration"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 189
    iget v0, p0, Landroid/os/ExternalVibration;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Landroid/os/ExternalVibration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Landroid/os/ExternalVibration;->mAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0, p1, p2}, Landroid/os/ExternalVibration;->writeAudioAttributes(Landroid/media/AudioAttributes;Landroid/os/Parcel;I)V

    .line 192
    iget-object v0, p0, Landroid/os/ExternalVibration;->mController:Landroid/os/IExternalVibrationController;

    invoke-interface {v0}, Landroid/os/IExternalVibrationController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 193
    iget-object v0, p0, Landroid/os/ExternalVibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 194
    return-void
.end method
