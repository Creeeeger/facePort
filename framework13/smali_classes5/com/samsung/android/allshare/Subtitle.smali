.class public abstract Lcom/samsung/android/allshare/Subtitle;
.super Ljava/lang/Object;
.source "Subtitle.java"


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract blacklist getType()Ljava/lang/String;
.end method

.method public abstract blacklist getUri()Landroid/net/Uri;
.end method
