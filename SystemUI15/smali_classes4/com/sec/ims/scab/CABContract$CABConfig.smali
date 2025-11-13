.class public final Lcom/sec/ims/scab/CABContract$CABConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final STATUS:Ljava/lang/String; = "enabled"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/ims/scab/CABContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "config"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/scab/CABContract$CABConfig;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildDisableCabUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/ims/scab/CABContract$CABConfig;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildEnableCabUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/ims/scab/CABContract$CABConfig;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildGetCabStatusUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/ims/scab/CABContract$CABConfig;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
