.class public Lcom/kddi/android/CpaManager$Settings;
.super Ljava/lang/Object;
.source "CpaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kddi/android/CpaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public greylist apn:Ljava/lang/String;

.field public greylist authType:I

.field public blacklist dns1:Ljava/lang/String;

.field public blacklist dns2:Ljava/lang/String;

.field public greylist password:Ljava/lang/String;

.field public blacklist proxyHost:Ljava/lang/String;

.field public blacklist proxyPort:Ljava/lang/String;

.field public greylist userId:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
