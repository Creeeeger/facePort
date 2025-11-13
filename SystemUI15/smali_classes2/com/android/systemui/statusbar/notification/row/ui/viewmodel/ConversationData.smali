.class public final Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final avatar:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationAvatar;

.field public final conversationSenderName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationAvatar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;->conversationSenderName:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;->avatar:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationAvatar;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;->conversationSenderName:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;->conversationSenderName:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;->avatar:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationAvatar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;->avatar:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationAvatar;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;->conversationSenderName:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;->avatar:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationAvatar;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;->conversationSenderName:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConversationData(conversationSenderName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", avatar="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationData;->avatar:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/ConversationAvatar;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
