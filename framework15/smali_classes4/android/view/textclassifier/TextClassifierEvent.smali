.class public abstract Landroid/view/textclassifier/TextClassifierEvent;
.super Ljava/lang/Object;
.source "TextClassifierEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierEvent$Builder;,
        Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent;,
        Landroid/view/textclassifier/TextClassifierEvent$Type;,
        Landroid/view/textclassifier/TextClassifierEvent$Category;
    }
.end annotation


# static fields
.field public static final whitelist CATEGORY_CONVERSATION_ACTIONS:I = 0x3

.field public static final whitelist CATEGORY_LANGUAGE_DETECTION:I = 0x4

.field public static final whitelist CATEGORY_LINKIFY:I = 0x2

.field public static final whitelist CATEGORY_SELECTION:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassifierEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PARCEL_TOKEN_CONVERSATION_ACTION_EVENT:I = 0x3

.field private static final blacklist PARCEL_TOKEN_LANGUAGE_DETECTION_EVENT:I = 0x4

.field private static final blacklist PARCEL_TOKEN_TEXT_LINKIFY_EVENT:I = 0x2

.field private static final blacklist PARCEL_TOKEN_TEXT_SELECTION_EVENT:I = 0x1

.field public static final whitelist TYPE_ACTIONS_GENERATED:I = 0x14

.field public static final whitelist TYPE_ACTIONS_SHOWN:I = 0x6

.field public static final whitelist TYPE_AUTO_SELECTION:I = 0x5

.field public static final whitelist TYPE_COPY_ACTION:I = 0x9

.field public static final whitelist TYPE_CUT_ACTION:I = 0xb

.field public static final whitelist TYPE_LINKS_GENERATED:I = 0x15

.field public static final whitelist TYPE_LINK_CLICKED:I = 0x7

.field public static final whitelist TYPE_MANUAL_REPLY:I = 0x13

.field public static final whitelist TYPE_OTHER_ACTION:I = 0x10

.field public static final whitelist TYPE_OVERTYPE:I = 0x8

.field public static final whitelist TYPE_PASTE_ACTION:I = 0xa

.field public static final blacklist TYPE_READ_CLIPBOARD:I = 0x16

.field public static final whitelist TYPE_SELECTION_DESTROYED:I = 0xf

.field public static final whitelist TYPE_SELECTION_DRAG:I = 0xe

.field public static final whitelist TYPE_SELECTION_MODIFIED:I = 0x2

.field public static final whitelist TYPE_SELECTION_RESET:I = 0x12

.field public static final whitelist TYPE_SELECTION_STARTED:I = 0x1

.field public static final whitelist TYPE_SELECT_ALL:I = 0x11

.field public static final whitelist TYPE_SHARE_ACTION:I = 0xc

.field public static final whitelist TYPE_SMART_ACTION:I = 0xd

.field public static final whitelist TYPE_SMART_SELECTION_MULTI:I = 0x4

.field public static final whitelist TYPE_SMART_SELECTION_SINGLE:I = 0x3


