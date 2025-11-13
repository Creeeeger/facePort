.class public Landroid/app/Notification$MessagingStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$MessagingStyle$Message;,
        Landroid/app/Notification$MessagingStyle$ConversationType;
    }
.end annotation


# static fields
.field public static final blacklist CONVERSATION_TYPE_IMPORTANT:I = 0x2

.field public static final blacklist CONVERSATION_TYPE_LEGACY:I = 0x0

.field public static final blacklist CONVERSATION_TYPE_NORMAL:I = 0x1

.field public static final whitelist MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field greylist-max-o mConversationTitle:Ljava/lang/CharSequence;

.field blacklist mConversationType:I

.field greylist-max-o mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mIsGroupConversation:Z

.field greylist-max-o mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mShortcutIcon:Landroid/graphics/drawable/Icon;

.field blacklist mUnreadMessageCount:I

.field greylist-max-o mUser:Landroid/app/Person;


# direct methods
.method constructor greylist-max-o <init>()V
    .locals 1

    .line 8074
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 8068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 8069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 8071
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 8075
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Person;)V
    .locals 1
    .param p1, "user"    # Landroid/app/Person;

    .line 8096
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 8068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 8069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 8071
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 8097
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 8098
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "userDisplayName"    # Ljava/lang/CharSequence;

    .line 8086
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    .line 8087
    return-void
.end method

