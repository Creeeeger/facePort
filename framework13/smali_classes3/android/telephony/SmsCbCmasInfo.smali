.class public final Landroid/telephony/SmsCbCmasInfo;
.super Ljava/lang/Object;
.source "SmsCbCmasInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbCmasInfo$Certainty;,
        Landroid/telephony/SmsCbCmasInfo$Urgency;,
        Landroid/telephony/SmsCbCmasInfo$Severity;,
        Landroid/telephony/SmsCbCmasInfo$ResponseType;,
        Landroid/telephony/SmsCbCmasInfo$Category;,
        Landroid/telephony/SmsCbCmasInfo$Class;
    }
.end annotation


# static fields
.field public static final whitelist CMAS_CATEGORY_CBRNE:I = 0xa

.field public static final whitelist CMAS_CATEGORY_ENV:I = 0x7

.field public static final whitelist CMAS_CATEGORY_FIRE:I = 0x5

.field public static final whitelist CMAS_CATEGORY_GEO:I = 0x0

.field public static final whitelist CMAS_CATEGORY_HEALTH:I = 0x6

.field public static final whitelist CMAS_CATEGORY_INFRA:I = 0x9

.field public static final whitelist CMAS_CATEGORY_MET:I = 0x1

.field public static final whitelist CMAS_CATEGORY_OTHER:I = 0xb

.field public static final whitelist CMAS_CATEGORY_RESCUE:I = 0x4

.field public static final whitelist CMAS_CATEGORY_SAFETY:I = 0x2

.field public static final whitelist CMAS_CATEGORY_SECURITY:I = 0x3

.field public static final whitelist CMAS_CATEGORY_TRANSPORT:I = 0x8

.field public static final whitelist CMAS_CATEGORY_UNKNOWN:I = -0x1

.field public static final whitelist CMAS_CERTAINTY_LIKELY:I = 0x1

.field public static final whitelist CMAS_CERTAINTY_OBSERVED:I = 0x0

.field public static final whitelist CMAS_CERTAINTY_UNKNOWN:I = -0x1

.field public static final whitelist CMAS_CLASS_CHILD_ABDUCTION_EMERGENCY:I = 0x3

.field public static final whitelist CMAS_CLASS_CMAS_EXERCISE:I = 0x5

.field public static final whitelist CMAS_CLASS_EXTREME_THREAT:I = 0x1

.field public static final whitelist CMAS_CLASS_OPERATOR_DEFINED_USE:I = 0x6

.field public static final whitelist CMAS_CLASS_PRESIDENTIAL_LEVEL_ALERT:I = 0x0

.field public static final whitelist CMAS_CLASS_REQUIRED_MONTHLY_TEST:I = 0x4

.field public static final whitelist CMAS_CLASS_SEVERE_THREAT:I = 0x2

.field public static final whitelist CMAS_CLASS_UNKNOWN:I = -0x1

.field public static final whitelist CMAS_RESPONSE_TYPE_ASSESS:I = 0x6

.field public static final whitelist CMAS_RESPONSE_TYPE_AVOID:I = 0x5

.field public static final whitelist CMAS_RESPONSE_TYPE_EVACUATE:I = 0x1

.field public static final whitelist CMAS_RESPONSE_TYPE_EXECUTE:I = 0x3

.field public static final whitelist CMAS_RESPONSE_TYPE_MONITOR:I = 0x4

.field public static final whitelist CMAS_RESPONSE_TYPE_NONE:I = 0x7

.field public static final whitelist CMAS_RESPONSE_TYPE_PREPARE:I = 0x2

.field public static final whitelist CMAS_RESPONSE_TYPE_SHELTER:I = 0x0

.field public static final whitelist CMAS_RESPONSE_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist CMAS_SEVERITY_EXTREME:I = 0x0

.field public static final whitelist CMAS_SEVERITY_SEVERE:I = 0x1

.field public static final whitelist CMAS_SEVERITY_UNKNOWN:I = -0x1

.field public static final whitelist CMAS_URGENCY_EXPECTED:I = 0x1

.field public static final whitelist CMAS_URGENCY_IMMEDIATE:I = 0x0

.field public static final whitelist CMAS_URGENCY_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbCmasInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAlertHandling:I

.field private final greylist-max-o mCategory:I

.field private final greylist-max-o mCertainty:I

.field private blacklist mLanguage:I

.field private final greylist-max-o mMessageClass:I

.field private blacklist mMessageID:I

.field private blacklist mMsgExpires:J

.field private blacklist mRecordType:I

.field private final greylist-max-o mResponseType:I

.field private final greylist-max-o mSeverity:I

.field private final greylist-max-o mUrgency:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 417
    new-instance v0, Landroid/telephony/SmsCbCmasInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbCmasInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbCmasInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIIII)V
    .locals 3
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 290
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 291
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 292
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 293
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 294
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 297
    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    .line 298
    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    .line 299
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    .line 300
    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    .line 302
    return-void
.end method

.method public constructor blacklist <init>(IIIIIII)V
    .locals 0
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I
    .param p7, "recordTypeAll"    # I

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 474
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 475
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 476
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 477
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 478
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 479
    iput p7, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 480
    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIIJII)V
    .locals 0
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I
    .param p7, "messageID"    # I
    .param p8, "alertHandling"    # I
    .param p9, "msgExpires"    # J
    .param p11, "language"    # I
    .param p12, "recordTypeAll"    # I

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 491
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 492
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 493
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 494
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 495
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 496
    iput p7, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    .line 497
    iput p8, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    .line 498
    iput-wide p9, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    .line 499
    iput p11, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    .line 500
    iput p12, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 501
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 319
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAlertHandling()I
    .locals 1

    .line 516
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    return v0
.end method

.method public blacklist getCMASRecordTypeFirstExists()Z
    .locals 3

    .line 545
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0
.end method

.method public blacklist getCMASRecordTypeSecondExists()Z
    .locals 3

    .line 556
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 557
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0
.end method

.method public whitelist getCategory()I
    .locals 1

    .line 357
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    return v0
.end method

.method public whitelist getCertainty()I
    .locals 1

    .line 390
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    return v0
.end method

.method public blacklist getLanguage()I
    .locals 1

    .line 536
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    return v0
.end method

.method public whitelist getMessageClass()I
    .locals 1

    .line 349
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    return v0
.end method

.method public blacklist getMessageID()I
    .locals 1

    .line 508
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    return v0
.end method

.method public blacklist getMsgExpires()J
    .locals 3

    .line 525
    :try_start_0
    iget-wide v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/NullPointerException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public whitelist getResponseType()I
    .locals 1

    .line 365
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    return v0
.end method

.method public whitelist getSeverity()I
    .locals 1

    .line 373
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    return v0
.end method

.method public whitelist getUrgency()I
    .locals 1

    .line 381
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbCmasInfo{messageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urgency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", certainty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alertHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMsgExpires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 329
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-wide v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 340
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    return-void
.end method
