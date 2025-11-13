.class public Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSOEmergencyPhoneInfo"
.end annotation


# instance fields
.field public bottomPosition:I

.field public gravity:I

.field public icon:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public showBackground:Z

.field public showDefaultText:Z

.field public text:Ljava/lang/String;

.field public topPosition:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->init()V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->init()V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    iput p4, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    iput-object p3, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->init()V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    const/16 v2, 0x64

    iput v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    const/16 v2, 0x11

    iput v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->gravity:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showBackground:Z

    iput-boolean v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showDefaultText:Z

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    return-void
.end method
