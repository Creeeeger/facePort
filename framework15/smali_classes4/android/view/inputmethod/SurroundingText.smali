.class public final Landroid/view/inputmethod/SurroundingText;
.super Ljava/lang/Object;
.source "SurroundingText.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/SurroundingText;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mOffset:I

.field private final blacklist mSelectionEnd:I

.field private final blacklist mSelectionStart:I

.field private final blacklist mText:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/SurroundingText$1;

    invoke-direct {v0}, Landroid/view/inputmethod/SurroundingText$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/SurroundingText;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/inputmethod/SurroundingText;->copyWithParcelableSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    iput p3, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    iput p4, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    return-void
.end method

.method private static blacklist copyWithParcelableSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_2
    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOffset()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    return v0
.end method

.method public whitelist getSelectionEnd()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    return v0
.end method

.method public whitelist getSelectionStart()I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isEqualTo(Landroid/view/inputmethod/SurroundingText;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    iget v2, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    iget v3, p1, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    iget v3, p1, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    iget v3, p1, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/SurroundingText;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/inputmethod/SurroundingText;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
