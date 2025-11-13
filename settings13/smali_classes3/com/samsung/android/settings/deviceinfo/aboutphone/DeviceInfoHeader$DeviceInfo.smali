.class public Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfoHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfo"
.end annotation


# instance fields
.field mContent:Ljava/lang/String;

.field mIsCopyable:Z

.field mIsEnabled:Z

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsCopyable:Z

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsEnabled:Z

    .line 505
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mTitle:Ljava/lang/String;

    .line 506
    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsEnabled:Z

    .line 510
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mTitle:Ljava/lang/String;

    .line 511
    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mContent:Ljava/lang/String;

    .line 512
    iput-boolean p3, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsCopyable:Z

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isCopyable()Z
    .locals 0

    .line 524
    iget-boolean p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsCopyable:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 532
    iget-boolean p0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsEnabled:Z

    return p0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 528
    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsEnabled:Z

    return-void
.end method
