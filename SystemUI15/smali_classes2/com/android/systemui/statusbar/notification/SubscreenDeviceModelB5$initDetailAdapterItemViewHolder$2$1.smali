.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $this_apply:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->$this_apply:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mSmartReplyClickedByUser:Z

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1c

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSALoggedIn:Z

    const-string v6, "com.samsung.android.action.INTELLIGENCE_SERVICE_SETTINGS_START_INTENT"

    const-string v7, "S.S.N."

    if-nez v3, :cond_0

    const-string v1, "checkAndExecuteSuggestResponses() : execute sa sign in"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openPhonePopupForIntelligenceSettings(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_0
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isChildAccount:Z

    if-eqz v3, :cond_5

    const-string v3, "checkAndExecuteSuggestResponses() : execute child account announce"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-ne v3, v1, :cond_1

    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    :cond_1
    iput-object v4, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    :cond_2
    iget v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->childGraduateAge:I

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f110020

    invoke-virtual {v3, v6, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    iget-object v5, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v5, :cond_4

    move-object v4, v5

    :cond_4
    invoke-direct {v3, v4, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->show()V

    goto/16 :goto_b

    :cond_5
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isAiInfoConfirmed:Z

    if-nez v3, :cond_6

    const-string v1, "checkAndExecuteSuggestResponses() : execute galaxy ai confirm"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openPhonePopupForIntelligenceSettings(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_6
    sget-boolean v3, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_SMART_REPLY_AI_FOR_CHINA:Z

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPreventOnlineProcessing()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-ne v3, v1, :cond_7

    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    :cond_7
    iput-object v4, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    :cond_8
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f131317

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move-object v3, v4

    :goto_2
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f131315

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$1;

    invoke-direct {v5, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    new-instance v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v7, :cond_b

    move-object v4, v7

    :cond_b
    invoke-direct {v6, v4, v1, v3, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v6, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->show()V

    goto/16 :goto_b

    :cond_c
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSuggestResponsesEnabled:Z

    if-nez v6, :cond_21

    const-string v6, "checkAndExecuteSuggestResponses() : execute suggest replies setting on"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    if-eqz v6, :cond_e

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-ne v6, v1, :cond_d

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    :cond_d
    iput-object v4, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    :cond_e
    if-eqz v3, :cond_19

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v3, :cond_f

    goto :goto_3

    :cond_f
    move-object v3, v4

    :goto_3
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f0d04b1

    invoke-virtual {v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0a0ba6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0ba4

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const v8, 0x7f0a0ba2

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iget-object v9, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mContext:Landroid/content/Context;

    const v10, 0x7f131302

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%1$s"

    invoke-static {v9, v10}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%2$s"

    invoke-static {v10, v11}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "%3$s"

    invoke-static {v9, v11}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "%4$s"

    invoke-static {v11, v12}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$clickableSpanForPrivacyNotice$1;

    invoke-direct {v10, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$clickableSpanForPrivacyNotice$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    new-instance v11, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$clickableSpanForTermsAndConditions$1;

    invoke-direct {v11, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$clickableSpanForTermsAndConditions$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v10, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    const-string v10, ""

    filled-new-array {v10, v10, v10, v10}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x4

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x258

    invoke-static {v4, v10, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Typeface;->getStyle()I

    move-result v10

    new-instance v11, Landroid/text/SpannableString;

    invoke-direct {v11, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v14, v5

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v14, 0x1

    if-ltz v14, :cond_13

    check-cast v15, Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v11, v15, v5, v5, v1}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v1

    if-ltz v1, :cond_11

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v5

    if-gt v15, v5, :cond_11

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/16 v14, 0x21

    invoke-virtual {v11, v5, v1, v15, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v11, v5, v1, v15, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v4, :cond_10

    goto :goto_5

    :cond_10
    const/4 v4, 0x0

    :goto_5
    const v14, 0x7f0609c8

    invoke-virtual {v4, v14}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v11, v5, v1, v15, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :cond_11
    if-nez v6, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    move/from16 v14, v16

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_4

    :cond_13
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v1, 0x0

    throw v1

    :cond_14
    move-object v1, v4

    if-eqz v6, :cond_15

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_15
    if-eqz v7, :cond_16

    new-instance v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$2;

    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    if-eqz v8, :cond_17

    new-instance v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$3;

    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    new-instance v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$showRunnable$1;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$showRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;Landroid/view/View;)V

    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$dismissRunnable$1;

    invoke-direct {v5, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$dismissRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    new-instance v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    iget-object v7, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v7, :cond_18

    move-object v1, v7

    :cond_18
    invoke-direct {v6, v1, v3, v4, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v6, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->show()V

    goto/16 :goto_b

    :cond_19
    move-object v1, v4

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v3, :cond_1a

    goto :goto_7

    :cond_1a
    move-object v3, v1

    :goto_7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f131311

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2;

    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v6, :cond_1b

    move-object v1, v6

    :cond_1b
    invoke-direct {v5, v1, v3, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v5, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->show()V

    goto :goto_b

    :cond_1c
    move v3, v1

    move-object v1, v4

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mDisplayContext:Landroid/content/Context;

    if-eqz v2, :cond_1d

    goto :goto_8

    :cond_1d
    move-object v2, v1

    :goto_8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071594

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->detailButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v2, :cond_1e

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    goto :goto_9

    :cond_1e
    const/4 v2, 0x0

    :goto_9
    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_a

    :cond_1f
    move-object v4, v1

    :goto_a
    if-eqz v4, :cond_21

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-int v1, v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->showAIReply()V

    goto :goto_b

    :cond_20
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-eqz v1, :cond_21

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v1, :cond_21

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    :cond_21
    :goto_b
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$initDetailAdapterItemViewHolder$2$1;->$this_apply:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_22

    const-string v0, "active"

    goto :goto_c

    :cond_22
    const-string v0, "dimmed"

    :goto_c
    const-string/jumbo v1, "type"

    const-string v2, "QPN102"

    const-string v3, "QPNE0217"

    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
