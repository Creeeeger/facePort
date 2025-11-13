.class public abstract Lcom/samsung/android/settings/network/apn/OmaCpUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CP_URI:Landroid/net/Uri;

.field public static sActivity:Landroidx/fragment/app/FragmentActivity;

.field public static sObserver:Lcom/samsung/android/settings/network/apn/OmaCpUtils$1;

.field public static sOmaCpCounts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.wsomacp.messagelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/network/apn/OmaCpUtils;->CP_URI:Landroid/net/Uri;

    return-void
.end method
