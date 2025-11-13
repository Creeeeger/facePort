.class public final synthetic Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsOpticalManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->removeMaskClient(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
