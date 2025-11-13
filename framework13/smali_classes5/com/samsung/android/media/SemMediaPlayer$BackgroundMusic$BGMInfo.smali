.class public Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BGMInfo"
.end annotation


# instance fields
.field blacklist durationMs:I

.field blacklist endTimeMs:I

.field blacklist fd:Ljava/io/FileDescriptor;

.field blacklist length:J

.field blacklist offset:J

.field blacklist startTimeMs:I

.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;


# direct methods
.method protected constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;

    .line 3661
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->this$0:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
