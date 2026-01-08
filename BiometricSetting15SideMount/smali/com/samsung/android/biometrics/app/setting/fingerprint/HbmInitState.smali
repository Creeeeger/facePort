.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmInitState;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmInitState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmInitState$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/Singleton;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmInitState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmInitState$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "InitState"

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleDisplayStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final turnOffHbm()V
    .locals 0

    .line 1
    return-void
.end method

.method public final turnOnHbm()V
    .locals 0

    .line 1
    return-void
.end method
