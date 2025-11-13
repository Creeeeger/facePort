.class public Lcom/samsung/android/app/SemDualAppManager;
.super Ljava/lang/Object;
.source "SemDualAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemDualAppManager$DualAppVersion;,
        Lcom/samsung/android/app/SemDualAppManager$SepVersionInt;
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
.method static constructor blacklist <clinit>()V
    .locals 20

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    const-string v0, "Y29tLmZhY2Vib29rLmthdGFuYQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->FACEBOOK_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLndoYXRzYXBw"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->WHATSAPP_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmZhY2Vib29rLm9yY2E="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->FACEBOOKMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnRlbmNlbnQubW9iaWxlcXE="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnRlbmNlbnQubW9iaWxlcXFp"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnRlbmNlbnQubW0="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->WECHAT_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNreXBlLnJhaWRlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SKYPE_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnZpYmVyLnZvaXA="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->VIBER_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "anAubmF2ZXIubGluZS5hbmRyb2lk"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->LINE_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmJibQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->BLACKBERRYMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "b3JnLnRlbGVncmFtLm1lc3Nlbmdlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->TELEGRAM_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmtha2FvLnRhbGs="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmJzYi5oaWtl"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->HIKE_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmljcS5tb2JpbGUuY2xpZW50"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->ICQ_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnlhaG9vLm1vYmlsZS5jbGllbnQuYW5kcm9pZC5pbQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->YAHOOMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnppbmcuemFsbw=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->ZALO_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNuYXBjaGF0LmFuZHJvaWQ="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SNAPCHAT_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNpbmEud2VpYm8="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->WEIBO_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "a2lrLmFuZHJvaWQ="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->KIK_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5sYXVuY2hlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5lYXN5bGF1bmNoZXI="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SEC_EASY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmVtZXJnZW5jeWxhdW5jaGVy"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SEC_EMERGENCY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnNlYy5hbmRyb2lkLmFwcC5kZXNrdG9wbGF1bmNoZXI="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmdvb2dsZS5hbmRyb2lkLmdvb2dsZXF1aWNrc2VhcmNoYm94"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->GOOGLE_QUICKSEARCHBOX_PACKGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnRlc2xhY29pbHN3LmxhdW5jaGVy"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->NOVA_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLm1pY3Jvc29mdC5sYXVuY2hlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->MICROSOFT_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "b3JnLmFkdy5sYXVuY2hlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->ADW_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmFjdGlvbmxhdW5jaGVyLnBsYXlzdG9yZQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->ACTION3_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLm1vYmludC5ob2xvbGF1bmNoZXI="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->HOLO_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Z2lubGVtb24uZmxvd2VyZnJlZQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SMART3_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLmNtbmxhdW5jaGVy"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->NOUGAT_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLnlhbmRleC5sYXVuY2hlcg=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->YANDEX_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "Y29tLm50dGRvY29tby5hbmRyb2lkLmRob21l"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->DCM_LIVEUX_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    const-string v5, "CHU"

    const-string v6, "CHC"

    const-string v1, "CHN"

    const-string v2, "CHM"

    const-string v3, "CBK"

    const-string v4, "CTC"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->isChinaModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->FACEBOOK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->WHATSAPP_PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/app/SemDualAppManager;->FACEBOOKMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/app/SemDualAppManager;->WECHAT_PACKAGE_NAME:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/app/SemDualAppManager;->WEIBO_PACKAGE_NAME:Ljava/lang/String;

    sget-object v8, Lcom/samsung/android/app/SemDualAppManager;->SKYPE_PACKAGE_NAME:Ljava/lang/String;

    sget-object v9, Lcom/samsung/android/app/SemDualAppManager;->VIBER_PACKAGE_NAME:Ljava/lang/String;

    sget-object v10, Lcom/samsung/android/app/SemDualAppManager;->LINE_PACKAGE_NAME:Ljava/lang/String;

    sget-object v11, Lcom/samsung/android/app/SemDualAppManager;->BLACKBERRYMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    sget-object v12, Lcom/samsung/android/app/SemDualAppManager;->TELEGRAM_PACKAGE_NAME:Ljava/lang/String;

    sget-object v13, Lcom/samsung/android/app/SemDualAppManager;->KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v14, Lcom/samsung/android/app/SemDualAppManager;->HIKE_PACKAGE_NAME:Ljava/lang/String;

    sget-object v15, Lcom/samsung/android/app/SemDualAppManager;->ICQ_PACKAGE_NAME:Ljava/lang/String;

    sget-object v16, Lcom/samsung/android/app/SemDualAppManager;->YAHOOMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    sget-object v17, Lcom/samsung/android/app/SemDualAppManager;->ZALO_PACKAGE_NAME:Ljava/lang/String;

    sget-object v18, Lcom/samsung/android/app/SemDualAppManager;->SNAPCHAT_PACKAGE_NAME:Ljava/lang/String;

    sget-object v19, Lcom/samsung/android/app/SemDualAppManager;->KIK_PACKAGE_NAME:Ljava/lang/String;

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->WECHAT_PACKAGE_NAME:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->WEIBO_PACKAGE_NAME:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->SEC_EASY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/app/SemDualAppManager;->SEC_EMERGENCY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/app/SemDualAppManager;->SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/app/SemDualAppManager;->GOOGLE_QUICKSEARCHBOX_PACKGE_NAME:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/app/SemDualAppManager;->NOVA_PACKAGE_NAME:Ljava/lang/String;

    sget-object v7, Lcom/samsung/android/app/SemDualAppManager;->ACTION3_PACKAGE_NAME:Ljava/lang/String;

    sget-object v8, Lcom/samsung/android/app/SemDualAppManager;->HOLO_PACKAGE_NAME:Ljava/lang/String;

    sget-object v9, Lcom/samsung/android/app/SemDualAppManager;->SMART3_PACKAGE_NAME:Ljava/lang/String;

    sget-object v10, Lcom/samsung/android/app/SemDualAppManager;->NOUGAT_PACKAGE_NAME:Ljava/lang/String;

    sget-object v11, Lcom/samsung/android/app/SemDualAppManager;->YANDEX_PACKAGE_NAME:Ljava/lang/String;

    sget-object v12, Lcom/samsung/android/app/SemDualAppManager;->DCM_LIVEUX_PACKAGE_NAME:Ljava/lang/String;

    sget-object v13, Lcom/samsung/android/app/SemDualAppManager;->MICROSOFT_PACKAGE_NAME:Ljava/lang/String;

    sget-object v14, Lcom/samsung/android/app/SemDualAppManager;->ADW_PACKAGE_NAME:Ljava/lang/String;

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->SEC_EASY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->SEC_EMERGENCY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/app/SemDualAppManager;->SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    return-void
.end method

