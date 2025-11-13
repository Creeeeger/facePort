.class public final Landroid/media/MediaRouter2$ScanRequest$Builder;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2$ScanRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field blacklist mIsScreenOffScan:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/MediaRouter2$ScanRequest;
    .locals 3

    new-instance v0, Landroid/media/MediaRouter2$ScanRequest;

    iget-boolean v1, p0, Landroid/media/MediaRouter2$ScanRequest$Builder;->mIsScreenOffScan:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/MediaRouter2$ScanRequest;-><init>(ZLandroid/media/MediaRouter2$ScanRequest-IA;)V

    return-object v0
.end method

.method public whitelist setScreenOffScan(Z)Landroid/media/MediaRouter2$ScanRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaRouter2$ScanRequest$Builder;->mIsScreenOffScan:Z

    return-object p0
.end method
