.class public final Landroid/view/textclassifier/ConversationActions$Request;
.super Ljava/lang/Object;
.source "ConversationActions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/ConversationActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/ConversationActions$Request$Builder;,
        Landroid/view/textclassifier/ConversationActions$Request$Hint;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/ConversationActions$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HINT_FOR_IN_APP:Ljava/lang/String; = "in_app"

.field public static final whitelist HINT_FOR_NOTIFICATION:Ljava/lang/String; = "notification"


# instance fields
.field private final blacklist mConversation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMaxSuggestions:I

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final blacklist mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/ConversationActions$Request;
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/ConversationActions$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/ConversationActions$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/ConversationActions$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/ConversationActions$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/ConversationActions$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Landroid/view/textclassifier/TextClassifier$EntityConfig;ILjava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;",
            "Landroid/view/textclassifier/TextClassifier$EntityConfig;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mConversation:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    iput p3, p0, Landroid/view/textclassifier/ConversationActions$Request;->mMaxSuggestions:I

    iput-object p4, p0, Landroid/view/textclassifier/ConversationActions$Request;->mHints:Ljava/util/List;

    iput-object p5, p0, Landroid/view/textclassifier/ConversationActions$Request;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/view/textclassifier/TextClassifier$EntityConfig;ILjava/util/List;Landroid/os/Bundle;Landroid/view/textclassifier/ConversationActions$Request-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/textclassifier/ConversationActions$Request;-><init>(Ljava/util/List;Landroid/view/textclassifier/TextClassifier$EntityConfig;ILjava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/ConversationActions$Request;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/view/textclassifier/ConversationActions$Message;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    const-class v1, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    invoke-virtual {p0, v9}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v10

    const-class v1, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    new-instance v12, Landroid/view/textclassifier/ConversationActions$Request;

    move-object v1, v12

    move-object v2, v0

    move-object v3, v7

    move v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Landroid/view/textclassifier/ConversationActions$Request;-><init>(Ljava/util/List;Landroid/view/textclassifier/TextClassifier$EntityConfig;ILjava/util/List;Landroid/os/Bundle;)V

    invoke-virtual {v1, v11}, Landroid/view/textclassifier/ConversationActions$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getConversation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationActions$Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mConversation:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mExtras:Landroid/os/Bundle;

    return-object v0
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

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mHints:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMaxSuggestions()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mMaxSuggestions:I

    return v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getTypeConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object v0
.end method

.method blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/ConversationActions$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mConversation:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mTypeConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mMaxSuggestions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mHints:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
