.class public final Lcom/sec/ims/settings/ImsSettings$ProfileTable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final IMPI:Ljava/lang/String; = "impi"

.field public static final IMPU:Ljava/lang/String; = "impu"

.field public static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field public static final MDMN_TYPE:Ljava/lang/String; = "mdmn_type"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NETWORK:Ljava/lang/String; = "network"

.field public static final PDN:Ljava/lang/String; = "pdn"

.field public static final SUPPORT_199_PROVISIONAL_RESPONSE:Ljava/lang/String; = "support_199_provisional_response"

.field public static final _ID:Ljava/lang/String; = "id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.ims.settings/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
