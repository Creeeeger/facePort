.class public Lcom/samsung/android/app/SemDualAppManager;
.super Ljava/lang/Object;
.source "SemDualAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemDualAppManager$SepVersionInt;,
        Lcom/samsung/android/app/SemDualAppManager$DualAppVersion;
    }
.end annotation


# static fields
.field private static final blacklist ACTION3_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist ADW_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

.field private static final blacklist BLACKBERRYMESSENGER_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist CHINA_SALES_CODES:[Ljava/lang/String;

.field public static final blacklist DA_PROFILE_ID_PROPERTY_NAME:Ljava/lang/String; = "sys.dualapp.profile_id"

.field private static final blacklist DCM_LIVEUX_PACKAGE_NAME:Ljava/lang/String;

.field static final blacklist DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

.field static final blacklist DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

.field public static final blacklist DUAL_CALLER_PACKAGE_NAME:Ljava/lang/String; = "callerPackage"

.field public static final blacklist DUAL_ORI_SHORTCUT_COMPONENT:Ljava/lang/String; = "dual_shortcut_component"

.field private static final blacklist FACEBOOKMESSENGER_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist FACEBOOK_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist GOOGLE_QUICKSEARCHBOX_PACKGE_NAME:Ljava/lang/String;

.field private static final blacklist HIKE_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist HOLO_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist ICQ_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist KAKAOTALK_SETTINGS_THEME_URI:Ljava/lang/String; = "kakaotalk://settings/theme/"

.field private static final blacklist KIK_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist LINE_PACKAGE_NAME:Ljava/lang/String;

.field public static final blacklist MAX_DUALAPP_ID:I = 0x63

.field private static final blacklist MICROSOFT_PACKAGE_NAME:Ljava/lang/String;

.field public static final blacklist MIN_DUALAPP_ID:I = 0x5f

.field private static final blacklist NOUGAT_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist NOVA_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

.field private static final blacklist SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final blacklist SEC_EASY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final blacklist SEC_EMERGENCY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final blacklist SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final blacklist SEC_PRODUCT_FEATURE_KNOX_SUPPORT_DUAL_APP:Z = true

.field private static final blacklist SKYPE_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist SMART3_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist SNAPCHAT_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "SemDualAppManager"

.field private static final blacklist TELEGRAM_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist VIBER_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist WECHAT_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist WEIBO_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist WHATSAPP_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist YAHOOMESSENGER_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist YANDEX_PACKAGE_NAME:Ljava/lang/String;

.field private static final blacklist ZALO_PACKAGE_NAME:Ljava/lang/String;

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mIsChinaModel:Z

.field private static blacklist mSalesCode:Ljava/lang/String;

.field private static blacklist mService:Lcom/samsung/android/app/ISemDualAppManager;

.field private static blacklist sDAInstance:Lcom/samsung/android/app/SemDualAppManager;


# instance fields
.field private blacklist mDuplicateInitialIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 40

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    .line 65
    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    .line 102
    const-string v0, "Y29tLmZhY2Vib29rLmthdGFuYQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->FACEBOOK_PACKAGE_NAME:Ljava/lang/String;

    .line 104
    const-string v1, "Y29tLndoYXRzYXBw"

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/SemDualAppManager;->WHATSAPP_PACKAGE_NAME:Ljava/lang/String;

    .line 106
    const-string v2, "Y29tLmZhY2Vib29rLm9yY2E="

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/SemDualAppManager;->FACEBOOKMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    .line 108
    const-string v3, "Y29tLnRlbmNlbnQubW9iaWxlcXE="

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

    .line 110
    const-string v4, "Y29tLnRlbmNlbnQubW9iaWxlcXFp"

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

    .line 112
    const-string v5, "Y29tLnRlbmNlbnQubW0="

    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/app/SemDualAppManager;->WECHAT_PACKAGE_NAME:Ljava/lang/String;

    .line 114
    const-string v6, "Y29tLnNreXBlLnJhaWRlcg=="

    invoke-static {v6}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/app/SemDualAppManager;->SKYPE_PACKAGE_NAME:Ljava/lang/String;

    .line 116
    const-string v7, "Y29tLnZpYmVyLnZvaXA="

    invoke-static {v7}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/samsung/android/app/SemDualAppManager;->VIBER_PACKAGE_NAME:Ljava/lang/String;

    .line 118
    const-string v8, "anAubmF2ZXIubGluZS5hbmRyb2lk"

    invoke-static {v8}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/samsung/android/app/SemDualAppManager;->LINE_PACKAGE_NAME:Ljava/lang/String;

    .line 120
    const-string v9, "Y29tLmJibQ=="

    invoke-static {v9}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/app/SemDualAppManager;->BLACKBERRYMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    .line 122
    const-string v10, "b3JnLnRlbGVncmFtLm1lc3Nlbmdlcg=="

    invoke-static {v10}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/app/SemDualAppManager;->TELEGRAM_PACKAGE_NAME:Ljava/lang/String;

    .line 124
    const-string v11, "Y29tLmtha2FvLnRhbGs="

    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/samsung/android/app/SemDualAppManager;->KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

    .line 126
    const-string v12, "Y29tLmJzYi5oaWtl"

    invoke-static {v12}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/samsung/android/app/SemDualAppManager;->HIKE_PACKAGE_NAME:Ljava/lang/String;

    .line 128
    const-string v13, "Y29tLmljcS5tb2JpbGUuY2xpZW50"

    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/app/SemDualAppManager;->ICQ_PACKAGE_NAME:Ljava/lang/String;

    .line 130
    const-string v14, "Y29tLnlhaG9vLm1vYmlsZS5jbGllbnQuYW5kcm9pZC5pbQ=="

    invoke-static {v14}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/samsung/android/app/SemDualAppManager;->YAHOOMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    .line 132
    const-string v15, "Y29tLnppbmcuemFsbw=="

    invoke-static {v15}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/samsung/android/app/SemDualAppManager;->ZALO_PACKAGE_NAME:Ljava/lang/String;

    .line 134
    const-string v16, "Y29tLnNuYXBjaGF0LmFuZHJvaWQ="

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sput-object v16, Lcom/samsung/android/app/SemDualAppManager;->SNAPCHAT_PACKAGE_NAME:Ljava/lang/String;

    .line 136
    const-string v17, "Y29tLnNpbmEud2VpYm8="

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/samsung/android/app/SemDualAppManager;->WEIBO_PACKAGE_NAME:Ljava/lang/String;

    .line 138
    const-string v18, "a2lrLmFuZHJvaWQ="

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/samsung/android/app/SemDualAppManager;->KIK_PACKAGE_NAME:Ljava/lang/String;

    .line 140
    const-string v19, "Y29tLnNlYy5hbmRyb2lkLmFwcC5sYXVuY2hlcg=="

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sput-object v19, Lcom/samsung/android/app/SemDualAppManager;->SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    .line 142
    const-string v20, "Y29tLnNlYy5hbmRyb2lkLmFwcC5lYXN5bGF1bmNoZXI="

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/samsung/android/app/SemDualAppManager;->SEC_EASY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    .line 144
    const-string v21, "Y29tLnNlYy5hbmRyb2lkLmVtZXJnZW5jeWxhdW5jaGVy"

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/app/SemDualAppManager;->SEC_EMERGENCY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    .line 146
    const-string v22, "Y29tLnNlYy5hbmRyb2lkLmFwcC5kZXNrdG9wbGF1bmNoZXI="

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/samsung/android/app/SemDualAppManager;->SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    .line 148
    const-string v23, "Y29tLmdvb2dsZS5hbmRyb2lkLmdvb2dsZXF1aWNrc2VhcmNoYm94"

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sput-object v23, Lcom/samsung/android/app/SemDualAppManager;->GOOGLE_QUICKSEARCHBOX_PACKGE_NAME:Ljava/lang/String;

    .line 150
    const-string v24, "Y29tLnRlc2xhY29pbHN3LmxhdW5jaGVy"

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lcom/samsung/android/app/SemDualAppManager;->NOVA_PACKAGE_NAME:Ljava/lang/String;

    .line 152
    const-string v25, "Y29tLm1pY3Jvc29mdC5sYXVuY2hlcg=="

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/samsung/android/app/SemDualAppManager;->MICROSOFT_PACKAGE_NAME:Ljava/lang/String;

    .line 154
    const-string v26, "b3JnLmFkdy5sYXVuY2hlcg=="

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sput-object v26, Lcom/samsung/android/app/SemDualAppManager;->ADW_PACKAGE_NAME:Ljava/lang/String;

    .line 156
    const-string v27, "Y29tLmFjdGlvbmxhdW5jaGVyLnBsYXlzdG9yZQ=="

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/samsung/android/app/SemDualAppManager;->ACTION3_PACKAGE_NAME:Ljava/lang/String;

    .line 158
    const-string v28, "Y29tLm1vYmludC5ob2xvbGF1bmNoZXI="

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sput-object v28, Lcom/samsung/android/app/SemDualAppManager;->HOLO_PACKAGE_NAME:Ljava/lang/String;

    .line 160
    const-string v29, "Z2lubGVtb24uZmxvd2VyZnJlZQ=="

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/samsung/android/app/SemDualAppManager;->SMART3_PACKAGE_NAME:Ljava/lang/String;

    .line 162
    const-string v30, "Y29tLmNtbmxhdW5jaGVy"

    invoke-static/range {v30 .. v30}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/samsung/android/app/SemDualAppManager;->NOUGAT_PACKAGE_NAME:Ljava/lang/String;

    .line 164
    const-string v31, "Y29tLnlhbmRleC5sYXVuY2hlcg=="

    invoke-static/range {v31 .. v31}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/samsung/android/app/SemDualAppManager;->YANDEX_PACKAGE_NAME:Ljava/lang/String;

    .line 166
    const-string v32, "Y29tLm50dGRvY29tby5hbmRyb2lkLmRob21l"

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/samsung/android/app/SemDualAppManager;->DCM_LIVEUX_PACKAGE_NAME:Ljava/lang/String;

    .line 172
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v33

    sput-object v33, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    .line 174
    const-string v34, "CHN"

    const-string v35, "CHM"

    const-string v36, "CBK"

    const-string v37, "CTC"

    const-string v38, "CHU"

    const-string v39, "CHC"

    filled-new-array/range {v34 .. v39}, [Ljava/lang/String;

    move-result-object v33

    sput-object v33, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    .line 178
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->isChinaModel()Z

    move-result v33

    sput-boolean v33, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    .line 181
    move-object/from16 v33, v15

    const/16 v15, 0x13

    new-array v15, v15, [Ljava/lang/String;

    const/16 v34, 0x0

    aput-object v0, v15, v34

    const/4 v0, 0x1

    aput-object v1, v15, v0

    const/4 v1, 0x2

    aput-object v2, v15, v1

    const/4 v2, 0x3

    aput-object v3, v15, v2

    const/4 v1, 0x4

    aput-object v4, v15, v1

    const/4 v4, 0x5

    aput-object v5, v15, v4

    const/16 v36, 0x6

    aput-object v17, v15, v36

    const/16 v37, 0x7

    aput-object v6, v15, v37

    const/16 v6, 0x8

    aput-object v7, v15, v6

    const/16 v7, 0x9

    aput-object v8, v15, v7

    const/16 v8, 0xa

    aput-object v9, v15, v8

    const/16 v9, 0xb

    aput-object v10, v15, v9

    const/16 v10, 0xc

    aput-object v11, v15, v10

    const/16 v11, 0xd

    aput-object v12, v15, v11

    const/16 v12, 0xe

    aput-object v13, v15, v12

    const/16 v13, 0xf

    aput-object v14, v15, v13

    const/16 v13, 0x10

    aput-object v33, v15, v13

    const/16 v13, 0x11

    aput-object v16, v15, v13

    const/16 v13, 0x12

    aput-object v18, v15, v13

    sput-object v15, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    .line 190
    new-array v13, v2, [Ljava/lang/String;

    aput-object v5, v13, v34

    aput-object v3, v13, v0

    const/4 v3, 0x2

    aput-object v17, v13, v3

    sput-object v13, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    .line 194
    new-array v5, v12, [Ljava/lang/String;

    aput-object v19, v5, v34

    aput-object v20, v5, v0

    aput-object v21, v5, v3

    aput-object v22, v5, v2

    aput-object v23, v5, v1

    aput-object v24, v5, v4

    aput-object v27, v5, v36

    aput-object v28, v5, v37

    aput-object v29, v5, v6

    aput-object v30, v5, v7

    aput-object v31, v5, v8

    aput-object v32, v5, v9

    aput-object v25, v5, v10

    aput-object v26, v5, v11

    sput-object v5, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    .line 199
    new-array v1, v1, [Ljava/lang/String;

    aput-object v19, v1, v34

    aput-object v20, v1, v0

    const/4 v0, 0x2

    aput-object v21, v1, v0

    aput-object v22, v1, v2

    sput-object v1, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    .line 205
    return-void
.end method

.method private blacklist addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .locals 16
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p4, "ii"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 624
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    move-object/from16 v1, p3

    move-object/from16 v8, p4

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v9

    .line 625
    .local v9, "dualAppUserId":I
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 627
    .local v10, "iPackageManager":Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_5

    invoke-static {v9}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v15, p1

    move-object/from16 v2, p2

    goto/16 :goto_5

    .line 631
    :cond_0
    const/4 v0, 0x0

    .line 632
    .local v0, "userId":I
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 633
    move v0, v9

    move v11, v0

    goto :goto_0

    .line 632
    :cond_1
    move v11, v0

    .line 636
    .end local v0    # "userId":I
    .local v11, "userId":I
    :goto_0
    const/4 v2, 0x0

    .line 637
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    .line 640
    .local v12, "cn":Landroid/content/ComponentName;
    if-eqz v12, :cond_2

    .line 641
    const-wide/16 v3, 0x0

    :try_start_0
    invoke-interface {v10, v12, v3, v4, v11}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    .line 642
    .end local p3    # "ai":Landroid/content/pm/ActivityInfo;
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_1
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v2, v0

    .line 643
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 645
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_1
    move-exception v0

    .end local p3    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_1
    move-object v0, v1

    move-object v13, v2

    goto :goto_3

    .line 646
    :cond_2
    :goto_2
    move-object v0, v1

    move-object v13, v2

    .line 648
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    .local v13, "ri":Landroid/content/pm/ResolveInfo;
    :goto_3
    instance-of v1, v8, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_3

    .line 649
    move-object v1, v8

    check-cast v1, Landroid/content/pm/LabeledIntent;

    .line 650
    .local v1, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 651
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v13, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 652
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v13, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 653
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v13, Landroid/content/pm/ResolveInfo;->icon:I

    .line 654
    iget v2, v13, Landroid/content/pm/ResolveInfo;->icon:I

    iput v2, v13, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 656
    .end local v1    # "li":Landroid/content/pm/LabeledIntent;
    :cond_3
    if-eqz v0, :cond_4

    .line 657
    new-instance v14, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 658
    move-object/from16 v15, p1

    invoke-virtual {v13, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v14

    move-object/from16 v2, p4

    move-object v3, v13

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 657
    move-object/from16 v2, p2

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 656
    :cond_4
    move-object/from16 v15, p1

    move-object/from16 v2, p2

    .line 660
    :goto_4
    return-void

    .line 627
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "userId":I
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_5
    move-object/from16 v15, p1

    move-object/from16 v2, p2

    .line 628
    :goto_5
    return-void
.end method

.method private static blacklist decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/lang/String;

    .line 775
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 776
    .local v0, "out":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static blacklist drawDualAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 668
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/SemDualAppManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/SemDualAppManager$1;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 687
    return-void
.end method

.method public static blacklist getAllInstalledWhitelistedPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 371
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    .line 372
    .local v0, "sdam":Lcom/samsung/android/app/ISemDualAppManager;
    const-string v1, "SemDualAppManager"

    if-eqz v0, :cond_0

    .line 374
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/app/ISemDualAppManager;->getAllInstalledWhitelistedPackages()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 375
    :catch_0
    move-exception v2

    .line 376
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "getAllInstalledWhitelistedPackages : RemoteException occured"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "getAllInstalledWhitelistedPackages : Can not connect to DualAppManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist getAllWhitelistedPackages()[Ljava/lang/String;
    .locals 5

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "apps":[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v1

    .line 315
    .local v1, "sdam":Lcom/samsung/android/app/ISemDualAppManager;
    const-string v2, "SemDualAppManager"

    if-eqz v1, :cond_0

    .line 317
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/app/ISemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 320
    goto :goto_0

    .line 318
    :catch_0
    move-exception v3

    .line 319
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "getAllWhitelistedPackages : RemoteException occured"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 324
    const-string v3, "getAllWhitelistedPackages : null returned. Return default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-boolean v2, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    if-eqz v2, :cond_1

    .line 326
    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    return-object v2

    .line 328
    :cond_1
    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    return-object v2

    .line 331
    :cond_2
    return-object v0
.end method

.method public static whitelist getDualAppProfileId()I
    .locals 3

    .line 342
    const/16 v0, -0x2710

    .line 348
    .local v0, "id":I
    const-string/jumbo v1, "sys.dualapp.profile_id"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 356
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 357
    :goto_1
    return v0
.end method

.method private static blacklist getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;
    .locals 1

    .line 211
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    if-nez v0, :cond_0

    .line 212
    nop

    .line 213
    const-string v0, "dual_app"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    .line 216
    :cond_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    return-object v0
.end method

.method public static blacklist getDualAppVersion()I
    .locals 1

    .line 556
    const/16 v0, 0x14a

    return v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 227
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v0, :cond_1

    .line 228
    const-class v0, Lcom/samsung/android/app/SemDualAppManager;

    monitor-enter v0

    .line 229
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v1, :cond_0

    .line 230
    new-instance v1, Lcom/samsung/android/app/SemDualAppManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemDualAppManager;-><init>()V

    sput-object v1, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    .line 231
    sput-object p0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    .line 233
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 236
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    return-object v0
.end method

.method public static blacklist isAfwSupportLauncher(Ljava/lang/String;)Z
    .locals 6
    .param p0, "launcherPkgName"    # Ljava/lang/String;

    .line 695
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 696
    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 697
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 698
    const/4 v0, 0x1

    return v0

    .line 696
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 702
    :cond_1
    return v0
.end method

.method public static blacklist isChinaDualApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 742
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

    .line 743
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->WEIBO_PACKAGE_NAME:Ljava/lang/String;

    .line 744
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->WECHAT_PACKAGE_NAME:Ljava/lang/String;

    .line 745
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 746
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isChinaModel()Z
    .locals 6

    .line 764
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 765
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 766
    .local v4, "code":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 767
    const/4 v0, 0x1

    return v0

    .line 765
    .end local v4    # "code":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 772
    :cond_1
    return v1
.end method

.method public static blacklist isChooserRequired(Ljava/lang/String;)Z
    .locals 1
    .param p0, "clsName"    # Ljava/lang/String;

    .line 727
    const-string v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    const-string v0, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 729
    const-string v0, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 730
    const-string v0, "com.sina.weibo.SSOActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 733
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 731
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isDualAppId(I)Z
    .locals 1
    .param p0, "userId"    # I

    .line 298
    const/16 v0, 0x5f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static blacklist isDualAppIdInternal(I)Z
    .locals 1
    .param p0, "userId"    # I

    .line 443
    const/16 v0, 0x5f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isDualAppVersionSupported(I)Z
    .locals 2
    .param p0, "dualAppVer"    # I

    .line 567
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppVersion()I

    move-result v0

    .line 569
    .local v0, "currentVersion":I
    if-lt v0, p0, :cond_0

    .line 570
    const/4 v1, 0x1

    return v1

    .line 573
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 395
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 397
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    return v1

    .line 401
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v2

    .line 402
    .local v2, "sdam":Lcom/samsung/android/app/ISemDualAppManager;
    const-string v3, "SemDualAppManager"

    if-eqz v2, :cond_1

    .line 404
    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/app/ISemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 405
    :catch_0
    move-exception v4

    .line 406
    .local v4, "re":Landroid/os/RemoteException;
    const-string v5, "isInstalledWhitelistedPackage : RemoteException occured"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_1
    const-string v4, "isInstalledWhitelistedPackage : Can not connect to DualAppManagerService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v1
.end method

.method private static blacklist isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 752
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kakaotalk://settings/theme/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    const/4 v0, 0x1

    return v0

    .line 755
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSamsungLauncher(Ljava/lang/String;)Z
    .locals 6
    .param p0, "launcherPkgName"    # Ljava/lang/String;

    .line 711
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 712
    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 713
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 714
    const/4 v0, 0x1

    return v0

    .line 712
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 718
    :cond_1
    return v0
.end method

.method public static blacklist shouldAddUserId(Landroid/net/Uri;I)Z
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .line 456
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 457
    return v0

    .line 460
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "uriScheme":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "uriAuthority":Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 464
    return v0

    .line 468
    :cond_1
    const-string v3, "com.android.contacts"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 469
    const-string v3, "com.android.calendar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 470
    const-string v3, "com.android.providers.downloads.documents"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 473
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 471
    :cond_3
    :goto_0
    return v0
.end method

.method public static blacklist updateDualAppData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 428
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    .line 429
    .local v0, "sdam":Lcom/samsung/android/app/ISemDualAppManager;
    const-string v1, "SemDualAppManager"

    if-eqz v0, :cond_0

    .line 431
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "pkgName":Ljava/lang/String;
    invoke-interface {v0, v2, p1, p2}, Lcom/samsung/android/app/ISemDualAppManager;->updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 433
    .end local v2    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 434
    .local v2, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "updateDualAppData : RemoteException occured"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v2, "updateDualAppData : Can not connect to DualAppManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist addDualAppAccounts(Landroid/widget/LinearLayout;II)V
    .locals 18
    .param p1, "contents"    # Landroid/widget/LinearLayout;
    .param p2, "resId"    # I
    .param p3, "resHeight"    # I

    .line 483
    move-object/from16 v1, p1

    const-string v2, "SemDualAppManager"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v0

    move v3, v0

    .line 484
    .local v3, "dualAppId":I
    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    return-void

    .line 487
    :cond_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v4, v0

    .line 488
    .local v4, "mgr":Landroid/accounts/AccountManager;
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v0

    .line 489
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v4, v3}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    move-object v6, v0

    .line 490
    .local v6, "dualAppAccounts":[Landroid/accounts/Account;
    array-length v0, v6

    move v7, v0

    .line 491
    .local v7, "N":I
    if-nez v7, :cond_1

    .line 492
    return-void

    .line 494
    :cond_1
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 495
    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    move-object v8, v0

    .line 496
    .local v8, "dualAppDescs":[Landroid/accounts/AuthenticatorDescription;
    array-length v0, v8

    move v9, v0

    .line 498
    .local v9, "M":I
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    move-object v10, v0

    .line 499
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_0
    if-ge v11, v7, :cond_8

    .line 500
    aget-object v0, v6, v11

    move-object v12, v0

    .line 501
    .local v12, "account":Landroid/accounts/Account;
    const/4 v0, 0x0

    .line 502
    .local v0, "desc":Landroid/accounts/AuthenticatorDescription;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v9, :cond_3

    .line 503
    iget-object v14, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    aget-object v15, v8, v13

    iget-object v15, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 504
    aget-object v14, v8, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object v0, v14

    .line 505
    move-object v13, v0

    goto :goto_2

    .line 502
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    move-object v13, v0

    .line 508
    .end local v0    # "desc":Landroid/accounts/AuthenticatorDescription;
    .local v13, "desc":Landroid/accounts/AuthenticatorDescription;
    :goto_2
    if-nez v13, :cond_4

    .line 509
    move/from16 v15, p3

    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_7

    .line 511
    :cond_4
    const/4 v14, 0x0

    .line 513
    .local v14, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_1
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v0, :cond_6

    .line 514
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    iget-object v15, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "dualAppId":I
    .local v16, "dualAppId":I
    :try_start_2
    invoke-virtual {v0, v15, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 517
    .local v0, "authContext":Landroid/content/Context;
    sget-object v3, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 518
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v15, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 519
    iget v15, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    move-object/from16 v17, v4

    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .local v17, "mgr":Landroid/accounts/AccountManager;
    const/4 v4, 0x1

    :try_start_3
    invoke-virtual {v3, v15, v4}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v14, v4

    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 522
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .local v4, "mgr":Landroid/accounts/AccountManager;
    .restart local v14    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v17, v4

    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    iget v4, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-object v14, v4

    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 527
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 525
    :catch_1
    move-exception v0

    goto :goto_5

    .line 527
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .local v4, "mgr":Landroid/accounts/AccountManager;
    :catch_2
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    goto :goto_4

    .line 525
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .restart local v4    # "mgr":Landroid/accounts/AccountManager;
    :catch_3
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    goto :goto_5

    .line 513
    .end local v16    # "dualAppId":I
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .local v3, "dualAppId":I
    .restart local v4    # "mgr":Landroid/accounts/AccountManager;
    :cond_6
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 529
    .end local v3    # "dualAppId":I
    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .restart local v16    # "dualAppId":I
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    :goto_3
    goto :goto_6

    .line 527
    .end local v16    # "dualAppId":I
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .restart local v3    # "dualAppId":I
    .restart local v4    # "mgr":Landroid/accounts/AccountManager;
    :catch_4
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 528
    .end local v3    # "dualAppId":I
    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v16    # "dualAppId":I
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    :goto_4
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid icon id for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 525
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v16    # "dualAppId":I
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .restart local v3    # "dualAppId":I
    .restart local v4    # "mgr":Landroid/accounts/AccountManager;
    :catch_5
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 526
    .end local v3    # "dualAppId":I
    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "dualAppId":I
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package name for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    nop

    .line 530
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_6
    if-nez v14, :cond_7

    .line 531
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v14, v0

    .line 533
    :cond_7
    move/from16 v3, p2

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 534
    .local v0, "child":Landroid/widget/TextView;
    iget-object v4, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    sget-object v4, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    move/from16 v15, p3

    :try_start_5
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 536
    .local v4, "height":I
    const/4 v3, 0x0

    invoke-virtual {v14, v3, v3, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 537
    const/4 v3, 0x0

    invoke-virtual {v0, v14, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 538
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 499
    .end local v0    # "child":Landroid/widget/TextView;
    .end local v4    # "height":I
    .end local v12    # "account":Landroid/accounts/Account;
    .end local v13    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    .line 540
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "dualAppAccounts":[Landroid/accounts/Account;
    .end local v7    # "N":I
    .end local v8    # "dualAppDescs":[Landroid/accounts/AuthenticatorDescription;
    .end local v9    # "M":I
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "i":I
    .end local v16    # "dualAppId":I
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    :catch_6
    move-exception v0

    goto :goto_8

    .line 499
    .restart local v3    # "dualAppId":I
    .local v4, "mgr":Landroid/accounts/AccountManager;
    .restart local v5    # "userHandle":Landroid/os/UserHandle;
    .restart local v6    # "dualAppAccounts":[Landroid/accounts/Account;
    .restart local v7    # "N":I
    .restart local v8    # "dualAppDescs":[Landroid/accounts/AuthenticatorDescription;
    .restart local v9    # "M":I
    .restart local v10    # "inflater":Landroid/view/LayoutInflater;
    .restart local v11    # "i":I
    :cond_8
    move/from16 v15, p3

    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 542
    .end local v3    # "dualAppId":I
    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "dualAppAccounts":[Landroid/accounts/Account;
    .end local v7    # "N":I
    .end local v8    # "dualAppDescs":[Landroid/accounts/AuthenticatorDescription;
    .end local v9    # "M":I
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "i":I
    goto :goto_9

    .line 540
    :catch_7
    move-exception v0

    move/from16 v15, p3

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in addDualAppAccounts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method

.method public blacklist clearDuplicateMaps()V
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 615
    return-void
.end method

.method public blacklist isDuplicateEntry(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p4, "ii"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .line 583
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    .line 584
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 585
    .local v1, "appUserId":I
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 586
    :cond_0
    instance-of v2, p4, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_1

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 587
    return v0

    .line 588
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    const/4 v0, 0x1

    return v0

    .line 590
    :cond_2
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 592
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 593
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 594
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 595
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 596
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 597
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mqqapi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 598
    invoke-static {v2, p4}, Lcom/samsung/android/app/SemDualAppManager;->isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 599
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/SemDualAppManager;->addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    .line 605
    .end local v1    # "appUserId":I
    :cond_6
    return v0
.end method

.method public whitelist isSupported()Z
    .locals 2

    .line 279
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 280
    .local v0, "currentUserId":I
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 284
    .end local v0    # "currentUserId":I
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 281
    .restart local v0    # "currentUserId":I
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist isWhitelistedPackage(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 250
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 252
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    return v1

    .line 256
    :cond_0
    if-eqz p1, :cond_4

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 260
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "apps":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 262
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 263
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    const/4 v1, 0x1

    return v1

    .line 262
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    :cond_3
    return v1

    .line 257
    .end local v2    # "apps":[Ljava/lang/String;
    :cond_4
    :goto_1
    return v1
.end method
