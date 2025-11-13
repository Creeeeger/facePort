.class public final Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContent:Ljava/lang/String;

.field public final mIsCopyable:Z

.field public final mIsSIMSlotCategory:Z

.field public final mSIMIconResId:I

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsSIMSlotCategory:Z

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mContent:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsCopyable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsCopyable:Z

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mTitle:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mContent:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsSIMSlotCategory:Z

    iput p2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mSIMIconResId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsCopyable:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mIsSIMSlotCategory:Z

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/deviceinfo/aboutphone/DeviceInfoHeader$DeviceInfo;->mContent:Ljava/lang/String;

    return-void
.end method
