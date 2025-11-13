.class public final Landroid/provider/SemSecurityContract;
.super Ljava/lang/Object;
.source "SemSecurityContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SemSecurityContract$Passwords;,
        Landroid/provider/SemSecurityContract$PasswordColumns;,
        Landroid/provider/SemSecurityContract$DataColumns;
    }
.end annotation


# static fields
.field public static final whitelist AUTHORITY:Ljava/lang/String; = "com.android.security"

.field public static final blacklist AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    const-string v0, "content://com.android.security"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SemSecurityContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
