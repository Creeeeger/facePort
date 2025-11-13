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

    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo$1;

    invoke-direct {v0}, Lcom/android/internal/widget/RemoteLockInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/RemoteLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJIZZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    iput-boolean p2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    iput-object p3, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    iput-boolean p6, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    iput p8, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    iput-wide p9, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    iput p11, p0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    iput-boolean p12, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    iput-boolean p13, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    iput-object p14, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJIZZLandroid/os/Bundle;Lcom/android/internal/widget/RemoteLockInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJIZZLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/RemoteLockInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmLockType(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmLockState(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmMessage(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmPhoneNumber(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmEmailAddress(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmClientName(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmEnableEmergencyCall(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmAllowFailCount(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmLockTimeOut(Lcom/android/internal/widget/RemoteLockInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmPermanentBlockCount(Lcom/android/internal/widget/RemoteLockInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmSkipPinContainer(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmSkipSupportContainer(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    invoke-static {p1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->-$$Nest$fgetmBundle(Lcom/android/internal/widget/RemoteLockInfo$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist diff(Lcom/android/internal/widget/RemoteLockInfo;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const v1, 0xffff

    return v1

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    if-eq v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    iget-boolean v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    if-eq v1, v2, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    or-int/lit8 v0, v0, 0x8

    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    or-int/lit8 v0, v0, 0x10

    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    or-int/lit8 v0, v0, 0x20

    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    iget-boolean v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    if-eq v1, v2, :cond_7

    or-int/lit8 v0, v0, 0x40

    :cond_7
    iget v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    if-eq v1, v2, :cond_8

    or-int/lit16 v0, v0, 0x80

    :cond_8
    iget-wide v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    iget-wide v3, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x100

    :cond_9
    iget v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    if-eq v1, v2, :cond_a

    or-int/lit16 v0, v0, 0x200

    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    iget-boolean v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    if-eq v1, v2, :cond_b

    or-int/lit16 v0, v0, 0x400

    :cond_b
    iget-boolean v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    iget-boolean v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    if-eq v1, v2, :cond_c

    or-int/lit16 v0, v0, 0x800

    :cond_c
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    const-string v2, "customer_app_name"

    const-string v3, "customer_package_name"

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_f

    :cond_e
    or-int/lit16 v0, v0, 0x1000

    :cond_f
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    iget-object v1, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_14

    iget-object v1, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_14

    :cond_11
    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    :cond_12
    iget-object v1, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_13

    or-int/lit16 v0, v0, 0x1000

    :cond_13
    iget-object v1, p1, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_14

    or-int/lit16 v0, v0, 0x2000

    :cond_14
    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    new-array v1, v0, [Z

    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    const/4 v3, 0x0

    aput-boolean v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    new-array v0, v0, [Z

    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    aput-boolean v2, v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v2, p0, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
