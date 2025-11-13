.class public final Landroid/telephony/satellite/NtnSignalStrength;
.super Ljava/lang/Object;
.source "NtnSignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/NtnSignalStrength$NtnSignalStrengthLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/NtnSignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NTN_SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final whitelist NTN_SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final whitelist NTN_SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final whitelist NTN_SIGNAL_STRENGTH_NONE:I = 0x0

.field public static final whitelist NTN_SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private blacklist mLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/NtnSignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/satellite/NtnSignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/NtnSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/NtnSignalStrength;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/NtnSignalStrength-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/NtnSignalStrength;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/satellite/NtnSignalStrength;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/satellite/NtnSignalStrength;->getLevel()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/NtnSignalStrength;

    iget v3, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    iget v4, v2, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getLevel()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NtnSignalStrength{mLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
