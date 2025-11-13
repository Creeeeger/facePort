.class Lcom/android/internal/app/ChooserActivity$FileInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public final blacklist hasThumbnail:Z

.field public final blacklist name:Ljava/lang/String;

.field public blacklist semExtension:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hasThumbnail"    # Z

    .line 2780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2781
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    .line 2782
    iput-boolean p2, p0, Lcom/android/internal/app/ChooserActivity$FileInfo;->hasThumbnail:Z

    .line 2784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$FileInfo;->semExtension:Ljava/lang/String;

    .line 2786
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hasThumbnail"    # Z
    .param p3, "extension"    # Ljava/lang/String;

    .line 2789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2790
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$FileInfo;->name:Ljava/lang/String;

    .line 2791
    iput-boolean p2, p0, Lcom/android/internal/app/ChooserActivity$FileInfo;->hasThumbnail:Z

    .line 2792
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$FileInfo;->semExtension:Ljava/lang/String;

    .line 2793
    return-void
.end method
