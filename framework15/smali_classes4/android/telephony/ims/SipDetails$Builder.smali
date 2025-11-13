.class public final Landroid/telephony/ims/SipDetails$Builder;
.super Ljava/lang/Object;
.source "SipDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SipDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallId:Ljava/lang/String;

.field private blacklist mCseq:I

.field private blacklist mMethod:I

.field private blacklist mReasonHeaderCause:I

.field private blacklist mReasonHeaderText:Ljava/lang/String;

.field private blacklist mResponseCode:I

.field private blacklist mResponsePhrase:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallId(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCseq(Landroid/telephony/ims/SipDetails$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mCseq:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMethod(Landroid/telephony/ims/SipDetails$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mMethod:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReasonHeaderCause(Landroid/telephony/ims/SipDetails$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderCause:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReasonHeaderText(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponseCode(Landroid/telephony/ims/SipDetails$Builder;)I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponseCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponsePhrase(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponsePhrase:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/SipDetails$Builder;->mCseq:I

    iput v0, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponseCode:I

    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponsePhrase:Ljava/lang/String;

    iput v0, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderCause:I

    iput-object v1, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderText:Ljava/lang/String;

    iput p1, p0, Landroid/telephony/ims/SipDetails$Builder;->mMethod:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/ims/SipDetails;
    .locals 2

    new-instance v0, Landroid/telephony/ims/SipDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/SipDetails;-><init>(Landroid/telephony/ims/SipDetails$Builder;Landroid/telephony/ims/SipDetails-IA;)V

    return-object v0
.end method

.method public blacklist setCSeq(I)Landroid/telephony/ims/SipDetails$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/SipDetails$Builder;->mCseq:I

    return-object p0
.end method

.method public blacklist setCallId(Ljava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/SipDetails$Builder;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponseCode:I

    iput-object p2, p0, Landroid/telephony/ims/SipDetails$Builder;->mResponsePhrase:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderCause:I

    iput-object p2, p0, Landroid/telephony/ims/SipDetails$Builder;->mReasonHeaderText:Ljava/lang/String;

    return-object p0
.end method
