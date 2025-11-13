.class public final Landroid/service/quicksettings/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/quicksettings/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_ACTIVE:I = 0x2

.field public static final whitelist STATE_INACTIVE:I = 0x1

.field public static final whitelist STATE_UNAVAILABLE:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Tile"


# instance fields
.field private greylist-max-o mContentDescription:Ljava/lang/CharSequence;

.field private blacklist mDefaultLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mService:Landroid/service/quicksettings/IQSService;

.field private greylist-max-o mState:I

.field private blacklist mStateDescription:Ljava/lang/CharSequence;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private greylist-max-o mToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/quicksettings/Tile$1;

    invoke-direct {v0}, Landroid/service/quicksettings/Tile$1;-><init>()V

    sput-object v0, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    invoke-direct {p0, p1}, Landroid/service/quicksettings/Tile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mDefaultLabel:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mSubtitle:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/service/quicksettings/Tile;->mStateDescription:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActivityLaunchForClick()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getCustomLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mDefaultLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public whitelist getState()I
    .locals 1

    iget v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    return v0
.end method

.method public whitelist getStateDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mStateDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist setActivityLaunchForClick(Landroid/app/PendingIntent;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setDefaultLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mDefaultLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public greylist-max-o setService(Landroid/service/quicksettings/IQSService;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mService:Landroid/service/quicksettings/IQSService;

    iput-object p2, p0, Landroid/service/quicksettings/Tile;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public whitelist setState(I)V
    .locals 0

    iput p1, p0, Landroid/service/quicksettings/Tile;->mState:I

    return-void
.end method

.method public whitelist setStateDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mStateDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/service/quicksettings/Tile;->mSubtitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public whitelist updateTile()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mService:Landroid/service/quicksettings/IQSService;

    iget-object v1, p0, Landroid/service/quicksettings/Tile;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/service/quicksettings/IQSService;->updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Tile"

    const-string v2, "Couldn\'t update tile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    :goto_1
    iget v0, p0, Landroid/service/quicksettings/Tile;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mDefaultLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/quicksettings/Tile;->mStateDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
