.class final Lcom/android/internal/widget/MessagingData;
.super Ljava/lang/Object;
.source "MessagingData.java"


# instance fields
.field private blacklist mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

.field private final blacklist mGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mHistoricMessagingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mNewMessagingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mShowSpinner:Z

.field private final blacklist mUnreadCount:I

.field private final blacklist mUser:Landroid/app/Person;


# direct methods
.method constructor blacklist <init>(Landroid/app/Person;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/internal/widget/ConversationHeaderData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Person;",
            "ZI",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;",
            "Lcom/android/internal/widget/ConversationHeaderData;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingData;->mUser:Landroid/app/Person;

    iput-boolean p2, p0, Lcom/android/internal/widget/MessagingData;->mShowSpinner:Z

    iput p3, p0, Lcom/android/internal/widget/MessagingData;->mUnreadCount:I

    iput-object p4, p0, Lcom/android/internal/widget/MessagingData;->mHistoricMessagingMessages:Ljava/util/List;

    iput-object p5, p0, Lcom/android/internal/widget/MessagingData;->mNewMessagingMessages:Ljava/util/List;

    iput-object p6, p0, Lcom/android/internal/widget/MessagingData;->mGroups:Ljava/util/List;

    iput-object p7, p0, Lcom/android/internal/widget/MessagingData;->mSenders:Ljava/util/List;

    iput-object p8, p0, Lcom/android/internal/widget/MessagingData;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/Person;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Person;",
            "Z",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/MessagingData;-><init>(Landroid/app/Person;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/internal/widget/ConversationHeaderData;)V

    return-void
.end method


# virtual methods
.method public blacklist getConversationHeaderData()Lcom/android/internal/widget/ConversationHeaderData;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mConversationHeaderData:Lcom/android/internal/widget/ConversationHeaderData;

    return-object v0
.end method

.method public blacklist getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mGroups:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getHistoricMessagingMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mHistoricMessagingMessages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getNewMessagingMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mNewMessagingMessages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSenders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mSenders:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getShowSpinner()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingData;->mShowSpinner:Z

    return v0
.end method

.method public blacklist getUnreadCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/MessagingData;->mUnreadCount:I

    return v0
.end method

.method public blacklist getUser()Landroid/app/Person;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingData;->mUser:Landroid/app/Person;

    return-object v0
.end method
