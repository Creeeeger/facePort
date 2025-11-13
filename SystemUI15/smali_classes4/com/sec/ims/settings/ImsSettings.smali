.class public Lcom/sec/ims/settings/ImsSettings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.ims.settings"

.field public static final DEFAULT_MCC_MNC:Ljava/lang/String; = "45001"

.field public static final GLOBAL_CONTENT_URI:Landroid/net/Uri;

.field public static final TYPE_INT:Ljava/lang/String; = "INT"

.field public static final TYPE_TEXT:Ljava/lang/String; = "TEXT"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.ims.settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsSettings;->GLOBAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
