.class public Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;
.super Ljava/lang/Object;
.source "SemWindowManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/view/SemWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibleWindowInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist focused:Z

.field public whitelist lastFocused:Z

.field public whitelist name:Ljava/lang/String;

.field public whitelist packageName:Ljava/lang/String;

.field public whitelist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 405
    new-instance v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    invoke-virtual {p0, p1}, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 417
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->packageName:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->type:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->focused:Z

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->lastFocused:Z

    .line 403
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 390
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget v0, p0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-boolean v0, p0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->focused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget-boolean v0, p0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->lastFocused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    return-void
.end method
