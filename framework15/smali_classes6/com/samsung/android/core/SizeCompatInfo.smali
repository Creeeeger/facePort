.class public Lcom/samsung/android/core/SizeCompatInfo;
.super Ljava/lang/Object;
.source "SizeCompatInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/SizeCompatInfo$Key;,
        Lcom/samsung/android/core/SizeCompatInfo$Mode;,
        Lcom/samsung/android/core/SizeCompatInfo$DragMode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/core/SizeCompatInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/core/SizeCompatInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/core/SizeCompatInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/core/SizeCompatInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/core/SizeCompatInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/SizeCompatInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist getDragMode(Lcom/samsung/android/core/SizeCompatInfo;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v2, "DRAG_MODE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist getMode(Lcom/samsung/android/core/SizeCompatInfo;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v2, "MODE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist isDragDexSizeCompat(Lcom/samsung/android/core/SizeCompatInfo;)Z
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/core/SizeCompatInfo;->getDragMode(Lcom/samsung/android/core/SizeCompatInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static blacklist isDragDexSizeCompatRotatable(Lcom/samsung/android/core/SizeCompatInfo;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/core/SizeCompatInfo;->getDragMode(Lcom/samsung/android/core/SizeCompatInfo;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isDragResizable(Lcom/samsung/android/core/SizeCompatInfo;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/core/SizeCompatInfo;->getDragMode(Lcom/samsung/android/core/SizeCompatInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist shouldRemoveCaptionInsets(Lcom/samsung/android/core/SizeCompatInfo;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/core/SizeCompatInfo;->getMode(Lcom/samsung/android/core/SizeCompatInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist sizeCompatModeToString(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDisplayHeight()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "DISPLAY_HEIGHT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getDisplayWidth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "DISPLAY_WIDTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getMaxHeight()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "MAX_HEIGHT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getMaxWidth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "MAX_WIDTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getMinHeight()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "MIN_HEIGHT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getMinWidth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "MIN_WIDTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setDisplaySize(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "DISPLAY_WIDTH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "DISPLAY_HEIGHT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setDragMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "DRAG_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setMaxSize(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "MAX_WIDTH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "MAX_HEIGHT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setMinSize(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "MIN_WIDTH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "MIN_HEIGHT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    const-string v1, "MODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/SizeCompatInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
