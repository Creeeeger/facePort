.class public Lcom/android/internal/widget/CompactMessagingLayout;
.super Landroid/widget/FrameLayout;
.source "CompactMessagingLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mConversationFacePileViewStub:Landroid/view/ViewStub;

.field private blacklist mFacePileAvatarSize:I

.field private blacklist mFacePileProtectionWidth:I

.field private blacklist mFacePileSize:I

.field private blacklist mLayoutColor:I

.field private blacklist mNotificationBackgroundColor:I

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;


# direct methods
.method public static synthetic blacklist $r8$lambda$c_PWNd-0DX0Mo4ChxVLIqlcqs0A(Lcom/android/internal/widget/CompactMessagingLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/CompactMessagingLayout;->lambda$setGroupFacePileAsync$0(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    return-void
.end method

.method private static blacklist getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private blacklist getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v1, v0, v0, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;->getPrefix(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v2, v1, v0, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2

    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v2, v0, v0, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist groupMessages(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_6

    if-ge v4, v3, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$MessagingStyle$Message;

    goto :goto_1

    :cond_1
    sub-int v5, v4, v3

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$MessagingStyle$Message;

    :goto_1
    nop

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/widget/CompactMessagingLayout;->getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v0, :cond_4

    if-eq v6, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-eqz v7, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v6

    :cond_5
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method private synthetic blacklist lambda$setGroupFacePileAsync$0(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mConversationFacePileViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x1020290

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x1020291

    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x102028f

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v4, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mNotificationBackgroundColor:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileSize:I

    invoke-static {v0, v4}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    iget v4, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    invoke-static {v3, v4}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    iget v4, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    invoke-static {v2, v4}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    iget v4, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    iget v5, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileProtectionWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    return-void
.end method

.method private static blacklist setSize(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected whitelist onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    const v0, 0x102028e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CompactMessagingLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mConversationFacePileViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileSize:I

    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileProtectionWidth:I

    return-void
.end method

.method public blacklist setGroupFacePile(Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setGroupFacePileAsync"
    .end annotation

    return-void
.end method

.method public blacklist setGroupFacePileAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "android.messages"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    nop

    invoke-static {v2}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v3

    nop

    const-string v4, "android.messages.historic"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    nop

    invoke-static {v4}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v5

    const-string v6, "android.messagingUser"

    const-class v7, Landroid/app/Person;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    invoke-static {v3, v5}, Lcom/android/internal/widget/CompactMessagingLayout;->groupMessages(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v8, v7}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefixWithGroupList(Ljava/util/List;)Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/widget/CompactMessagingLayout;->mLayoutColor:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v6}, Lcom/android/internal/widget/CompactMessagingLayout;->getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    :goto_0
    if-ltz v14, :cond_7

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v15}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual {v15}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v16

    goto :goto_1

    :cond_0
    move-object/from16 v16, v6

    :goto_1
    move-object/from16 v17, v16

    invoke-static/range {v17 .. v17}, Lcom/android/internal/widget/CompactMessagingLayout;->getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eq v1, v13, :cond_1

    const/16 v18, 0x1

    goto :goto_2

    :cond_1
    const/16 v18, 0x0

    :goto_2
    if-eq v1, v12, :cond_2

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    :goto_3
    if-eqz v18, :cond_3

    if-nez v16, :cond_4

    :cond_3
    if-nez v14, :cond_6

    if-nez v12, :cond_6

    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v2, v17

    invoke-direct {v0, v2, v8, v9}, Lcom/android/internal/widget/CompactMessagingLayout;->getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;

    move-result-object v17

    if-nez v11, :cond_5

    move-object/from16 v11, v17

    move-object v12, v1

    goto :goto_4

    :cond_5
    move-object/from16 v10, v17

    goto :goto_5

    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v2, v17

    :goto_4
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    const/4 v15, 0x1

    goto :goto_0

    :cond_7
    move-object/from16 v19, v2

    :goto_5
    const/4 v1, 0x0

    if-nez v11, :cond_8

    invoke-direct {v0, v1, v1, v9}, Lcom/android/internal/widget/CompactMessagingLayout;->getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;

    move-result-object v11

    :cond_8
    if-nez v10, :cond_9

    invoke-direct {v0, v1, v1, v9}, Lcom/android/internal/widget/CompactMessagingLayout;->getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;

    move-result-object v10

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v14, Lcom/android/internal/widget/CompactMessagingLayout$$ExternalSyntheticLambda0;

    invoke-direct {v14, v0, v1, v2}, Lcom/android/internal/widget/CompactMessagingLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CompactMessagingLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v14
.end method

.method public blacklist setLayoutColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutColorAsync"
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mLayoutColor:I

    return-void
.end method

.method public blacklist setLayoutColorAsync(I)Ljava/lang/Runnable;
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mLayoutColor:I

    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mNotificationBackgroundColor:I

    return-void
.end method
