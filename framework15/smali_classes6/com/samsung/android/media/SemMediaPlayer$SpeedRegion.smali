.class Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpeedRegion"
.end annotation


# instance fields
.field blacklist audioEnd:I

.field blacklist speedRate:I

.field blacklist videoEnd:I

.field blacklist videoStart:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$SpeedRegion;-><init>()V

    return-void
.end method