.method private greylist-max-o findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;
    .locals 1

    .line 8514
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)",
            "Landroid/app/Notification$MessagingStyle$Message;"
        }
    .end annotation

    .line 8523
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 8524
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 8526
    .local v1, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8527
    return-object v1

    .line 8523
    .end local v1    # "m":Landroid/app/Notification$MessagingStyle$Message;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8530
    .end local v0    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8532
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$MessagingStyle$Message;

    return-object v0

    .line 8534
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 8394
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    .line 8395
    .local v0, "m":Landroid/app/Notification$MessagingStyle$Message;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmText(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 8396
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    if-nez v0, :cond_1

    goto :goto_3

    .line 8397
    :cond_1
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8398
    :cond_2
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    :goto_2
    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_3
    nop

    .line 8400
    .local v1, "sender":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 8402
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 8403
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    .line 8404
    .local v3, "bidi":Landroid/text/BidiFormatter;
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040881

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 8406
    invoke-virtual {v3, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v3, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    .line 8404
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8407
    .local v3, "title":Ljava/lang/CharSequence;
    goto :goto_4

    .line 8408
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .restart local v3    # "title":Ljava/lang/CharSequence;
    goto :goto_4

    .line 8411
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_5
    move-object v3, v1

    .line 8414
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :goto_4
    if-eqz v3, :cond_6

    .line 8415
    const-string v4, "android.title"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8417
    :cond_6
    if-eqz v2, :cond_7

    .line 8418
    const-string v4, "android.text"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8420
    :cond_7
    return-void
.end method

.method private blacklist getKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "person"    # Landroid/app/Person;

    .line 8651
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 8652
    :cond_0
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 8651
    :goto_0
    return-object v0
.end method

.method private blacklist getOtherPersonName()Ljava/lang/CharSequence;
    .locals 4

    .line 8656
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 8657
    .local v0, "userKey":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 8658
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v2

    .line 8659
    .local v2, "sender":Landroid/app/Person;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Landroid/app/Notification$MessagingStyle;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8660
    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 8657
    .end local v2    # "sender":Landroid/app/Person;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8663
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o hasOnlyWhiteSpaceSenders()Z
    .locals 4

    .line 8667
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8668
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 8669
    .local v1, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v2

    .line 8670
    .local v2, "sender":Landroid/app/Person;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Notification$MessagingStyle;->isWhiteSpace(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8671
    const/4 v3, 0x0

    return v3

    .line 8667
    .end local v1    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v2    # "sender":Landroid/app/Person;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8674
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isWhiteSpace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "sender"    # Ljava/lang/CharSequence;

    .line 8678
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 8679
    return v1

    .line 8681
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "^\\s*$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8682
    return v1

    .line 8686
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 8687
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 8688
    .local v2, "c":C
    const/16 v3, 0x200b

    if-eq v2, v3, :cond_2

    .line 8689
    const/4 v1, 0x0

    return v1

    .line 8686
    .end local v2    # "c":C
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8692
    .end local v0    # "i":I
    :cond_3
    return v1
.end method

.method private blacklist makeMessagingView(I)Landroid/widget/RemoteViews;
    .locals 18
    .param p1, "viewType"    # I

    .line 8554
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8555
    .local v2, "isCollapsed":Z
    :goto_0
    sget v5, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    if-eq v1, v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 8556
    .local v5, "hideRightIcons":Z
    :goto_1
    iget v6, v0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    if-eqz v6, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 8557
    .local v7, "isConversationLayout":Z
    :goto_2
    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 8558
    .local v6, "isImportantConversation":Z
    :goto_3
    if-nez v7, :cond_4

    if-eqz v2, :cond_4

    move v8, v4

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 8560
    .local v8, "isHeaderless":Z
    :goto_4
    if-nez v7, :cond_5

    if-nez v2, :cond_5

    move v9, v4

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    .line 8562
    .local v9, "isBigMessageLayout":Z
    :goto_5
    invoke-static/range {p0 .. p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 8563
    invoke-static/range {p0 .. p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_6

    .line 8564
    :cond_6
    iget-object v10, v0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :goto_6
    nop

    .line 8565
    .local v10, "conversationTitle":Ljava/lang/CharSequence;
    iget-object v11, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v11}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x1c

    if-lt v11, v12, :cond_7

    move v11, v4

    goto :goto_7

    :cond_7
    const/4 v11, 0x0

    .line 8568
    .local v11, "atLeastP":Z
    :goto_7
    const/4 v12, 0x0

    .line 8569
    .local v12, "nameReplacement":Ljava/lang/CharSequence;
    if-nez v11, :cond_8

    .line 8570
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 8571
    .local v13, "isOneToOne":Z
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 8572
    const/4 v13, 0x1

    .line 8573
    move-object v12, v10

    .line 8574
    const/4 v10, 0x0

    goto :goto_8

    .line 8577
    .end local v13    # "isOneToOne":Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$MessagingStyle;->isGroupConversation()Z

    move-result v13

    xor-int/2addr v13, v4

    .line 8579
    .restart local v13    # "isOneToOne":Z
    :cond_9
    :goto_8
    if-eqz v8, :cond_a

    if-eqz v13, :cond_a

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 8580
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$MessagingStyle;->getOtherPersonName()Ljava/lang/CharSequence;

    move-result-object v10

    .line 8583
    :cond_a
    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v14}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v14

    invoke-static {v14}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v14

    .line 8584
    .local v14, "largeIcon":Landroid/graphics/drawable/Icon;
    new-instance v15, Landroid/app/Notification$TemplateBindResult;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    .line 8585
    .local v15, "bindResult":Landroid/app/Notification$TemplateBindResult;
    iget-object v3, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, v3, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v3}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8586
    invoke-virtual {v3, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8587
    invoke-virtual {v3, v7}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8588
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8589
    if-eqz v8, :cond_b

    move-object v4, v10

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8590
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8592
    if-nez v8, :cond_d

    if-nez v9, :cond_c

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    goto :goto_b

    :cond_d
    :goto_a
    const/4 v4, 0x1

    :goto_b
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8593
    invoke-virtual {v3, v13}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    if-nez v5, :cond_f

    if-eqz v13, :cond_e

    goto :goto_c

    :cond_e
    const/4 v4, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v4, 0x1

    .line 8594
    :goto_d
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8595
    if-eqz v8, :cond_10

    const/4 v4, 0x0

    goto :goto_e

    :cond_10
    move-object v4, v10

    :goto_e
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8596
    .local v3, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8597
    if-eqz v7, :cond_11

    .line 8598
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetConversationLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    goto :goto_f

    .line 8599
    :cond_11
    if-eqz v2, :cond_12

    .line 8600
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    goto :goto_f

    .line 8601
    :cond_12
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetBigMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    .line 8596
    :goto_f
    invoke-static {v4, v1, v3, v15}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 8604
    .local v1, "contentView":Landroid/widget/RemoteViews;
    if-eqz v7, :cond_13

    .line 8605
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move/from16 v16, v5

    .end local v5    # "hideRightIcons":Z
    .local v16, "hideRightIcons":Z
    const v5, 0x102028e

    invoke-static {v4, v1, v5, v3}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorPrimary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 8607
    const/16 v4, 0x8

    const v5, 0x10201f8

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 8608
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v1, v5, v3}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_10

    .line 8604
    .end local v16    # "hideRightIcons":Z
    .restart local v5    # "hideRightIcons":Z
    :cond_13
    move/from16 v16, v5

    .line 8611
    .end local v5    # "hideRightIcons":Z
    .restart local v16    # "hideRightIcons":Z
    :goto_10
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/app/Notification$MessagingStyle;->addExtras(Landroid/os/Bundle;)V

    .line 8612
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8613
    invoke-static {v4, v3}, Landroid/app/Notification$Builder;->-$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v4

    .line 8612
    const v5, 0x10205e8

    move/from16 v17, v9

    .end local v9    # "isBigMessageLayout":Z
    .local v17, "isBigMessageLayout":Z
    const-string/jumbo v9, "setLayoutColor"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8614
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8615
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v4

    .line 8614
    const-string/jumbo v9, "setSenderTextColor"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8616
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8617
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v4

    .line 8616
    const-string/jumbo v9, "setMessageTextColor"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8618
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8620
    invoke-static {v4, v3}, Landroid/app/Notification$Builder;->-$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v4

    .line 8618
    const-string/jumbo v9, "setNotificationBackgroundColor"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8621
    const-string/jumbo v4, "setIsCollapsed"

    invoke-virtual {v1, v5, v4, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 8623
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    invoke-static {v4}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const-string/jumbo v9, "setAvatarReplacement"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 8625
    const-string/jumbo v4, "setNameReplacement"

    invoke-virtual {v1, v5, v4, v12}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 8627
    const-string/jumbo v4, "setIsOneToOne"

    invoke-virtual {v1, v5, v4, v13}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 8629
    const-string/jumbo v4, "setConversationTitle"

    invoke-virtual {v1, v5, v4, v10}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 8631
    if-eqz v7, :cond_14

    .line 8632
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    const-string/jumbo v9, "setShortcutIcon"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 8634
    const-string/jumbo v4, "setIsImportantConversation"

    invoke-virtual {v1, v5, v4, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 8638
    :cond_14
    if-nez v8, :cond_15

    if-eqz v2, :cond_16

    .line 8640
    :cond_15
    const v4, 0x102045c

    const/4 v9, 0x4

    const-string/jumbo v5, "setMaxDisplayedLines"

    invoke-virtual {v1, v4, v5, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8643
    :cond_16
    const-string/jumbo v4, "setLargeIcon"

    const v5, 0x10205e8

    invoke-virtual {v1, v5, v4, v14}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 8645
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "setData"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 8647
    return-object v1
.end method

.method private static blacklist reduceMessagesIconSizes(Ljava/util/List;I)V
    .locals 4
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;I)V"
        }
    .end annotation

    .line 8740
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-nez p0, :cond_0

    .line 8741
    return-void

    .line 8744
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 8745
    .local v1, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    .line 8746
    .local v2, "sender":Landroid/app/Person;
    if-eqz v2, :cond_1

    .line 8747
    invoke-virtual {v2}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 8748
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_1

    .line 8749
    invoke-virtual {v3, p1, p1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 8752
    .end local v1    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v2    # "sender":Landroid/app/Person;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_1
    goto :goto_0

    .line 8753
    :cond_2
    return-void
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 8369
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 8370
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v0, :cond_0

    .line 8372
    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.selfDisplayName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8373
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    const-string v1, "android.messagingUser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8375
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 8376
    const-string v1, "android.conversationTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8378
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 8379
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v0

    .line 8378
    const-string v1, "android.messages"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 8381
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 8382
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v0

    .line 8381
    const-string v1, "android.messages.historic"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 8384
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_4

    .line 8385
    const-string v1, "android.conversationIcon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8387
    :cond_4
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    const-string v1, "android.conversationUnreadMessageCount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8389
    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    .line 8390
    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    const-string v1, "android.isGroupConversation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8391
    return-void
.end method

.method public whitelist addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .locals 2
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 8304
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8305
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 8306
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8308
    :cond_0
    return-object p0
.end method

.method public whitelist addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .locals 2
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 8283
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8284
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 8285
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8287
    :cond_0
    return-object p0
.end method

.method public whitelist addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Landroid/app/Person;

    .line 8270
    new-instance v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    invoke-virtual {p0, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    .line 8251
    nop

    .line 8252
    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    .line 8251
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 13
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 8465
    const/4 v0, 0x1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_5

    .line 8468
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$MessagingStyle;

    .line 8469
    .local v1, "newS":Landroid/app/Notification$MessagingStyle;
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v2

    .line 8470
    .local v2, "oldMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v3

    .line 8472
    .local v3, "newMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 8473
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 8476
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 8477
    .local v4, "n":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 8478
    return v0

    .line 8480
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_c

    .line 8481
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 8482
    .local v6, "oldM":Landroid/app/Notification$MessagingStyle$Message;
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$MessagingStyle$Message;

    .line 8483
    .local v7, "newM":Landroid/app/Notification$MessagingStyle$Message;
    nop

    .line 8484
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 8485
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 8483
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 8486
    return v0

    .line 8488
    :cond_4
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 8489
    return v0

    .line 8491
    :cond_5
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    if-nez v8, :cond_6

    .line 8492
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_1

    .line 8493
    :cond_6
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 8491
    :goto_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 8494
    .local v8, "oldSender":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    if-nez v9, :cond_7

    .line 8495
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_2

    .line 8496
    :cond_7
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 8494
    :goto_2
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 8497
    .local v9, "newSender":Ljava/lang/String;
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 8498
    return v0

    .line 8501
    :cond_8
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_9

    .line 8502
    move-object v10, v11

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 8503
    .local v10, "oldKey":Ljava/lang/String;
    :goto_3
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v12

    if-nez v12, :cond_a

    .line 8504
    goto :goto_4

    :cond_a
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 8505
    .local v11, "newKey":Ljava/lang/String;
    :goto_4
    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 8506
    return v0

    .line 8480
    .end local v6    # "oldM":Landroid/app/Notification$MessagingStyle$Message;
    .end local v7    # "newM":Landroid/app/Notification$MessagingStyle$Message;
    .end local v8    # "oldSender":Ljava/lang/String;
    .end local v9    # "newSender":Ljava/lang/String;
    .end local v10    # "oldKey":Ljava/lang/String;
    .end local v11    # "newKey":Ljava/lang/String;
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 8510
    .end local v5    # "i":I
    :cond_c
    const/4 v0, 0x0

    return v0

    .line 8466
    .end local v1    # "newS":Landroid/app/Notification$MessagingStyle;
    .end local v2    # "oldMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    .end local v3    # "newMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    .end local v4    # "n":I
    :cond_d
    :goto_5
    return v0
.end method

.method public whitelist getConversationTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 8177
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getConversationType()I
    .locals 1

    .line 8219
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    return v0
.end method

.method public greylist-max-o getHeadsUpStatusBarText()Ljava/lang/CharSequence;
    .locals 2

    .line 8121
    invoke-static {p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8122
    invoke-static {p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 8123
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :goto_0
    nop

    .line 8124
    .local v0, "conversationTitle":Ljava/lang/CharSequence;
    iget v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    if-nez v1, :cond_1

    .line 8125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8126
    return-object v0

    .line 8128
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getHistoricMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 8322
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 8315
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getShortcutIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 8200
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getUnreadMessageCount()I
    .locals 1

    .line 8224
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    return v0
.end method

.method public whitelist getUser()Landroid/app/Person;
    .locals 1

    .line 8136
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    return-object v0
.end method

.method public whitelist getUserDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .line 8145
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isGroupConversation()Z
    .locals 2

    .line 8355
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    .line 8356
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 8358
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 8361
    :cond_1
    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    return v0
.end method

.method public greylist-max-o makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 8542
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "increasedHeight"    # Z

    .line 8450
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 8452
    .local v0, "originalActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 8453
    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    invoke-direct {p0, v1}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8455
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 8453
    return-object v1

    .line 8455
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 8456
    throw v1
.end method

.method public greylist-max-o makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "increasedHeight"    # Z

    .line 8704
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 8705
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    const v1, 0x102045c

    const-string/jumbo v2, "setMaxDisplayedLines"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8706
    return-object v0
.end method

.method public blacklist reduceImageSizes(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 8715
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 8716
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8717
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 8718
    .local v1, "isLowRam":Z
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_1

    .line 8719
    nop

    .line 8720
    if-eqz v1, :cond_0

    const v2, 0x10502a4

    goto :goto_0

    .line 8721
    :cond_0
    const v2, 0x10502a3

    .line 8719
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 8722
    .local v2, "maxSize":I
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 8725
    .end local v2    # "maxSize":I
    :cond_1
    nop

    .line 8726
    if-eqz v1, :cond_2

    const v2, 0x1050296

    goto :goto_1

    .line 8727
    :cond_2
    const v2, 0x1050297

    .line 8725
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 8728
    .local v2, "maxAvatarSize":I
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 8729
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v3}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 8732
    :cond_3
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/app/Notification$MessagingStyle;->reduceMessagesIconSizes(Ljava/util/List;I)V

    .line 8733
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/app/Notification$MessagingStyle;->reduceMessagesIconSizes(Ljava/util/List;I)V

    .line 8734
    return-void
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 8427
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 8429
    const-class v0, Landroid/app/Person;

    const-string v1, "android.messagingUser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 8430
    if-nez v0, :cond_0

    .line 8431
    const-string v0, "android.selfDisplayName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 8432
    .local v0, "displayName":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Person$Builder;

    invoke-direct {v1}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 8434
    .end local v0    # "displayName":Ljava/lang/CharSequence;
    :cond_0
    const-string v0, "android.conversationTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 8435
    const-string v0, "android.messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 8436
    .local v0, "messages":[Landroid/os/Parcelable;
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 8437
    const-string v1, "android.messages.historic"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 8438
    .local v1, "histMessages":[Landroid/os/Parcelable;
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 8439
    const-string v2, "android.isGroupConversation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    .line 8440
    const-string v2, "android.conversationUnreadMessageCount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    .line 8441
    const-class v2, Landroid/graphics/drawable/Icon;

    const-string v3, "android.conversationIcon"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 8442
    return-void
.end method

.method public whitelist setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 0
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;

    .line 8168
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 8169
    return-object p0
.end method

.method public blacklist setConversationType(I)Landroid/app/Notification$MessagingStyle;
    .locals 0
    .param p1, "conversationType"    # I

    .line 8212
    iput p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 8213
    return-object p0
.end method

.method public whitelist setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;
    .locals 0
    .param p1, "isGroupConversation"    # Z

    .line 8335
    iput-boolean p1, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    .line 8336
    return-object p0
.end method

.method public blacklist setShortcutIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$MessagingStyle;
    .locals 0
    .param p1, "conversationIcon"    # Landroid/graphics/drawable/Icon;

    .line 8188
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 8189
    return-object p0
.end method

.method public blacklist setUnreadMessageCount(I)Landroid/app/Notification$MessagingStyle;
    .locals 0
    .param p1, "unreadMessageCount"    # I

    .line 8229
    iput p1, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    .line 8230
    return-object p0
.end method

.method public greylist-max-o validate(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 8106
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 8107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v0, :cond_0

    .line 8108
    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8109
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "User must be valid and have a name."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8111
    :cond_1
    :goto_0
    return-void
.end method
