.class public Lcom/samsung/android/knox/analytics/database/Contract$Events;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/database/Contract$Events$Extra;,
        Lcom/samsung/android/knox/analytics/database/Contract$Events$Projection;,
        Lcom/samsung/android/knox/analytics/database/Contract$Events$Selection;,
        Lcom/samsung/android/knox/analytics/database/Contract$Events$Field;,
        Lcom/samsung/android/knox/analytics/database/Contract$Events$Type;
    }
.end annotation


# static fields
.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist PATH:Ljava/lang/String; = "events"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/analytics/database/Contract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/database/Contract$Events;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
