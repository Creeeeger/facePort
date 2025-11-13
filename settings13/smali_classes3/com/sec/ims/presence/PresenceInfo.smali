.class public Lcom/sec/ims/presence/PresenceInfo;
.super Ljava/lang/Object;
.source "PresenceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activities:Ljava/lang/String;

.field private avatar_uri:Ljava/lang/String;

.field private bPublishGzip:Z

.field private birthday:Ljava/lang/String;

.field private contactId:Ljava/lang/String;

.field private cyworld:Ljava/lang/String;

.field private display_name:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private expire_time:J

.field private facebook:Ljava/lang/String;

.field private homepage:Ljava/lang/String;

.field private hyper:I

.field private id:J

.field private isFetchSuccess:Z

.field private mDeviceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private min_expires:J

.field private mood_text:Ljava/lang/String;

.field private phoneId:I

.field private phone_number:Ljava/lang/String;

.field private pidf:Ljava/lang/String;

.field private rawContactId:Ljava/lang/String;

.field private state:I

.field private subscriptionId:Ljava/lang/String;

.field private tel_uri:Ljava/lang/String;

.field private timestamp:J

.field private twitter:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private useExtendedTimer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 680
    new-instance v0, Lcom/sec/ims/presence/PresenceInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/presence/PresenceInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/presence/PresenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 24
    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    .line 66
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 69
    iput v1, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    .line 70
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 24
    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tel_uri="

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contactId="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rawContactId="

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionId="

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isFetchSuccess="

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", avatar_uri="

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", display_name="

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hyper="

    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mood_text="

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", homepage="

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", birthday="

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phone_number="

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cyworld="

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", twitter="

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", facebook="

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activities="

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expire_time="

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", min_expires="

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bPublishGzip="

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/ims/presence/PresenceInfo;->bPublishGzip:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 638
    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 639
    iget p2, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    const-string v0, ""

    if-nez p2, :cond_0

    .line 641
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    :goto_0
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 646
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 648
    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 650
    :goto_1
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 651
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 653
    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 655
    :goto_2
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 656
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 657
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 658
    iget p2, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 660
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    iget p2, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 664
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 665
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 668
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 669
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 670
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 671
    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 672
    iget-object p2, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 673
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    iget-object p0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    .line 676
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return-void
.end method
