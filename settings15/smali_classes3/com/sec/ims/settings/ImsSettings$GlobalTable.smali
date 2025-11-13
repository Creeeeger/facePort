.class public final Lcom/sec/ims/settings/ImsSettings$GlobalTable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DM_APP_ID:Ljava/lang/String; = "dm_app_id"

.field public static final DM_USER_DISP_NAME:Ljava/lang/String; = "dm_user_disp_name"

.field public static final EMERGENCY_DOMAIN_SETTING:Ljava/lang/String; = "emergency_domain_setting"

.field public static final NAME:Ljava/lang/String; = "mnoname"

.field public static final NETWORK:Ljava/lang/String; = "network"

.field public static final SMS_WRITE_UICC:Ljava/lang/String; = "sms_write_uicc"

.field public static final SRVCC_VERSION:Ljava/lang/String; = "srvcc_version"

.field public static final SS_CLIP_CLIR_BY_NETWORK:Ljava/lang/String; = "ss_clip_clir_by_network"

.field public static final SS_DOMAIN_SETTING:Ljava/lang/String; = "ss_domain_setting"

.field public static final USSD_DOMAIN_SETTING:Ljava/lang/String; = "ussd_domain_setting"

.field public static final VOICE_DOMAIN_PREF_EUTRAN:Ljava/lang/String; = "voice_domain_pref_eutran"

.field public static final VOICE_DOMAIN_PREF_UTRAN:Ljava/lang/String; = "voice_domain_pref_utran"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.ims.settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
