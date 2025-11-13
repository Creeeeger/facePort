.class interface abstract Landroid/graphics/rendererpolicy/ScpmApiContract;
.super Ljava/lang/Object;
.source "ScpmApiContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/rendererpolicy/ScpmApiContract$Result;,
        Landroid/graphics/rendererpolicy/ScpmApiContract$Method;,
        Landroid/graphics/rendererpolicy/ScpmApiContract$Key;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_CLEAR_DATA:Ljava/lang/String; = "com.samsung.android.scpm.policy.CLEAR_DATA"

.field public static final blacklist ACTION_PREFIX:Ljava/lang/String; = "com.samsung.android.scpm.policy.UPDATE."

.field public static final blacklist AUTHORITY:Ljava/lang/String; = "com.samsung.android.scpm.policy"

.field public static final blacklist URI:Landroid/net/Uri;

.field public static final blacklist URI_STRING:Ljava/lang/String; = "content://com.samsung.android.scpm.policy/"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.scpm.policy/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/graphics/rendererpolicy/ScpmApiContract;->URI:Landroid/net/Uri;

    return-void
.end method