# instance fields
.field private final blacklist mActionIndices:[I

.field private final blacklist mEntityTypes:[Ljava/lang/String;

.field private final blacklist mEventCategory:I

.field private blacklist mEventContext:Landroid/view/textclassifier/TextClassificationContext;

.field private final blacklist mEventIndex:I

.field private final blacklist mEventType:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field public blacklist mHiddenTempSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private final blacklist mLocale:Landroid/icu/util/ULocale;

.field private final blacklist mModelName:Ljava/lang/String;

.field private final blacklist mResultId:Ljava/lang/String;

.field private final blacklist mScores:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierEvent$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifierEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    const-class v0, Landroid/view/textclassifier/TextClassificationContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationContext;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v2, v0, [F

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readFloatArray([F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventCategory(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventType(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEntityTypes(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventContext(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmResultId(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmEventIndex(Landroid/view/textclassifier/TextClassifierEvent$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmScores(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmModelName(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmActionIndices(Landroid/view/textclassifier/TextClassifierEvent$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmLocale(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmExtras(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/textclassifier/TextClassifierEvent$Builder;->-$$Nest$fgetmExtras(Landroid/view/textclassifier/TextClassifierEvent$Builder;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;)V

    return-void
.end method

.method private blacklist getParcelToken()I
    .locals 3

    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    instance-of v0, p0, Landroid/view/textclassifier/TextClassifierEvent$ConversationActionsEvent;

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActionIndices()[I
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    return-object v0
.end method

.method public whitelist getEntityTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEventCategory()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    return v0
.end method

.method public whitelist getEventContext()Landroid/view/textclassifier/TextClassificationContext;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    return-object v0
.end method

.method public whitelist getEventIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    return v0
.end method

.method public whitelist getEventType()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getLocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResultId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScores()[F
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    return-object v0
.end method

.method blacklist setEventContext(Landroid/view/textclassifier/TextClassificationContext;)V
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    return-void
.end method

.method public final blacklist toSelectionEvent()Landroid/view/textclassifier/SelectionEvent;
    .locals 10

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventCategory()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEntityTypes()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const-string v2, ""

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEntityTypes()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    move-object v7, v1

    goto :goto_1

    :cond_0
    move-object v7, v2

    :goto_1
    new-instance v1, Landroid/view/textclassifier/SelectionEvent;

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/textclassifier/SelectionEvent;->setInvocationMethod(I)V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/textclassifier/SelectionEvent;->setTextClassificationSessionContext(Landroid/view/textclassifier/TextClassificationContext;)V

    :cond_1
    iget-object v4, p0, Landroid/view/textclassifier/TextClassifierEvent;->mHiddenTempSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v1, v4}, Landroid/view/textclassifier/SelectionEvent;->setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getResultId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/textclassifier/SelectionEvent;->setResultId(Ljava/lang/String;)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/SelectionEvent;->setEventIndex(I)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getEventType()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x0

    goto :goto_3

    :pswitch_3
    const/16 v2, 0xc9

    goto :goto_3

    :pswitch_4
    const/16 v2, 0xc8

    goto :goto_3

    :pswitch_5
    const/16 v2, 0x6c

    goto :goto_3

    :pswitch_6
    const/16 v2, 0x6b

    goto :goto_3

    :pswitch_7
    const/16 v2, 0x6a

    goto :goto_3

    :pswitch_8
    const/16 v2, 0x69

    goto :goto_3

    :pswitch_9
    const/16 v2, 0x68

    goto :goto_3

    :pswitch_a
    const/16 v2, 0x67

    goto :goto_3

    :pswitch_b
    const/16 v2, 0x66

    goto :goto_3

    :pswitch_c
    const/16 v2, 0x65

    goto :goto_3

    :pswitch_d
    const/16 v2, 0x64

    goto :goto_3

    :pswitch_e
    const/4 v2, 0x5

    goto :goto_3

    :pswitch_f
    const/4 v2, 0x4

    goto :goto_3

    :pswitch_10
    const/4 v2, 0x3

    goto :goto_3

    :pswitch_11
    const/4 v2, 0x2

    goto :goto_3

    :pswitch_12
    const/4 v2, 0x1

    nop

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/textclassifier/SelectionEvent;->setEventType(I)V

    instance-of v5, p0, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    if-eqz v5, :cond_3

    move-object v5, p0

    check-cast v5, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeWordStartIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/textclassifier/SelectionEvent;->setStart(I)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeWordEndIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/textclassifier/SelectionEvent;->setEnd(I)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeSuggestedWordStartIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/textclassifier/SelectionEvent;->setSmartStart(I)Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$TextSelectionEvent;->getRelativeSuggestedWordEndIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/textclassifier/SelectionEvent;->setSmartEnd(I)Landroid/view/textclassifier/SelectionEvent;

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_2
        :pswitch_2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEventCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEntityTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEventContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResultId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEventIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mScores="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mModelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mActionIndices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/view/textclassifier/TextClassifierEvent;->toString(Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist toString(Ljava/lang/StringBuilder;)V
    .locals 0

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-direct {p0}, Landroid/view/textclassifier/TextClassifierEvent;->getParcelToken()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEntityTypes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mEventIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mScores:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mModelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mActionIndices:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierEvent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
