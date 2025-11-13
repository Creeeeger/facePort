.class public Lcom/samsung/android/lib/episode/EpisodeConstant;
.super Ljava/lang/Object;
.source "EpisodeConstant.java"


# static fields
.field public static DTD_VERSION:Ljava/lang/String; = null

.field public static EPISODE_VERSION:Ljava/lang/String; = "2.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    invoke-static {}, Lcom/samsung/android/lib/episode/EpisodeUtils;->getDtdVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/episode/EpisodeConstant;->DTD_VERSION:Ljava/lang/String;

    return-void
.end method
