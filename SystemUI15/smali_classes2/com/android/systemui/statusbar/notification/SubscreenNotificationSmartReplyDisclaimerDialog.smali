.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public alertDialog:Landroid/app/AlertDialog;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v4, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d04b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0c77

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f131302

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "%1$s"

    invoke-static {v3, v5}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "%2$s"

    invoke-static {v5, v7}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "%3$s"

    invoke-static {v3, v7}, Lkotlin/text/StringsKt__StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%4$s"

    invoke-static {v7, v8}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$setClickableSpanText$1$clickableSpanForPrivacyNotice$1;

    invoke-direct {v5, v6, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$setClickableSpanText$1$clickableSpanForPrivacyNotice$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;Landroid/content/Context;)V

    new-instance v7, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$setClickableSpanText$1$clickableSpanForTermsAndConditions$1;

    invoke-direct {v7, v6, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$setClickableSpanText$1$clickableSpanForTermsAndConditions$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;Landroid/content/Context;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v5, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    const-string v5, ""

    filled-new-array {v5, v5, v5, v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x4

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x258

    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v11, v7

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-ltz v11, :cond_1

    check-cast v12, Ljava/lang/String;

    const/4 v14, 0x6

    invoke-static {v10, v12, v7, v7, v14}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v14

    if-ltz v14, :cond_0

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v15

    if-gt v12, v15, :cond_0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const/16 v15, 0x21

    invoke-virtual {v10, v11, v14, v12, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v11, Landroid/text/style/StyleSpan;

    invoke-direct {v11, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v10, v11, v14, v12, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    const v7, 0x7f060998

    invoke-virtual {v4, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-direct {v11, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10, v11, v14, v12, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move v11, v13

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v2

    :cond_2
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v1, 0x7f0a0c76

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f131300

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f131301

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v1, 0x7f0a0baa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const v3, 0x7f0a0ba9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->mContext:Landroid/content/Context;

    const v8, 0x7f140604

    invoke-direct {v5, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v7, 0x7f1312f7

    invoke-virtual {v5, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1312f5

    move-object/from16 v7, p3

    invoke-virtual {v5, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, v6, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_4

    new-instance v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;

    move-object v0, v8

    move-object v2, v3

    move-object v3, v7

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog$1$1;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/app/AlertDialog;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_4
    return-void
.end method

.method public static final access$handleTextLinkClick(Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->getIsoCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "&applicationRegion="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "&language="

    invoke-static {v3, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->getIsoCountryCode()Ljava/lang/String;

    move-result-object p0

    const-string v3, "&region="

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "&type="

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "https://policies.account.samsung.com/terms?appKey=j5p7ll8g33"

    invoke-static {v3, v1, v2, p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityNotFoundException : "

    const-string p2, "SubscreenNotificationSmartReplyDisclaimerDialog"

    invoke-static {p1, p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final getIsoCountryCode()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationSmartReplyDisclaimerDialog;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance p0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_2

    return-object p0

    :goto_1
    const-string v0, "getIsoCountryCode: "

    const-string v1, "SubscreenNotificationSmartReplyDisclaimerDialog"

    invoke-static {v0, p0, v1}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