.method private blacklist addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .locals 16
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

    move-object/from16 v1, p3

    move-object/from16 v8, p4

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v9

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v10

    if-eqz v1, :cond_5

    invoke-static {v9}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v15, p1

    move-object/from16 v2, p2

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v9

    move v11, v0

    goto :goto_0

    :cond_1
    move v11, v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_2

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-interface {v10, v12, v3, v4, v11}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    :try_start_1
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v2, v0

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object v0, v1

    move-object v13, v2

    goto :goto_3

    :cond_2
    :goto_2
    move-object v0, v1

    move-object v13, v2

    :goto_3
    instance-of v1, v8, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_3

    move-object v1, v8

    check-cast v1, Landroid/content/pm/LabeledIntent;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v13, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v13, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v13, Landroid/content/pm/ResolveInfo;->icon:I

    iget v2, v13, Landroid/content/pm/ResolveInfo;->icon:I

    iput v2, v13, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    :cond_3
    if-eqz v0, :cond_4

    new-instance v14, Lcom/android/internal/app/chooser/DisplayResolveInfo;

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

    move-object/from16 v2, p2

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move-object/from16 v15, p1

    move-object/from16 v2, p2

    :goto_4
    return-void

    :cond_5
    move-object/from16 v15, p1

    move-object/from16 v2, p2

    :goto_5
    return-void
.end method

.method private static blacklist decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static blacklist drawDualAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/SemDualAppManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/SemDualAppManager$1;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    const-string v1, "SemDualAppManager"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/app/ISemDualAppManager;->getAllInstalledWhitelistedPackages()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "getAllInstalledWhitelistedPackages : RemoteException occured"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "getAllInstalledWhitelistedPackages : Can not connect to DualAppManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static whitelist getAllWhitelistedPackages()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v1

    const-string v2, "SemDualAppManager"

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/app/ISemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v4, "getAllWhitelistedPackages : RemoteException occured"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string/jumbo v3, "getAllWhitelistedPackages : null returned. Return default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    return-object v2

    :cond_1
    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    return-object v2

    :cond_2
    return-object v0
