.class public final Landroid/view/textclassifier/ConversationAction;
.super Ljava/lang/Object;
.source "ConversationAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/ConversationAction$Builder;,
        Landroid/view/textclassifier/ConversationAction$ActionType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/ConversationAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_ADD_CONTACT:Ljava/lang/String; = "add_contact"

.field public static final whitelist TYPE_CALL_PHONE:Ljava/lang/String; = "call_phone"

.field public static final blacklist TYPE_COPY:Ljava/lang/String; = "copy"

.field public static final whitelist TYPE_CREATE_REMINDER:Ljava/lang/String; = "create_reminder"

.field public static final whitelist TYPE_OPEN_URL:Ljava/lang/String; = "open_url"

.field public static final whitelist TYPE_SEND_EMAIL:Ljava/lang/String; = "send_email"

.field public static final whitelist TYPE_SEND_SMS:Ljava/lang/String; = "send_sms"

.field public static final whitelist TYPE_SHARE_LOCATION:Ljava/lang/String; = "share_location"

.field public static final whitelist TYPE_TEXT_REPLY:Ljava/lang/String; = "text_reply"

.field public static final whitelist TYPE_TRACK_FLIGHT:Ljava/lang/String; = "track_flight"

.field public static final whitelist TYPE_VIEW_CALENDAR:Ljava/lang/String; = "view_calendar"

.field public static final whitelist TYPE_VIEW_MAP:Ljava/lang/String; = "view_map"


# instance fields
.field private final blacklist mAction:Landroid/app/RemoteAction;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mScore:F

.field private final blacklist mTextReply:Ljava/lang/CharSequence;

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/ConversationAction$1;

    invoke-direct {v0}, Landroid/view/textclassifier/ConversationAction$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/ConversationAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mType:Ljava/lang/String;

    const/4 v0, 0x0

    const-class v1, Landroid/app/RemoteAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mAction:Landroid/app/RemoteAction;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mTextReply:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/ConversationAction;->mScore:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/ConversationAction-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/ConversationAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/app/RemoteAction;Ljava/lang/CharSequence;FLandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mType:Ljava/lang/String;

    iput-object p2, p0, Landroid/view/textclassifier/ConversationAction;->mAction:Landroid/app/RemoteAction;

    iput-object p3, p0, Landroid/view/textclassifier/ConversationAction;->mTextReply:Ljava/lang/CharSequence;

    iput p4, p0, Landroid/view/textclassifier/ConversationAction;->mScore:F

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/app/RemoteAction;Ljava/lang/CharSequence;FLandroid/os/Bundle;Landroid/view/textclassifier/ConversationAction-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/textclassifier/ConversationAction;-><init>(Ljava/lang/String;Landroid/app/RemoteAction;Ljava/lang/CharSequence;FLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()Landroid/app/RemoteAction;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mAction:Landroid/app/RemoteAction;

    return-object v0
.end method

.method public whitelist getConfidenceScore()F
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/ConversationAction;->mScore:F

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getTextReply()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mTextReply:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist toBuilder()Landroid/view/textclassifier/ConversationAction$Builder;
    .locals 2

    new-instance v0, Landroid/view/textclassifier/ConversationAction$Builder;

    iget-object v1, p0, Landroid/view/textclassifier/ConversationAction;->mType:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/view/textclassifier/ConversationAction$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/textclassifier/ConversationAction;->mTextReply:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/ConversationAction$Builder;->setTextReply(Ljava/lang/CharSequence;)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/ConversationAction;->mAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/ConversationAction$Builder;->setAction(Landroid/app/RemoteAction;)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v0

    iget v1, p0, Landroid/view/textclassifier/ConversationAction;->mScore:F

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/ConversationAction$Builder;->setConfidenceScore(F)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/ConversationAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/ConversationAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/ConversationAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mAction:Landroid/app/RemoteAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mTextReply:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/view/textclassifier/ConversationAction;->mScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/view/textclassifier/ConversationAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
