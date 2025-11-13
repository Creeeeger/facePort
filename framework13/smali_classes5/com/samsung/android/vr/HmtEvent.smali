.class public Lcom/samsung/android/vr/HmtEvent;
.super Ljava/lang/Object;
.source "HmtEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/HmtEvent$Builder;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_ATTACHED:I = 0x1

.field public static final blacklist ACTION_DETTACHED:I = 0x2

.field public static final blacklist ACTION_MOUNTED:I = 0xb

.field public static final blacklist ACTION_UNMOUNTED:I = 0xc

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/vr/HmtEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist action:I

.field private final blacklist ids:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/samsung/android/vr/HmtEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/vr/HmtEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/vr/HmtEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vr/HmtEvent;->action:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/vr/HmtEvent;->ids:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/vr/HmtEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/vr/HmtEvent$Builder;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget v0, p1, Lcom/samsung/android/vr/HmtEvent$Builder;->action:I

    iput v0, p0, Lcom/samsung/android/vr/HmtEvent;->action:I

    .line 27
    iget-object v0, p1, Lcom/samsung/android/vr/HmtEvent$Builder;->ids:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/vr/HmtEvent;->ids:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static blacklist obtain(I)Lcom/samsung/android/vr/HmtEvent;
    .locals 1
    .param p0, "action"    # I

    .line 61
    new-instance v0, Lcom/samsung/android/vr/HmtEvent$Builder;

    invoke-direct {v0}, Lcom/samsung/android/vr/HmtEvent$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/vr/HmtEvent$Builder;->setAction(I)Lcom/samsung/android/vr/HmtEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/vr/HmtEvent$Builder;->build()Lcom/samsung/android/vr/HmtEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(ILjava/lang/String;)Lcom/samsung/android/vr/HmtEvent;
    .locals 1
    .param p0, "action"    # I
    .param p1, "ids"    # Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/samsung/android/vr/HmtEvent$Builder;

    invoke-direct {v0}, Lcom/samsung/android/vr/HmtEvent$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/vr/HmtEvent$Builder;->setAction(I)Lcom/samsung/android/vr/HmtEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/vr/HmtEvent$Builder;->setIds(Ljava/lang/String;)Lcom/samsung/android/vr/HmtEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/vr/HmtEvent$Builder;->build()Lcom/samsung/android/vr/HmtEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAction()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/samsung/android/vr/HmtEvent;->action:I

    return v0
.end method

.method public blacklist getIds()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/vr/HmtEvent;->ids:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "HmtEvent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Lcom/samsung/android/vr/HmtEvent;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/samsung/android/vr/HmtEvent;->ids:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 77
    const-string v1, ",ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/vr/HmtEvent;->ids:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget v0, p0, Lcom/samsung/android/vr/HmtEvent;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/vr/HmtEvent;->ids:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
