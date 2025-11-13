.class public Lcom/android/internal/widget/RemoteLockInfo;
.super Ljava/lang/Object;
.source "RemoteLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RemoteLockInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/RemoteLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CUSTOMER_APP_NAME:Ljava/lang/String; = "customer_app_name"

.field public static final blacklist CUSTOMER_PACKAGE_NAME:Ljava/lang/String; = "customer_package_name"

.field public static final blacklist REMOTE_LOCK_INFO_ALL:I = 0xffff

.field public static final blacklist REMOTE_LOCK_INFO_ALLOWFAILCOUNT:I = 0x80

.field public static final blacklist REMOTE_LOCK_INFO_BLOCKCOUNT:I = 0x200

.field public static final blacklist REMOTE_LOCK_INFO_CLIENTNAME:I = 0x20

.field public static final blacklist REMOTE_LOCK_INFO_CUSTOMER_APP_NAME:I = 0x2000

.field public static final blacklist REMOTE_LOCK_INFO_CUSTOMER_PACKAGE_NAME:I = 0x1000

.field public static final blacklist REMOTE_LOCK_INFO_EC:I = 0x40

.field public static final blacklist REMOTE_LOCK_INFO_EMAIL:I = 0x10

.field public static final blacklist REMOTE_LOCK_INFO_MESSAGE:I = 0x4

.field public static final blacklist REMOTE_LOCK_INFO_PHONENUM:I = 0x8

.field public static final blacklist REMOTE_LOCK_INFO_SKIPPIN:I = 0x400

.field public static final blacklist REMOTE_LOCK_INFO_SKIPSUPPORT:I = 0x800

.field public static final blacklist REMOTE_LOCK_INFO_STATE:I = 0x2

.field public static final blacklist REMOTE_LOCK_INFO_TIMEOUT:I = 0x100

.field public static final blacklist REMOTE_LOCK_INFO_TYPE:I = 0x1


# instance fields
.field public blacklist allowFailCount:I

.field public blacklist bundle:Landroid/os/Bundle;

.field public blacklist clientName:Ljava/lang/CharSequence;

.field public blacklist emailAddress:Ljava/lang/CharSequence;

.field public blacklist enableEmergencyCall:Z

.field public blacklist lockState:Z

.field public blacklist lockTimeOut:J

.field public blacklist lockType:I

.field public blacklist message:Ljava/lang/CharSequence;

.field public blacklist permanentBlockCount:I

.field public blacklist phoneNumber:Ljava/lang/CharSequence;

.field public blacklist skipPinContainer:Z

.field public blacklist skipSupportContainer:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 249
    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo$1;

    invoke-direct {v0}, Lcom/android/internal/widget/RemoteLockInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/RemoteLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJIZZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # Z
    .param p3, "msg"    # Ljava/lang/CharSequence;
    .param p4, "number"    # Ljava/lang/CharSequence;
    .param p5, "email"    # Ljava/lang/CharSequence;
    .param p6, "callbutton"    # Z
    .param p7, "name"    # Ljava/lang/CharSequence;
    .param p8, "count"    # I
    .param p9, "time"    # J
    .param p11, "blockcount"    # I
    .param p12, "skipPin"    # Z
    .param p13, "skipSupport"    # Z
    .param p14, "b"    # Landroid/os/Bundle;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 58
    iput-boolean p2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 59
    iput-object p3, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    .line 60
    iput-object p4, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    .line 61
    iput-object p5, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    .line 62
    iput-object p7, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    .line 63
    iput-boolean p6, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    .line 64
    iput p8, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    .line 65
    iput-wide p9, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 66
    iput p11, p0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    .line 67
    iput-boolean p12, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    .line 68
    iput-boolean p13, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    .line 69
    iput-object p14, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJIZZLandroid/os/Bundle;Lcom/android/internal/widget/RemoteLockInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJIZZLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/RemoteLockInfo$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmLockType(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 75
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmLockState(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 76
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmMessage(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    .line 77
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmPhoneNumber(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    .line 78
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmEmailAddress(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    .line 79
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmClientName(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    .line 80
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmEnableEmergencyCall(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    .line 81
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmAllowFailCount(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    .line 82
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmLockTimeOut(Lcom/android/internal/widget/RemoteLockInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 83
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmPermanentBlockCount(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    .line 84
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmSkipPinContainer(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    .line 85
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmSkipSupportContainer(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    .line 86
    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmBundle(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist diff(Lcom/android/internal/widget/RemoteLockInfo;)I
    .locals 5
    .param p1, "delta"    # Lcom/android/internal/widget/RemoteLockInfo;

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "diff":I
    if-nez p1, :cond_0

    .line 92
    const v1, 0xffff

    return v1

    .line 95
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    if-eq v1, v2, :cond_1

    .line 96
    or-int/lit8 v0, v0, 0x1

    .line 99
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    iget-boolean v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    if-eq v1, v2, :cond_2

    .line 100
    or-int/lit8 v0, v0, 0x2

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 104
    or-int/lit8 v0, v0, 0x4

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 108
    or-int/lit8 v0, v0, 0x8

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 112
    or-int/lit8 v0, v0, 0x10

    .line 115
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    iget-object v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 116
    or-int/lit8 v0, v0, 0x20

    .line 119
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    iget-boolean v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    if-eq v1, v2, :cond_7

    .line 120
    or-int/lit8 v0, v0, 0x40

    .line 123
    :cond_7
    iget v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    if-eq v1, v2, :cond_8

    .line 124
    or-int/lit16 v0, v0, 0x80

    .line 127
    :cond_8
    iget-wide v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    iget-wide v3, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 128
    or-int/lit16 v0, v0, 0x100

    .line 131
    :cond_9
    iget v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    if-eq v1, v2, :cond_a

    .line 132
    or-int/lit16 v0, v0, 0x200

    .line 135
    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    iget-boolean v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    if-eq v1, v2, :cond_b

    .line 136
    or-int/lit16 v0, v0, 0x400

    .line 139
    :cond_b
    iget-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    iget-boolean v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    if-eq v1, v2, :cond_c

    .line 140
    or-int/lit16 v0, v0, 0x800

    .line 143
    :cond_c
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    const-string v2, "customer_app_name"

    const-string v3, "customer_package_name"

    if-eqz v1, :cond_12

    .line 144
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 145
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 146
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 147
    :cond_e
    or-int/lit16 v0, v0, 0x1000

    .line 150
    :cond_f
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 151
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 152
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_14

    iget-object v1, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 153
    :cond_11
    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    .line 155
    :cond_12
    iget-object v1, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_14

    .line 156
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 157
    or-int/lit16 v0, v0, 0x1000

    .line 160
    :cond_13
    iget-object v1, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 161
    or-int/lit16 v0, v0, 0x2000

    .line 165
    :cond_14
    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 285
    iget v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 287
    .local v1, "typeBooleanArray":[Z
    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    const/4 v3, 0x0

    aput-boolean v2, v1, v3

    .line 288
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 289
    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 292
    new-array v0, v0, [Z

    .line 293
    .local v0, "EMCBooleanArray":[Z
    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    aput-boolean v2, v0, v3

    .line 294
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 295
    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 296
    iget v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-wide v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 298
    iget v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 300
    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 301
    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 302
    return-void
.end method
