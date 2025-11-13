.class public Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;
.super Landroidx/preference/SecPreference;
.source "SecurityDashboardCardsPreference.java"

# interfaces
.implements Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$AdapterCallBack;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;,
        Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mCardDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;",
            "Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCardData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceProtectionThreatCount:I

.field private mDots:[Landroid/widget/ImageView;

.field private mGooglePlayProtectThreatCount:I

.field private final mIsRTL:Z

.field private mKey:Ljava/lang/String;

.field private mOnCardClickCallBack:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;

.field private final mSecurityDashboardCardViewAdapter:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;

.field private mSliderLayout:Landroid/widget/LinearLayout;

.field private mViewPager:Lcom/samsung/android/settings/privacy/SecurityDashboardCardsViewPager;


# direct methods
.method static bridge synthetic -$$Nest$mupdateSelectedPage(Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->updateSelectedPage(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 58
    iput p2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mDeviceProtectionThreatCount:I

    .line 59
    iput p2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mGooglePlayProtectThreatCount:I

    .line 65
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 66
    sget p2, Lcom/android/settings/R$layout;->security_dashboard_cards_container_view:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->createCardDataMap()V

    .line 68
    new-instance p2, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter$AdapterCallBack;)V

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSecurityDashboardCardViewAdapter:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;

    .line 69
    invoke-static {p1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mIsRTL:Z

    return-void
.end method

.method private createCardDataMap()V
    .locals 20

    move-object/from16 v0, p0

    .line 210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    .line 211
    iget-object v1, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->google_play_protect_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    sget-object v2, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v9, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_TURN_ON_GPP:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v10, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v3, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$string;->security_dashboard_card_turn_on_title:I

    const/4 v12, 0x1

    new-array v4, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v4, v13

    invoke-virtual {v3, v11, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v14, Lcom/android/settings/R$string;->security_dashboard_card_turn_on_subtext:I

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v1, v5, v13

    .line 214
    invoke-virtual {v3, v14, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object v1, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->security_dashboard_card_go_to_google_play_protect:I

    .line 215
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v10

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 213
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v8, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_TURN_ON_DP:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v9, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v2, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    new-array v3, v12, [Ljava/lang/Object;

    sget v10, Lcom/android/settings/R$string;->device_protection_title:I

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-virtual {v2, v11, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    new-array v4, v12, [Ljava/lang/Object;

    .line 217
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-virtual {v2, v14, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object v2, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v14, Lcom/android/settings/R$string;->security_dashboard_card_go_to_device_protection:I

    .line 219
    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v9

    move-object v5, v8

    move-object v6, v11

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 216
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_DP_SCAN_YOUR_PHONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_scan_your_phone:I

    new-array v6, v12, [Ljava/lang/Object;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_scan_your_phone_subtext:I

    new-array v6, v12, [Ljava/lang/Object;

    .line 221
    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 220
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SAMSUNG_ACCOUNT_SIGN_IN:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_sign_in_samsung_account_title_jpn:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_sign_in_samsung_account_subtext_jpn:I

    .line 226
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_go_to_google_account:I

    .line 227
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 225
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SAMSUNG_ACCOUNT_CHECK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_check_your_samsung_account_title_jpn:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_check_your_samsung_account_subtext_jpn:I

    .line 229
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_go_to_samsung_account_jpn:I

    .line 230
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 228
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SAMSUNG_ACCOUNT_SIGN_IN:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_sign_in_samsung_account_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_sign_in_samsung_account_subtext:I

    .line 233
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_go_to_google_account:I

    .line 234
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 232
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SAMSUNG_ACCOUNT_CHECK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_check_your_samsung_account_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_check_your_samsung_account_subtext:I

    .line 236
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_go_to_samsung_account:I

    .line 237
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 235
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_GOOGLE_ACCOUNT_SIGN_IN:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_sign_in_google_account_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_sign_in_google_account_subtext:I

    .line 240
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_go_to_google_account:I

    .line 241
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 239
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SET_SCREEN_LOCK_TYPE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_set_screen_lock_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->security_dashboard_card_set_screen_lock_subtext:I

    .line 243
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 244
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 242
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardFeatureCache;->isFMMMetaDataExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_ALLOW_PHONE_TO_BE_FOUND:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_protect_your_phone_if_it_gets_lost_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_allow_this_phone_to_be_found_subtext:I

    .line 247
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_go_to_smart_things_find:I

    .line 248
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 246
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 250
    :cond_1
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_ALLOW_PHONE_TO_BE_FOUND:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_protect_your_phone_if_it_gets_lost_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_turn_on_find_my_mobile_subtext:I

    .line 251
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_go_to_find_my_mobile:I

    .line 252
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 250
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :goto_1
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SECURITY_UPDATE_AVAILABLE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->security_dashboard_card_update_your_phone_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->security_dashboard_card_update_your_phone_subtext:I

    .line 255
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->security_dashboard_card_update:I

    .line 256
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 254
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_GPSU_UPDATE_AVAILABLE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->security_dashboard_card_check_gpsu_title:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->security_dashboard_card_check_gpsu_subtext:I

    .line 258
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 259
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 257
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_SECURITY_UPDATE_DURATION_ELAPSED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v3, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v0, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v3

    move-object/from16 v17, v2

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 260
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createMalwareCardsDataMap()V
    .locals 20

    move-object/from16 v0, p0

    .line 191
    iget-object v1, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getSavedDeviceProtectionThreatCount(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mDeviceProtectionThreatCount:I

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->getGooglePlayProtectThreatCount()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mGooglePlayProtectThreatCount:I

    .line 194
    sget-object v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createMalwareCardsDataMap: DPThreatCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mDeviceProtectionThreatCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " GPPThreatCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mGooglePlayProtectThreatCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget v1, Lcom/android/settings/R$plurals;->security_dashboard_malware_detected_card_subtext:I

    .line 196
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    sget v1, Lcom/android/settings/R$plurals;->security_dashboard_malware_detected_card_subtext_tablet:I

    .line 199
    :cond_0
    sget-object v2, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v9, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_DP_MALWARE_DETECTED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v10, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v3, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$string;->security_dashboard_card_malware_detected_title:I

    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v5, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mDeviceProtectionThreatCount:I

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v6, v13

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v18, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iget-object v3, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->security_dashboard_card_go_to_device_protection:I

    .line 202
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v10

    move-object v6, v9

    move-object/from16 v7, v18

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 199
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v2, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;->CARD_GPP_MALWARE_DETECTED:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    new-instance v4, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v5, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v5, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mGooglePlayProtectThreatCount:I

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    iget-object v0, v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->security_dashboard_card_go_to_google_play_protect:I

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v14, v4

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v19}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Ljava/lang/String;)V

    .line 203
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private openActionActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "FingerprintEntry"

    .line 176
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x800000

    .line 177
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 182
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateIndicators(I)V
    .locals 11

    .line 280
    sget-object v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIndicators: dotsCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSliderLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    const-string p0, "updateIndicators: slider layout null"

    .line 282
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    const/16 v0, 0x8

    .line 286
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mOnCardClickCallBack:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;->refreshCardView(ILjava/lang/String;)V

    return-void

    .line 291
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mIsRTL:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->getBtnAction()Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    invoke-virtual {v4}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->getBtnAction()Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 293
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 295
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSecurityDashboardCardViewAdapter:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->setData(Ljava/util/List;)V

    .line 296
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mViewPager:Lcom/samsung/android/settings/privacy/SecurityDashboardCardsViewPager;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 298
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 301
    new-array v1, p1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mDots:[Landroid/widget/ImageView;

    .line 303
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 305
    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 306
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_security_dashboard_card_indicator_start_end_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 305
    invoke-static {v4, v5}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v4

    float-to-int v4, v4

    .line 307
    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 308
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->sec_security_dashboard_card_indicator_top_bottom_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 307
    invoke-static {v5, v6}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    .line 309
    invoke-virtual {v1, v4, v5, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 310
    iget-object v4, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->sec_security_dashboard_card_indicator_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    .line 310
    invoke-static {v4, v5}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->convertPixelsToDp(FLandroid/content/Context;)F

    move-result v4

    float-to-int v4, v4

    move v5, v3

    :goto_0
    if-ge v5, p1, :cond_4

    .line 314
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 315
    iget-object v7, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/settings/R$drawable;->security_dashboard_card_not_visible_indicator:I

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v7, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->sec_page_description_template:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 319
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 321
    iget-object v7, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$drawable;->security_dashboard_card_transparent_round_button_background:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 322
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 323
    iget-object v7, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mDots:[Landroid/widget/ImageView;

    aput-object v6, v7, v5

    .line 324
    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v5, v9

    goto :goto_0

    .line 327
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mViewPager:Lcom/samsung/android/settings/privacy/SecurityDashboardCardsViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->updateSelectedPage(I)V

    .line 329
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mViewPager:Lcom/samsung/android/settings/privacy/SecurityDashboardCardsViewPager;

    new-instance v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$1;-><init>(Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private updateSelectedPage(I)V
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mDots:[Landroid/widget/ImageView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 416
    sget v4, Lcom/android/settings/R$drawable;->security_dashboard_card_not_visible_indicator:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mIsRTL:Z

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mDots:[Landroid/widget/ImageView;

    array-length v0, v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 423
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mDots:[Landroid/widget/ImageView;

    array-length v0, p0

    if-ge p1, v0, :cond_2

    if-ltz p1, :cond_2

    .line 424
    aget-object p0, p0, p1

    sget p1, Lcom/android/settings/R$drawable;->security_dashboard_card_visible_indicator:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getGooglePlayProtectThreatCount()I
    .locals 3

    .line 393
    sget-object v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGPPThreatCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mGooglePlayProtectThreatCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mGooglePlayProtectThreatCount:I

    return p0
.end method

.method public onActionButtonClick(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)V
    .locals 3

    .line 99
    invoke-static {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->saveActionButtonClickToSALogging(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)V

    .line 100
    sget-object v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$2;->$SwitchMap$com$samsung$android$settings$privacy$SecurityDashboardConstants$StatusCardIdentifier:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 162
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MODULE_UPDATE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 152
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->config_sec_toplevel_google_account_settings_uri:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x190

    const-string v1, "extra.screenId"

    .line 154
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    .line 158
    sget-object p1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google Account Activity Not Found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 146
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.samsungaccount.action.OPEN_SECURITY_AND_PRIVACY"

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.osp.app.signin"

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 140
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->config_sec_toplevel_samsung_account_package:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->config_sec_toplevel_samsung_account_class:I

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 137
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->launchSoftwareUpdateForSecurityUpdateMenu(Landroid/content/Context;)V

    goto :goto_1

    .line 132
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->config_sec_toplevel_google_account_settings_package:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.security.settings.VerifyAppsSettingsActivity"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->openActionActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/samsung/android/settings/privacy/DeviceProtectionUtils;->DEVICE_PROTECTION_DEEPLINK_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 125
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 127
    sget-object p1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device Protection Activity Not Found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_7
    const-string p1, "com.samsung.android.fmm"

    const-string v0, "com.samsung.android.fmm.settings.FmmSettingsActivity"

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->openActionActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :pswitch_8
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 103
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->security_dashboard_retail_mode_toast:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 77
    sget v0, Lcom/android/settings/R$id;->viewPager:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/privacy/SecurityDashboardCardsViewPager;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mViewPager:Lcom/samsung/android/settings/privacy/SecurityDashboardCardsViewPager;

    .line 78
    sget v0, Lcom/android/settings/R$id;->slider_dots:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSliderLayout:Landroid/widget/LinearLayout;

    .line 79
    sget-object p1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder: slider layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mViewPager:Lcom/samsung/android/settings/privacy/SecurityDashboardCardsViewPager;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSecurityDashboardCardViewAdapter:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSecurityDashboardCardViewAdapter:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->getCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->updateIndicators(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 405
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mIsRTL:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mViewPager:Lcom/samsung/android/settings/privacy/SecurityDashboardCardsViewPager;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mDots:[Landroid/widget/ImageView;

    array-length v1, v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mDots:[Landroid/widget/ImageView;

    array-length v0, v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->updateSelectedPage(I)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mViewPager:Lcom/samsung/android/settings/privacy/SecurityDashboardCardsViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 410
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->updateSelectedPage(I)V

    :goto_0
    return-void
.end method

.method public onItemRemoved(I)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 87
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mOnCardClickCallBack:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;->refreshCardView(ILjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mOnCardClickCallBack:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    iget-object v1, v1, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;->btnAction:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;->onNotNowClicked(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSecurityDashboardCardViewAdapter:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->updateIndicators(I)V

    :cond_1
    return-void
.end method

.method public setCardsData(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->createMalwareCardsDataMap()V

    .line 268
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 269
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;

    .line 270
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    sget-object v2, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardDataMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$CardData;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSecurityDashboardCardViewAdapter:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;

    if-eqz p1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mCardData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->setData(Ljava/util/List;)V

    .line 274
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mSecurityDashboardCardViewAdapter:Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardCardViewAdapter;->getCount()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->updateIndicators(I)V

    :cond_1
    return-void
.end method

.method public setGooglePlayProtectThreatCount(I)V
    .locals 3

    .line 398
    sget-object v0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGPPThreatCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mGooglePlayProtectThreatCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iput p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mGooglePlayProtectThreatCount:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setRefreshCardView(Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference;->mOnCardClickCallBack:Lcom/samsung/android/settings/widget/SecurityDashboardCardsPreference$OnCardClickCallBack;

    return-void
.end method
