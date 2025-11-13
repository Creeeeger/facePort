.class final Landroid/view/contentcapture/ViewNode$ViewNodeText;
.super Ljava/lang/Object;
.source "ViewNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ViewNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewNodeText"
.end annotation


# instance fields
.field blacklist mHint:Ljava/lang/String;

.field blacklist mLineBaselines:[I

.field blacklist mLineCharOffsets:[I

.field blacklist mText:Ljava/lang/CharSequence;

.field blacklist mTextBackgroundColor:I

.field blacklist mTextColor:I

.field blacklist mTextSelectionEnd:I

.field blacklist mTextSelectionStart:I

.field blacklist mTextSize:F

.field blacklist mTextStyle:I


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSize:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method blacklist isSimple()Z
    .locals 2

    iget v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method blacklist writeToParcel(Landroid/os/Parcel;Z)V
    .locals 4

    iget-object v0, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v1, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSize:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget v1, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextStyle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextColor:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p2, :cond_2

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionStart:I

    :goto_0
    nop

    if-eqz v0, :cond_1

    iget v2, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_1
    iget v2, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextSelectionEnd:I

    :goto_1
    nop

    iget v3, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mTextBackgroundColor:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineCharOffsets:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v3, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mLineBaselines:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v3, p0, Landroid/view/contentcapture/ViewNode$ViewNodeText;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
