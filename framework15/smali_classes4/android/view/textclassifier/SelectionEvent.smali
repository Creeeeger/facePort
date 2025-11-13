.class public final Landroid/view/textclassifier/SelectionEvent;
.super Ljava/lang/Object;
.source "SelectionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/SelectionEvent$InvocationMethod;,
        Landroid/view/textclassifier/SelectionEvent$EventType;,
        Landroid/view/textclassifier/SelectionEvent$ActionType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ABANDON:I = 0x6b

.field public static final whitelist ACTION_COPY:I = 0x65

.field public static final whitelist ACTION_CUT:I = 0x67

.field public static final whitelist ACTION_DRAG:I = 0x6a

.field public static final whitelist ACTION_OTHER:I = 0x6c

.field public static final whitelist ACTION_OVERTYPE:I = 0x64

.field public static final whitelist ACTION_PASTE:I = 0x66

.field public static final whitelist ACTION_RESET:I = 0xc9

.field public static final whitelist ACTION_SELECT_ALL:I = 0xc8

.field public static final whitelist ACTION_SHARE:I = 0x68

.field public static final whitelist ACTION_SMART_SHARE:I = 0x69

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/SelectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EVENT_AUTO_SELECTION:I = 0x5

.field public static final whitelist EVENT_SELECTION_MODIFIED:I = 0x2

.field public static final whitelist EVENT_SELECTION_STARTED:I = 0x1

.field public static final whitelist EVENT_SMART_SELECTION_MULTI:I = 0x4

.field public static final whitelist EVENT_SMART_SELECTION_SINGLE:I = 0x3

.field public static final whitelist INVOCATION_LINK:I = 0x2

.field public static final whitelist INVOCATION_MANUAL:I = 0x1

.field public static final whitelist INVOCATION_UNKNOWN:I = 0x0

.field static final greylist-max-o NO_SIGNATURE:Ljava/lang/String; = ""


# instance fields
.field private final greylist-max-o mAbsoluteEnd:I

.field private final greylist-max-o mAbsoluteStart:I

.field private greylist-max-o mDurationSincePreviousEvent:J

.field private greylist-max-o mDurationSinceSessionStart:J

.field private greylist-max-o mEnd:I

.field private greylist-max-o mEntityType:Ljava/lang/String;

.field private greylist-max-o mEventIndex:I

.field private greylist-max-o mEventTime:J

.field private greylist-max-o mEventType:I

.field private greylist-max-o mInvocationMethod:I

.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private greylist-max-o mResultId:Ljava/lang/String;

.field private greylist-max-o mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private greylist-max-o mSmartEnd:I

.field private greylist-max-o mSmartStart:I

.field private greylist-max-o mStart:I

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private greylist-max-o mWidgetType:Ljava/lang/String;

