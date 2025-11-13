.class public final Landroid/service/autofill/FillRequest;
.super Ljava/lang/Object;
.source "FillRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillRequest$RequestFlags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/FillRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_COMPATIBILITY_MODE_REQUEST:I = 0x2

.field public static final blacklist FLAG_IME_SHOWING:I = 0x80

.field public static final whitelist FLAG_MANUAL_REQUEST:I = 0x1

.field public static final blacklist FLAG_PASSWORD_INPUT_TYPE:I = 0x4

.field public static final blacklist FLAG_PCC_DETECTION:I = 0x200

.field public static final blacklist FLAG_RESET_FILL_DIALOG_STATE:I = 0x100

.field public static final blacklist FLAG_SCREEN_HAS_CREDMAN_FIELD:I = 0x400

.field public static final whitelist FLAG_SUPPORTS_FILL_DIALOG:I = 0x40

.field public static final blacklist FLAG_VIEW_NOT_FOCUSED:I = 0x10

.field public static final blacklist FLAG_VIEW_REQUESTS_CREDMAN_SERVICE:I = 0x800

.field public static final greylist-max-o INVALID_REQUEST_ID:I = -0x80000000


# instance fields
.field private final greylist-max-o mClientState:Landroid/os/Bundle;

.field private final blacklist mDelayedFillIntentSender:Landroid/content/IntentSender;

.field private final blacklist mFillContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFlags:I

.field private final blacklist mHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mId:I

.field private final blacklist mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/FillRequest$1;

    invoke-direct {v0}, Landroid/service/autofill/FillRequest$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;Ljava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/content/IntentSender;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/service/autofill/FillContext;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "I",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/autofill/FillRequest;->mId:I

    iput-object p2, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p4, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    iput p5, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    iget v0, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    const/16 v1, 0xfd7

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput-object p6, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    iput-object p7, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    invoke-direct {p0}, Landroid/service/autofill/FillRequest;->onConstructed()V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v3, Landroid/service/autofill/FillContext;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    and-int/lit8 v4, v0, 0x8

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    and-int/lit8 v7, v0, 0x20

    if-nez v7, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    sget-object v7, Landroid/view/inputmethod/InlineSuggestionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InlineSuggestionsRequest;

    :goto_1
    and-int/lit8 v8, v0, 0x40

    if-nez v8, :cond_2

    move-object v8, v5

    goto :goto_2

    :cond_2
    sget-object v8, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentSender;

    :goto_2
    iput v1, p0, Landroid/service/autofill/FillRequest;->mId:I

    iput-object v2, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    invoke-static {v9, v5, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    const-class v9, Landroid/annotation/NonNull;

    iget-object v10, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    invoke-static {v9, v5, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    iput v6, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    iget v5, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    const/16 v9, 0xfd7

    invoke-static {v5, v9}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput-object v7, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    iput-object v8, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    invoke-direct {p0}, Landroid/service/autofill/FillRequest;->onConstructed()V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private blacklist onConstructed()V
    .locals 2

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    const-string v1, "contexts"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    const-string v1, "hints"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    return-void
.end method

.method public static blacklist requestFlagsToString(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/service/autofill/FillRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/autofill/FillRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist singleRequestFlagsToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "FLAG_VIEW_REQUESTS_CREDMAN_SERVICE"

    return-object v0

    :sswitch_1
    const-string v0, "FLAG_SCREEN_HAS_CREDMAN_FIELD"

    return-object v0

    :sswitch_2
    const-string v0, "FLAG_PCC_DETECTION"

    return-object v0

    :sswitch_3
    const-string v0, "FLAG_RESET_FILL_DIALOG_STATE"

    return-object v0

    :sswitch_4
    const-string v0, "FLAG_IME_SHOWING"

    return-object v0

    :sswitch_5
    const-string v0, "FLAG_SUPPORTS_FILL_DIALOG"

    return-object v0

    :sswitch_6
    const-string v0, "FLAG_VIEW_NOT_FOCUSED"

    return-object v0

    :sswitch_7
    const-string v0, "FLAG_PASSWORD_INPUT_TYPE"

    return-object v0

    :sswitch_8
    const-string v0, "FLAG_COMPATIBILITY_MODE_REQUEST"

    return-object v0

    :sswitch_9
    const-string v0, "FLAG_MANUAL_REQUEST"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x4 -> :sswitch_7
        0x10 -> :sswitch_6
        0x40 -> :sswitch_5
        0x80 -> :sswitch_4
        0x100 -> :sswitch_3
        0x200 -> :sswitch_2
        0x400 -> :sswitch_1
        0x800 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClientState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getDelayedFillIntentSender()Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    return-object v0
.end method

.method public whitelist getFillContexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    return v0
.end method

.method public whitelist getHints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillRequest;->mId:I

    return v0
.end method

.method public whitelist getInlineSuggestionsRequest()Landroid/view/inputmethod/InlineSuggestionsRequest;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FillRequest { id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillRequest;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fillContexts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clientState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    invoke-static {v1}, Landroid/service/autofill/FillRequest;->requestFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inlineSuggestionsRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delayedFillIntentSender = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_0
    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    :cond_1
    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    if-eqz v1, :cond_2

    or-int/lit8 v1, v0, 0x40

    int-to-byte v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/service/autofill/FillRequest;->mId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mFillContexts:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mHints:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_3
    iget v1, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_4
    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/service/autofill/FillRequest;->mDelayedFillIntentSender:Landroid/content/IntentSender;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_5
    return-void
.end method
