.class public Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
.super Ljava/lang/Object;
.source "OverlayScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedOverlayInfo"
.end annotation


# instance fields
.field public final blacklist isStatic:Z

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist path:Ljava/io/File;

.field public final blacklist preInstalledApexPath:Ljava/io/File;

.field public final blacklist priority:I

.field public final blacklist targetPackageName:Ljava/lang/String;

.field public final blacklist targetSdkVersion:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IZILjava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetSdkVersion:I

    iput-boolean p4, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    iput p5, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->priority:I

    iput-object p6, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    iput-object p7, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->preInstalledApexPath:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public blacklist getOriginalPartitionPath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->preInstalledApexPath:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->preInstalledApexPath:Ljava/io/File;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetSdkVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->priority:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    iget-object v7, p0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->preInstalledApexPath:Ljava/io/File;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "{packageName=%s, targetPackageName=%s, targetSdkVersion=%s, isStatic=%s, priority=%s, path=%s, preInstalledApexPath=%s}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