.end method

.method public static whitelist getDualAppProfileId()I
    .locals 3

    const/16 v0, -0x2710

    const-string/jumbo v1, "sys.dualapp.profile_id"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return v0
.end method

.method private static blacklist getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    if-nez v0, :cond_0

    nop

    const-string v0, "dual_app"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    return-object v0
.end method

.method public static blacklist getDualAppVersion()I
    .locals 1

    const/16 v0, 0x15e

    return v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/app/SemDualAppManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/SemDualAppManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemDualAppManager;-><init>()V

    sput-object v1, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    return-object v0
.end method

.method public static blacklist isAfwSupportLauncher(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static blacklist isChinaDualApp(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->WEIBO_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->WECHAT_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isChinaModel()Z
    .locals 6

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    sget-object v5, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static blacklist isChooserRequired(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sina.weibo.SSOActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isDualAppId(I)Z
    .locals 1

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

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppVersion()I

    move-result v0

    if-lt v0, p0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v2

    const-string v3, "SemDualAppManager"

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2, p0}, Lcom/samsung/android/app/ISemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v4

    const-string/jumbo v5, "isInstalledWhitelistedPackage : RemoteException occured"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v4, "isInstalledWhitelistedPackage : Can not connect to DualAppManagerService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static blacklist isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "kakaotalk://settings/theme/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isSamsungLauncher(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static blacklist shouldAddUserId(Landroid/net/Uri;I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    const-string v3, "com.android.contacts"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.calendar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.providers.downloads.documents"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public static blacklist shouldRemove(Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist updateDualAppData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    const-string v1, "SemDualAppManager"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Lcom/samsung/android/app/ISemDualAppManager;->updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "updateDualAppData : RemoteException occured"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "updateDualAppData : Can not connect to DualAppManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist addDualAppAccounts(Landroid/content/Context;Landroid/widget/LinearLayout;II)V
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "SemDualAppManager"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v0

    move v4, v0

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v5, v0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v6, v0

    invoke-virtual {v5, v4}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    move-object v7, v0

    array-length v0, v7

    move v8, v0

    if-nez v8, :cond_1

    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    move-object v9, v0

    array-length v0, v9

    move v10, v0

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    move-object v11, v0

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v8, :cond_8

    aget-object v0, v7, v12

    move-object v13, v0

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v10, :cond_3

    iget-object v15, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v0, v9, v14

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, v9, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v14, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    :cond_3
    move-object/from16 v16, v0

    move-object/from16 v14, v16

    :goto_2
    if-nez v14, :cond_4

    move/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v5, p4

    goto/16 :goto_7

    :cond_4
    const/4 v15, 0x0

    move/from16 v16, v4

    const/4 v4, 0x0

    :try_start_1
    iget v0, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v0, :cond_6

    iget-object v0, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v4, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v18, v17

    iget-object v4, v14, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v1, v18

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v18, v5

    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v15, v4

    goto :goto_3

    :cond_5
    move-object/from16 v18, v5

    iget v4, v14, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object v15, v4

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_6
    move-object/from16 v18, v5

    :goto_3
    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v18, v5

    :goto_4
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid icon id for account type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v18, v5

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package name for account type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v14, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_6
    if-nez v15, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v15, v0

    :cond_7
    move/from16 v1, p3

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move/from16 v5, p4

    :try_start_4
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v1, 0x0

    invoke-virtual {v15, v1, v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x0

    invoke-virtual {v0, v15, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move/from16 v4, v16

    move-object/from16 v5, v18

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto :goto_8

    :cond_8
    move/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v5, p4

    goto :goto_9

    :catch_5
    move-exception v0

    move/from16 v5, p4

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in addDualAppAccounts "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void
.end method

.method public blacklist clearDuplicateMaps()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public blacklist isDuplicateEntry(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .locals 5
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

    const/4 v0, 0x0

    if-eqz p3, :cond_6

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    instance-of v2, p4, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_1

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mqqapi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p4}, Lcom/samsung/android/app/SemDualAppManager;->isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/SemDualAppManager;->addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    :cond_6
    return v0
.end method

.method public blacklist isNeedAddResolveInfoForOtherUser(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    instance-of v2, p2, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemDualAppManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mqqapi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/samsung/android/app/SemDualAppManager;->isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_6
    return v0
.end method

.method public whitelist isSupported()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist isWhitelistedPackage(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_4

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method
