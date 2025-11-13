.class public final Lcom/sec/ims/scab/CABContract$CABBusinessContactPhone;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PREF:Ljava/lang/String; = "preference"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/ims/scab/CABContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactPhone;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildBusinessContactPhonesUri()Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactPhone;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "contact_phones"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildBusinessContactPhonesUriByContact(J)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactPhone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "contact_phones"

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final buildBusinessContactPhonesUriByNotify(J)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/ims/scab/CABContract$CABBusinessContactPhone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "notify_phones"

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
