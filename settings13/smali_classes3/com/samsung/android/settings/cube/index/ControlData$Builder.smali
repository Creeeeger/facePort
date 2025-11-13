.class Lcom/samsung/android/settings/cube/index/ControlData$Builder;
.super Ljava/lang/Object;
.source "ControlData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/cube/index/ControlData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mControlType:I

.field private mControllerClassName:Ljava/lang/String;

.field private mFragmentClassName:Ljava/lang/String;

.field private mIconUri:Landroid/net/Uri;

.field private mKey:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mRecoverable:Z

.field private mRestoreKey:Ljava/lang/String;

.field private mScreenTitle:Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmControlType(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControlType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmControllerClassName(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControllerClassName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragmentClassName(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mFragmentClassName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconUri(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKey(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeywords(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecoverable(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mRecoverable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestoreKey(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mRestoreKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenTitle(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummary(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/settings/cube/index/ControlData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControllerClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/cube/index/ControlData;-><init>(Lcom/samsung/android/settings/cube/index/ControlData$Builder;Lcom/samsung/android/settings/cube/index/ControlData-IA;)V

    return-object v0

    .line 222
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preference Controller cannot be empty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", class name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key cannot be empty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setControlType(I)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    .locals 0

    .line 190
    iput p1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControlType:I

    return-object p0
.end method

.method public setControllerClassName(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mControllerClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setFragmentName(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mFragmentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setIconUri(Landroid/net/Uri;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public setRecoverable(Z)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mRecoverable:Z

    return-object p0
.end method

.method public setRestoreKey(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mRestoreKey:Ljava/lang/String;

    return-object p0
.end method

.method public setScreenTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
