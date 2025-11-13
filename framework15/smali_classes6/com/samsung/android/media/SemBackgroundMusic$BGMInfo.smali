.class public Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;
.super Ljava/lang/Object;
.source "SemBackgroundMusic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemBackgroundMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BGMInfo"
.end annotation


# instance fields
.field blacklist durationMs:I

.field blacklist endTimeMs:I

.field blacklist fd:Ljava/io/FileDescriptor;

.field blacklist length:J

.field blacklist offset:J

.field blacklist startTimeMs:I


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
