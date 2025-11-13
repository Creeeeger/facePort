.class public final Landroid/view/inputmethod/SelectRangeGesture;
.super Landroid/view/inputmethod/PreviewableHandwritingGesture;
.source "SelectRangeGesture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/SelectRangeGesture$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/SelectRangeGesture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mEndArea:Landroid/graphics/RectF;

.field private blacklist mGranularity:I

.field private blacklist mStartArea:Landroid/graphics/RectF;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/SelectRangeGesture$1;

    invoke-direct {v0}, Landroid/view/inputmethod/SelectRangeGesture$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/SelectRangeGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/PreviewableHandwritingGesture;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mType:I

    iput-object p2, p0, Landroid/view/inputmethod/SelectRangeGesture;->mStartArea:Landroid/graphics/RectF;

    iput-object p3, p0, Landroid/view/inputmethod/SelectRangeGesture;->mEndArea:Landroid/graphics/RectF;

    iput p1, p0, Landroid/view/inputmethod/SelectRangeGesture;->mGranularity:I

    iput-object p4, p0, Landroid/view/inputmethod/SelectRangeGesture;->mFallbackText:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;Landroid/view/inputmethod/SelectRangeGesture-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/SelectRangeGesture;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/PreviewableHandwritingGesture;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mFallbackText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mGranularity:I

    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mStartArea:Landroid/graphics/RectF;

    sget-object v0, Landroid/graphics/RectF;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    iput-object v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mEndArea:Landroid/graphics/RectF;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/SelectRangeGesture-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/SelectRangeGesture;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/view/inputmethod/SelectRangeGesture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/inputmethod/SelectRangeGesture;

    iget v2, p0, Landroid/view/inputmethod/SelectRangeGesture;->mGranularity:I

    iget v3, v0, Landroid/view/inputmethod/SelectRangeGesture;->mGranularity:I

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroid/view/inputmethod/SelectRangeGesture;->mFallbackText:Ljava/lang/String;

    iget-object v3, v0, Landroid/view/inputmethod/SelectRangeGesture;->mFallbackText:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroid/view/inputmethod/SelectRangeGesture;->mStartArea:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/view/inputmethod/SelectRangeGesture;->mStartArea:Landroid/graphics/RectF;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v1, p0, Landroid/view/inputmethod/SelectRangeGesture;->mEndArea:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/view/inputmethod/SelectRangeGesture;->mEndArea:Landroid/graphics/RectF;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getGranularity()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mGranularity:I

    return v0
.end method

.method public whitelist getSelectionEndArea()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mEndArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public whitelist getSelectionStartArea()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mStartArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mGranularity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/SelectRangeGesture;->mStartArea:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/view/inputmethod/SelectRangeGesture;->mEndArea:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/view/inputmethod/SelectRangeGesture;->mFallbackText:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mFallbackText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mGranularity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mStartArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/inputmethod/SelectRangeGesture;->mEndArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
