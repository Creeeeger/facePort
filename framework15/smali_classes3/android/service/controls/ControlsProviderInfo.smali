.class public final Landroid/service/controls/ControlsProviderInfo;
.super Ljava/lang/Object;
.source "ControlsProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/ControlsProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ControlsProviderInfo"


# instance fields
.field private final blacklist mAppIntent:Landroid/app/PendingIntent;

.field private final blacklist mAutoRemove:Z

.field private final blacklist mIcon:Landroid/graphics/drawable/Icon;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/controls/ControlsProviderInfo$1;

    invoke-direct {v0}, Landroid/service/controls/ControlsProviderInfo$1;-><init>()V

    sput-object v0, Landroid/service/controls/ControlsProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/controls/ControlsProviderInfo;->mAppIntent:Landroid/app/PendingIntent;

    iput-object p2, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAutoRemove:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/controls/ControlsProviderInfo;->mAppIntent:Landroid/app/PendingIntent;

    iput-object p2, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput-boolean p3, p0, Landroid/service/controls/ControlsProviderInfo;->mAutoRemove:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAppIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAutoRemove:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAppIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public blacklist getAutoRemove()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAutoRemove:Z

    return v0
.end method

.method public blacklist getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAppIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/controls/ControlsProviderInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-boolean v0, p0, Landroid/service/controls/ControlsProviderInfo;->mAutoRemove:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
