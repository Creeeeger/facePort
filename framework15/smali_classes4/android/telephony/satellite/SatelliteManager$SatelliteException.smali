.class public Landroid/telephony/satellite/SatelliteManager$SatelliteException;
.super Ljava/lang/Exception;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/SatelliteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SatelliteException"
.end annotation


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SatelliteManager$SatelliteException;->mErrorCode:I

    return v0
.end method
