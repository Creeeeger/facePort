.class public Lcom/samsung/android/settings/cube/index/ControlData;
.super Ljava/lang/Object;
.source "ControlData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/cube/index/ControlData$InvalidControlDataException;,
        Lcom/samsung/android/settings/cube/index/ControlData$Builder;
    }
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
.method private constructor <init>(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->-$$Nest$fgetmKey(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mKey:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mTitle:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mSummary:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->-$$Nest$fgetmScreenTitle(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mScreenTitle:Ljava/lang/CharSequence;

    .line 73
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->-$$Nest$fgetmKeywords(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mKeywords:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->-$$Nest$fgetmIconUri(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mIconUri:Landroid/net/Uri;

    .line 75
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->-$$Nest$fgetmFragmentClassName(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mFragmentClassName:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->-$$Nest$fgetmControllerClassName(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mControllerClassName:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->-$$Nest$fgetmControlType(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mControlType:I

    .line 78
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->-$$Nest$fgetmRecoverable(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mRecoverable:Z

    .line 79
    invoke-static {p1}, Lcom/samsung/android/settings/cube/index/ControlData$Builder;->-$$Nest$fgetmRestoreKey(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mRestoreKey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/cube/index/ControlData$Builder;Lcom/samsung/android/settings/cube/index/ControlData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/cube/index/ControlData;-><init>(Lcom/samsung/android/settings/cube/index/ControlData$Builder;)V

    return-void
.end method


# virtual methods
.method public getControlType()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mControlType:I

    return p0
.end method

.method public getControllerClassName()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mControllerClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getFragmentClassName()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mFragmentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mIconUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public getRestoreKey()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mRestoreKey:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mScreenTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isRecoverable()Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lcom/samsung/android/settings/cube/index/ControlData;->mRecoverable:Z

    return p0
.end method