.field private greylist-max-o mWidgetVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/SelectionEvent$1;

    invoke-direct {v0}, Landroid/view/textclassifier/SelectionEvent$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/SelectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(IIILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    iput p2, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    iput p3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    iput-object p6, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    iput p5, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationSessionId;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    const-class v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/SelectionEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/SelectionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o checkActionType(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d is not an eventType"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist createSelectionActionEvent(III)Landroid/view/textclassifier/SelectionEvent;
    .locals 9

    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p2}, Landroid/view/textclassifier/SelectionEvent;->checkActionType(I)V

    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const/4 v7, 0x0

    const-string v8, ""

    const-string v6, ""

    move-object v2, v0

    move v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist createSelectionActionEvent(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;
    .locals 8

    const/4 v0, 0x0

    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "end cannot be less than start"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/view/textclassifier/SelectionEvent;->checkActionType(I)V

    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p3, v0}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    move-object v5, v0

    :goto_1
    nop

    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {p3}, Landroid/view/textclassifier/TextClassification;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist createSelectionModifiedEvent(II)Landroid/view/textclassifier/SelectionEvent;
    .locals 9

    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "end cannot be less than start"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v5, 0x2

    const-string v6, ""

    move-object v2, v0

    move v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist createSelectionModifiedEvent(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;
    .locals 8

    const/4 v0, 0x0

    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "end cannot be less than start"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getEntityCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/textclassifier/TextClassification;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    move-object v5, v0

    :goto_1
    nop

    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist createSelectionModifiedEvent(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/SelectionEvent;
    .locals 8

    const/4 v0, 0x0

    if-lt p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "end cannot be less than start"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getEntityCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/textclassifier/TextSelection;->getEntity(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    move-object v5, v0

    :goto_1
    nop

    new-instance v0, Landroid/view/textclassifier/SelectionEvent;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x5

    const/4 v6, 0x0

    move-object v1, v0

    move v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist createSelectionStartedEvent(II)Landroid/view/textclassifier/SelectionEvent;
    .locals 8

    new-instance v7, Landroid/view/textclassifier/SelectionEvent;

    add-int/lit8 v2, p1, 0x1

    const-string v4, ""

    const-string v6, ""

    const/4 v3, 0x1

    move-object v0, v7

    move v1, p1

    move v5, p0

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/SelectionEvent;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    return-object v7
.end method

.method public static whitelist isTerminal(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/textclassifier/SelectionEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/textclassifier/SelectionEvent;

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    iget-wide v5, v1, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    iget-wide v5, v1, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    iget-wide v5, v1, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    iget v4, v1, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    iget-object v4, v1, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method greylist-max-o getAbsoluteEnd()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    return v0
.end method

.method greylist-max-o getAbsoluteStart()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    return v0
.end method

.method public whitelist getDurationSincePreviousEvent()J
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    return-wide v0
.end method

.method public whitelist getDurationSinceSessionStart()J
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    return-wide v0
.end method

.method public whitelist getEnd()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    return v0
.end method

.method public whitelist getEntityType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEventIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    return v0
.end method

.method public whitelist getEventTime()J
    .locals 2

    iget-wide v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    return-wide v0
.end method

.method public whitelist getEventType()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    return v0
.end method

.method public whitelist getInvocationMethod()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResultId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    return-object v0
.end method

.method public whitelist getSmartEnd()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    return v0
.end method

.method public whitelist getSmartStart()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    return v0
.end method

.method public whitelist getStart()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    return v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getWidgetType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidgetVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    iget-object v6, v0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    iget-object v7, v0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    iget v1, v0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    iget-wide v11, v0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v12, v0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget v1, v0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iget v1, v0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v1, v0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-object v1, v0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-object/from16 v20, v1

    filled-new-array/range {v2 .. v20}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method greylist-max-o isTerminal()Z
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-static {v0}, Landroid/view/textclassifier/SelectionEvent;->isTerminal(I)Z

    move-result v0

    return v0
.end method

.method greylist-max-o setDurationSincePreviousEvent(J)Landroid/view/textclassifier/SelectionEvent;
    .locals 0

    iput-wide p1, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    return-object p0
.end method

.method greylist-max-o setDurationSinceSessionStart(J)Landroid/view/textclassifier/SelectionEvent;
    .locals 0

    iput-wide p1, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    return-object p0
.end method

.method public greylist-max-o setEnd(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    return-object p0
.end method

.method blacklist setEntityType(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setEventIndex(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    return-object p0
.end method

.method greylist-max-o setEventTime(J)Landroid/view/textclassifier/SelectionEvent;
    .locals 0

    iput-wide p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    return-object p0
.end method

.method public greylist-max-o setEventType(I)V
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    return-void
.end method

.method public greylist-max-o setInvocationMethod(I)V
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    return-void
.end method

.method greylist-max-o setResultId(Ljava/lang/String;)Landroid/view/textclassifier/SelectionEvent;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o setSessionId(Landroid/view/textclassifier/TextClassificationSessionId;)Landroid/view/textclassifier/SelectionEvent;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    return-object p0
.end method

.method public greylist-max-o setSmartEnd(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    return-object p0
.end method

.method public greylist-max-o setSmartStart(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    return-object p0
.end method

.method public greylist-max-o setStart(I)Landroid/view/textclassifier/SelectionEvent;
    .locals 0

    iput p1, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    return-object p0
.end method

.method blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-void
.end method

.method public greylist-max-o setTextClassificationSessionContext(Landroid/view/textclassifier/TextClassificationContext;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getWidgetType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getWidgetVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, v0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v2, v0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v2, v0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    iget-object v7, v0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    iget-object v8, v0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    iget v2, v0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    iget-wide v12, v0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v14, v0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget v2, v0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v2, v0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    move-object/from16 v16, v2

    iget v2, v0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v2, v0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v2, v0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v2, v0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v2, v0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-object/from16 v21, v2

    filled-new-array/range {v3 .. v21}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "SelectionEvent {absoluteStart=%d, absoluteEnd=%d, eventType=%d, entityType=%s, widgetVersion=%s, packageName=%s, widgetType=%s, invocationMethod=%s, resultId=%s, eventTime=%d, durationSinceSessionStart=%d, durationSincePreviousEvent=%d, eventIndex=%d,sessionId=%s, start=%d, end=%d, smartStart=%d, smartEnd=%d, systemTcMetadata=%s}"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mAbsoluteEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEntityType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mWidgetType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mInvocationMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mResultId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mEventTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSinceSessionStart:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Landroid/view/textclassifier/SelectionEvent;->mDurationSincePreviousEvent:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEventIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/TextClassificationSessionId;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_3
    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSmartEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/SelectionEvent;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
