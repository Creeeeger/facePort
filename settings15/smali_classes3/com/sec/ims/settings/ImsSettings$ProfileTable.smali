.class public final Lcom/sec/ims/settings/ImsSettings$ProfileTable;
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
    name = "ProfileTable"
.end annotation


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
