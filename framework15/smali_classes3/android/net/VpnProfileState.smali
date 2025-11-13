.class public final Landroid/net/VpnProfileState;
.super Ljava/lang/Object;
.source "VpnProfileState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnProfileState$State;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/VpnProfileState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_CONNECTED:I = 0x2

.field public static final whitelist STATE_CONNECTING:I = 0x1

.field public static final whitelist STATE_DISCONNECTED:I = 0x0

.field public static final whitelist STATE_FAILED:I = 0x3


# instance fields
.field private final blacklist mAlwaysOn:Z

.field private final blacklist mLockdown:Z

.field private final blacklist mSessionKey:Ljava/lang/String;

.field private final blacklist mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/VpnProfileState$1;

    invoke-direct {v0}, Landroid/net/VpnProfileState$1;-><init>()V

    sput-object v0, Landroid/net/VpnProfileState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/VpnProfileState;->mState:I

    iput-object p2, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    iput-boolean p4, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/VpnProfileState;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/VpnProfileState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/VpnProfileState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist convertStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "FAILED"

    return-object v0

    :pswitch_1
    const-string v0, "CONNECTED"

    return-object v0

    :pswitch_2
    const-string v0, "CONNECTING"

    return-object v0

    :pswitch_3
    const-string v0, "DISCONNECTED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/net/VpnProfileState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/VpnProfileState;

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getState()I

    move-result v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->getState()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1
.end method

.method public whitelist getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getState()I
    .locals 1

    iget v0, p0, Landroid/net/VpnProfileState;->mState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAlwaysOn()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    return v0
.end method

.method public whitelist isLockdownEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "{"

    const-string/jumbo v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/net/VpnProfileState;->convertStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Always-on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isAlwaysOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lockdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/VpnProfileState;->isLockdownEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/VpnProfileState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/VpnProfileState;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mAlwaysOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/VpnProfileState;->mLockdown:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
