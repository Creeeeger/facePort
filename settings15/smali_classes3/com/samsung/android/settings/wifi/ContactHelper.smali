.class public abstract Lcom/samsung/android/settings/wifi/ContactHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CONTENT_COUNT_URI:Landroid/net/Uri;

.field public static final projection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://com.android.contacts/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/ContactHelper;->CONTENT_COUNT_URI:Landroid/net/Uri;

    const-string v0, "photo_uri"

    const-string v1, "data1"

    const-string v2, "_id"

    const-string v3, "display_name"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/ContactHelper;->projection:[Ljava/lang/String;

    return-void
.end method
