.class public Lcom/samsung/android/hardware/context/SemContextApproachAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextApproachAttribute.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextApproachAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mUserID:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->setAttribute()V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "userID"    # I

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    .line 80
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->setAttribute()V

    .line 82
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    .line 66
    return-void
.end method

.method private blacklist setAttribute()V
    .locals 3

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    const-string v2, "UserID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const/4 v1, 0x1

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 97
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method
