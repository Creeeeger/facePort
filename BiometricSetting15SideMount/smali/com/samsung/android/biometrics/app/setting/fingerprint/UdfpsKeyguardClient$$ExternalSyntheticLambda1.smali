.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->isOnState()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "current_sec_active_themepackage"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 26
    .line 27
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->isKeyguardBouncerShowing()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->mWallpaperFontColor:I

    .line 39
    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string p0, "ic_fingerprint_dark_theme_non_alpha.json"

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string p0, "ic_fingerprint_dark_theme.json"

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const-string p0, "ic_fingerprint_light_theme_non_alpha.json"

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const-string p0, "ic_fingerprint_light_theme.json"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    const-string p0, "ic_fingerprint_aod.json"

    .line 59
    .line 60
    :goto_1
    return-object p0
.end method
