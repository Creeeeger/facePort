.class public final Landroid/view/contentcapture/ContentCaptureCondition;
.super Ljava/lang/Object;
.source "ContentCaptureCondition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureCondition$Flags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_IS_REGEX:I = 0x2


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mLocusId:Landroid/content/LocusId;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/contentcapture/ContentCaptureCondition$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureCondition$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/LocusId;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    iput p2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

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

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/contentcapture/ContentCaptureCondition;

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    iget v4, v2, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-nez v3, :cond_4

    iget-object v3, v2, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-eqz v3, :cond_5

    return v1

    :cond_4
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    iget-object v4, v2, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v3, v4}, Landroid/content/LocusId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    return v0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v3}, Landroid/content/LocusId;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v1}, Landroid/content/LocusId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    if-eqz v1, :cond_0

    nop

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    int-to-long v2, v2

    const-class v4, Landroid/view/contentcapture/ContentCaptureCondition;

    const-string v5, "FLAG_"

    invoke-static {v4, v5, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureCondition;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
