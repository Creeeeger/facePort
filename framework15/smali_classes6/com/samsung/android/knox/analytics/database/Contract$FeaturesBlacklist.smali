.class public Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeaturesBlacklist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist$Constant;,
        Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist$Field;
    }
.end annotation


# static fields
.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist LEGACY_PATH:Ljava/lang/String; = "features_blacklist"

.field public static final blacklist PATH:Ljava/lang/String; = "feature_blocklist"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "feature_blocklist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
