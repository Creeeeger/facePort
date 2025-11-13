.class public Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;
.super Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mConversationFacePile:Landroid/view/View;

.field public mConversationIconView:Landroid/widget/ImageView;

.field public mConversationSenderName:Landroid/widget/TextView;

.field public mFacePileAvatarSize:I

.field public mFacePileProtectionWidth:I

.field public mFacePileSize:I

.field public mSingleAvatarSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static setSize(Landroid/view/View;I)V
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
.method public final bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/shared/AsyncHybridViewInflation;->assertInLegacyMode()V

    instance-of v0, p3, Lcom/android/internal/widget/ConversationLayout;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void

    :cond_0
    check-cast p3, Lcom/android/internal/widget/ConversationLayout;

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/shared/AsyncHybridViewInflation;->assertInLegacyMode()V

    sget v0, Lcom/android/systemui/statusbar/notification/row/shared/ConversationStyleSetAvatarAsync;->$r8$clinit:I

    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const v3, 0x1020291

    const v4, 0x102028f

    const v5, 0x1020290

    const v6, 0x102028e

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/shared/AsyncHybridViewInflation;->assertInLegacyMode()V

    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->getConversationHeaderData()Lcom/android/internal/widget/ConversationHeaderData;

    move-result-object v0

    const-string v7, "conversationHeaderData should not be null"

    invoke-static {v0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationHeaderData;->getConversationAvatar()Lcom/android/internal/widget/ConversationAvatarData;

    move-result-object v0

    const-string v7, "conversationAvatar should not be null"

    invoke-static {v0, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v7, v0, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;

    if-eqz v7, :cond_1

    check-cast v0, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/android/internal/widget/ConversationAvatarData$OneToOneConversationAvatarData;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mSingleAvatarSize:I

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p3, v5, v4, v3, v0}, Lcom/android/internal/widget/ConversationLayout;->bindFacePileWithDrawable(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/internal/widget/ConversationAvatarData$GroupConversationAvatarData;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileSize:I

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileAvatarSize:I

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileAvatarSize:I

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileAvatarSize:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileProtectionWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    invoke-static {}, Landroid/widget/flags/Flags;->conversationStyleSetAvatarAsync()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/shared/AsyncHybridViewInflation;->assertInLegacyMode()V

    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->getConversationIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mSingleAvatarSize:I

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p3, v0, v4, v3}, Lcom/android/internal/widget/ConversationLayout;->bindFacePile(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileSize:I

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileAvatarSize:I

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileAvatarSize:I

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileAvatarSize:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileProtectionWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->setSize(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addViewTransformingToSimilar(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->getConversationTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object p1, v0

    :goto_1
    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->isOneToOne()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->getConversationSenderName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->getConversationText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p2, v0

    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->bind(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Legacy code path not supported when android.widget.flags.conversation_style_set_avatar_async is enabled."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConversationSenderNameView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->onFinishInflate()V

    const v0, 0x1020293

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationIconView:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/statusbar/notification/row/shared/AsyncHybridViewInflation;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationAsyncHybridViewInflation()V

    const v0, 0x102028e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    const v0, 0x7f0a030a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mSecondaryTextColor:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileSize:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileAvatarSize:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mSingleAvatarSize:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mFacePileProtectionWidth:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$FadeOutAndDownWithTitleTransformation;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView$FadeOutAndDownWithTitleTransformation;-><init>(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationSenderName:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(Landroid/view/View;)V

    return-void
.end method

.method public final setNotificationFaded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;->mConversationFacePile:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    return-void
.end method
