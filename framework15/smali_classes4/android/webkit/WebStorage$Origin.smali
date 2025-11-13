.class public Landroid/webkit/WebStorage$Origin;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Origin"
.end annotation


# instance fields
.field private greylist-max-o mOrigin:Ljava/lang/String;

.field private greylist-max-o mQuota:J

.field private greylist-max-o mUsage:J


# direct methods
.method protected constructor whitelist <init>(Ljava/lang/String;JJ)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    iput-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    iput-wide p4, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    return-void
.end method


# virtual methods
.method public whitelist getOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getQuota()J
    .locals 2

    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    return-wide v0
.end method

.method public whitelist getUsage()J
    .locals 2

    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    return-wide v0
.end method
