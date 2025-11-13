.class public final Lcom/android/internal/widget/ConversationHeaderData;
.super Ljava/lang/Object;
.source "ConversationHeaderData.java"


# instance fields
.field private final blacklist mConversationAvatarData:Lcom/android/internal/widget/ConversationAvatarData;

.field private final blacklist mConversationText:Ljava/lang/CharSequence;


# direct methods
.method constructor blacklist <init>(Ljava/lang/CharSequence;Lcom/android/internal/widget/ConversationAvatarData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/ConversationHeaderData;->mConversationText:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/widget/ConversationHeaderData;->mConversationAvatarData:Lcom/android/internal/widget/ConversationAvatarData;

    return-void
.end method


# virtual methods
.method public blacklist getConversationAvatar()Lcom/android/internal/widget/ConversationAvatarData;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ConversationHeaderData;->mConversationAvatarData:Lcom/android/internal/widget/ConversationAvatarData;

    return-object v0
.end method

.method blacklist getConversationText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ConversationHeaderData;->mConversationText:Ljava/lang/CharSequence;

    return-object v0
.end method
